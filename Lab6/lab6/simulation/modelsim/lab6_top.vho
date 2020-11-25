-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "10/21/2018 19:29:51"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab6_top IS
    PORT (
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END lab6_top;

-- Design Ports Information
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab6_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \IN|LEDR[0]~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \IN|LEDR[1]~1_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \IN|LEDR[2]~2_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \IN|REG|Q[11]~feeder_combout\ : std_logic;
SIGNAL \IN|LEDR[3]~3_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \IN|LEDR[4]~4_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \IN|REG|Q[5]~feeder_combout\ : std_logic;
SIGNAL \IN|LEDR[5]~5_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \IN|LEDR[6]~6_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \IN|LEDR[7]~7_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \U|instruct|out[11]~feeder_combout\ : std_logic;
SIGNAL \U|statemachine|always0~0_combout\ : std_logic;
SIGNAL \U|statemachine|WideOr7~0_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \U|statemachine|always0~1_combout\ : std_logic;
SIGNAL \U|statemachine|WideOr7~combout\ : std_logic;
SIGNAL \U|statemachine|WideNor5~0_combout\ : std_logic;
SIGNAL \U|statemachine|WideNor6~0_combout\ : std_logic;
SIGNAL \U|statemachine|next_st~0_combout\ : std_logic;
SIGNAL \U|statemachine|WideOr5~combout\ : std_logic;
SIGNAL \U|statemachine|always0~3_combout\ : std_logic;
SIGNAL \U|statemachine|WideOr3~0_combout\ : std_logic;
SIGNAL \U|statemachine|always0~2_combout\ : std_logic;
SIGNAL \U|statemachine|WideNor7~combout\ : std_logic;
SIGNAL \U|statemachine|WideOr3~combout\ : std_logic;
SIGNAL \U|statemachine|w~0_combout\ : std_logic;
SIGNAL \U|statemachine|w~q\ : std_logic;
SIGNAL \U|statemachine|WideOr15~0_combout\ : std_logic;
SIGNAL \U|statemachine|always0~5_combout\ : std_logic;
SIGNAL \U|statemachine|WideOr13~combout\ : std_logic;
SIGNAL \U|statemachine|WideOr11~0_combout\ : std_logic;
SIGNAL \U|statemachine|always0~4_combout\ : std_logic;
SIGNAL \U|statemachine|nsel~0_combout\ : std_logic;
SIGNAL \U|statemachine|nsel~1_combout\ : std_logic;
SIGNAL \U|dec_i|locsel|Mux1~0_combout\ : std_logic;
SIGNAL \U|dec_i|locsel|Mux2~0_combout\ : std_logic;
SIGNAL \U|dec_i|locsel|Mux0~0_combout\ : std_logic;
SIGNAL \rtl~30_combout\ : std_logic;
SIGNAL \rtl~31_combout\ : std_logic;
SIGNAL \U|statemachine|loada~q\ : std_logic;
SIGNAL \rtl~66_combout\ : std_logic;
SIGNAL \rtl~65_combout\ : std_logic;
SIGNAL \rtl~64_combout\ : std_logic;
SIGNAL \U|DP|A|out[11]~DUPLICATE_q\ : std_logic;
SIGNAL \rtl~63_combout\ : std_logic;
SIGNAL \U|statemachine|loadb~q\ : std_logic;
SIGNAL \rtl~62_combout\ : std_logic;
SIGNAL \rtl~61_combout\ : std_logic;
SIGNAL \rtl~60_combout\ : std_logic;
SIGNAL \rtl~69_combout\ : std_logic;
SIGNAL \rtl~68_combout\ : std_logic;
SIGNAL \rtl~57_combout\ : std_logic;
SIGNAL \rtl~56_combout\ : std_logic;
SIGNAL \U|DP|B|out[2]~DUPLICATE_q\ : std_logic;
SIGNAL \rtl~55_combout\ : std_logic;
SIGNAL \U|DP|B|out[1]~DUPLICATE_q\ : std_logic;
SIGNAL \rtl~54_combout\ : std_logic;
SIGNAL \U|DP|U0|Mux15~0_combout\ : std_logic;
SIGNAL \U|statemachine|write~0_combout\ : std_logic;
SIGNAL \U|statemachine|write~q\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[0]~5_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rfour|out[0]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[0]~3_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|bot|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[0]~4_combout\ : std_logic;
SIGNAL \rtl~67_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \U|DP|U2|Add0~66_cout\ : std_logic;
SIGNAL \U|DP|U2|Add0~2\ : std_logic;
SIGNAL \U|DP|U2|Add0~6\ : std_logic;
SIGNAL \U|DP|U2|Add0~10\ : std_logic;
SIGNAL \U|DP|U2|Add0~14\ : std_logic;
SIGNAL \U|DP|U2|Add0~18\ : std_logic;
SIGNAL \U|DP|U2|Add0~22\ : std_logic;
SIGNAL \U|DP|U2|Add0~26\ : std_logic;
SIGNAL \U|DP|U2|Add0~30\ : std_logic;
SIGNAL \U|DP|U2|Add0~34\ : std_logic;
SIGNAL \U|DP|U2|Add0~38\ : std_logic;
SIGNAL \U|DP|U2|Add0~42\ : std_logic;
SIGNAL \U|DP|U2|Add0~46\ : std_logic;
SIGNAL \U|DP|U2|Add0~50\ : std_logic;
SIGNAL \U|DP|U2|Add0~54\ : std_logic;
SIGNAL \U|DP|U2|Add0~58\ : std_logic;
SIGNAL \U|DP|U2|Add0~61_sumout\ : std_logic;
SIGNAL \U|DP|C|out[15]~feeder_combout\ : std_logic;
SIGNAL \U|DP|U2|Mux0~0_combout\ : std_logic;
SIGNAL \U|statemachine|loadc~q\ : std_logic;
SIGNAL \rtl~78_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rseven|out[15]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[15]~47_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rfour|out[15]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[15]~45_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rsix|out[15]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[15]~46_combout\ : std_logic;
SIGNAL \U|DP|U2|Add0~57_sumout\ : std_logic;
SIGNAL \U|DP|C|out[14]~feeder_combout\ : std_logic;
SIGNAL \U|DP|U2|Mux1~0_combout\ : std_logic;
SIGNAL \rtl~77_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rthree|out[14]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rone|out[14]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[14]~42_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rseven|out[14]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[14]~44_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rsix|out[14]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[14]~43_combout\ : std_logic;
SIGNAL \U|DP|U2|Add0~53_sumout\ : std_logic;
SIGNAL \U|DP|C|out[13]~feeder_combout\ : std_logic;
SIGNAL \U|DP|U2|Mux2~0_combout\ : std_logic;
SIGNAL \rtl~76_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rthree|out[13]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[13]~41_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rfour|out[13]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[13]~39_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[13]~40_combout\ : std_logic;
SIGNAL \U|DP|U2|Add0~49_sumout\ : std_logic;
SIGNAL \U|DP|C|out[12]~feeder_combout\ : std_logic;
SIGNAL \U|DP|U2|Mux3~0_combout\ : std_logic;
SIGNAL \rtl~75_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[12]~38_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rthree|out[12]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rsix|out[12]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[12]~37_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rfour|out[12]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rone|out[12]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[12]~36_combout\ : std_logic;
SIGNAL \U|DP|U2|Add0~45_sumout\ : std_logic;
SIGNAL \U|DP|C|out[11]~feeder_combout\ : std_logic;
SIGNAL \U|DP|U2|Mux4~0_combout\ : std_logic;
SIGNAL \rtl~74_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[11]~34_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rfour|out[11]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rone|out[11]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[11]~33_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rseven|out[11]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[11]~35_combout\ : std_logic;
SIGNAL \U|DP|U2|Add0~41_sumout\ : std_logic;
SIGNAL \U|DP|C|out[10]~feeder_combout\ : std_logic;
SIGNAL \U|DP|U2|Mux5~0_combout\ : std_logic;
SIGNAL \rtl~73_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rseven|out[10]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[10]~32_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rfour|out[10]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rone|out[10]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[10]~30_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[10]~31_combout\ : std_logic;
SIGNAL \U|DP|U2|Add0~37_sumout\ : std_logic;
SIGNAL \U|DP|C|out[9]~feeder_combout\ : std_logic;
SIGNAL \U|DP|A|out[9]~DUPLICATE_q\ : std_logic;
SIGNAL \U|DP|U2|Mux6~0_combout\ : std_logic;
SIGNAL \rtl~72_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rfour|out[9]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[9]~27_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[9]~29_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[9]~28_combout\ : std_logic;
SIGNAL \U|DP|B|out[9]~DUPLICATE_q\ : std_logic;
SIGNAL \U|DP|U2|Add0~33_sumout\ : std_logic;
SIGNAL \U|DP|C|out[8]~feeder_combout\ : std_logic;
SIGNAL \U|DP|U2|Mux7~0_combout\ : std_logic;
SIGNAL \rtl~71_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rseven|out[8]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[8]~26_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[8]~25_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[8]~24_combout\ : std_logic;
SIGNAL \U|DP|U2|Add0~29_sumout\ : std_logic;
SIGNAL \U|DP|C|out[7]~feeder_combout\ : std_logic;
SIGNAL \rtl~59_combout\ : std_logic;
SIGNAL \U|DP|U2|Mux8~0_combout\ : std_logic;
SIGNAL \rtl~70_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[7]~22_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[7]~23_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rthree|out[7]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[7]~21_combout\ : std_logic;
SIGNAL \U|DP|U2|Add0~25_sumout\ : std_logic;
SIGNAL \U|DP|C|out[6]~feeder_combout\ : std_logic;
SIGNAL \rtl~58_combout\ : std_logic;
SIGNAL \U|DP|U2|Mux9~0_combout\ : std_logic;
SIGNAL \U|DP|U0|Mux9~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[6]~19_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[6]~20_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rone|out[6]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rfour|out[6]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[6]~18_combout\ : std_logic;
SIGNAL \U|DP|U2|Add0~21_sumout\ : std_logic;
SIGNAL \U|DP|C|out[5]~feeder_combout\ : std_logic;
SIGNAL \U|DP|U2|Mux10~0_combout\ : std_logic;
SIGNAL \U|DP|U0|Mux10~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[5]~17_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[5]~15_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[5]~16_combout\ : std_logic;
SIGNAL \U|DP|U2|Add0~17_sumout\ : std_logic;
SIGNAL \U|DP|C|out[4]~feeder_combout\ : std_logic;
SIGNAL \U|DP|U2|Mux11~0_combout\ : std_logic;
SIGNAL \U|DP|U0|Mux11~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rseven|out[4]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[4]~14_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[4]~13_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rone|out[4]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[4]~12_combout\ : std_logic;
SIGNAL \U|DP|U2|Add0~13_sumout\ : std_logic;
SIGNAL \U|DP|C|out[3]~feeder_combout\ : std_logic;
SIGNAL \U|DP|U2|Mux12~0_combout\ : std_logic;
SIGNAL \U|DP|U0|Mux12~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rthree|out[3]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[3]~11_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[3]~9_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[3]~10_combout\ : std_logic;
SIGNAL \U|DP|U2|Add0~9_sumout\ : std_logic;
SIGNAL \U|DP|C|out[2]~feeder_combout\ : std_logic;
SIGNAL \U|DP|A|out[2]~DUPLICATE_q\ : std_logic;
SIGNAL \U|DP|U2|Mux13~0_combout\ : std_logic;
SIGNAL \U|DP|U0|Mux13~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rthree|out[2]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[2]~8_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[2]~7_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[2]~6_combout\ : std_logic;
SIGNAL \U|DP|U2|Add0~5_sumout\ : std_logic;
SIGNAL \U|DP|C|out[1]~feeder_combout\ : std_logic;
SIGNAL \rtl~53_combout\ : std_logic;
SIGNAL \U|DP|U2|Mux14~0_combout\ : std_logic;
SIGNAL \U|DP|U0|Mux14~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[1]~2_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rfour|out[1]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rone|out[1]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[1]~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|b[1]~1_combout\ : std_logic;
SIGNAL \U|DP|U2|Add0~1_sumout\ : std_logic;
SIGNAL \U|DP|C|out[0]~feeder_combout\ : std_logic;
SIGNAL \U|DP|U2|Mux15~0_combout\ : std_logic;
SIGNAL \U|DP|C|out[1]~DUPLICATE_q\ : std_logic;
SIGNAL \H0|WideOr6~0_combout\ : std_logic;
SIGNAL \H0|WideOr5~0_combout\ : std_logic;
SIGNAL \H0|WideOr4~0_combout\ : std_logic;
SIGNAL \H0|WideOr3~0_combout\ : std_logic;
SIGNAL \H0|WideOr2~0_combout\ : std_logic;
SIGNAL \H0|WideOr1~0_combout\ : std_logic;
SIGNAL \H0|WideOr0~0_combout\ : std_logic;
SIGNAL \H1|WideOr6~0_combout\ : std_logic;
SIGNAL \H1|WideOr5~0_combout\ : std_logic;
SIGNAL \H1|WideOr4~0_combout\ : std_logic;
SIGNAL \H1|WideOr3~0_combout\ : std_logic;
SIGNAL \H1|WideOr2~0_combout\ : std_logic;
SIGNAL \H1|WideOr1~0_combout\ : std_logic;
SIGNAL \H1|WideOr0~0_combout\ : std_logic;
SIGNAL \H2|WideOr6~0_combout\ : std_logic;
SIGNAL \H2|WideOr5~0_combout\ : std_logic;
SIGNAL \H2|WideOr4~0_combout\ : std_logic;
SIGNAL \H2|WideOr3~0_combout\ : std_logic;
SIGNAL \H2|WideOr2~0_combout\ : std_logic;
SIGNAL \H2|WideOr1~0_combout\ : std_logic;
SIGNAL \H2|WideOr0~0_combout\ : std_logic;
SIGNAL \H3|WideOr6~0_combout\ : std_logic;
SIGNAL \H3|WideOr5~0_combout\ : std_logic;
SIGNAL \H3|WideOr4~0_combout\ : std_logic;
SIGNAL \H3|WideOr3~0_combout\ : std_logic;
SIGNAL \H3|WideOr2~0_combout\ : std_logic;
SIGNAL \H3|WideOr1~0_combout\ : std_logic;
SIGNAL \H3|WideOr0~0_combout\ : std_logic;
SIGNAL \U|DP|U2|Equal0~0_combout\ : std_logic;
SIGNAL \U|DP|U2|Equal0~4_combout\ : std_logic;
SIGNAL \U|DP|U2|Equal0~1_combout\ : std_logic;
SIGNAL \U|DP|U2|Equal0~2_combout\ : std_logic;
SIGNAL \U|DP|U2|Equal0~3_combout\ : std_logic;
SIGNAL \U|DP|U2|Equal0~5_combout\ : std_logic;
SIGNAL \U|DP|U2|Equal0~8_combout\ : std_logic;
SIGNAL \U|DP|U2|Equal0~7_combout\ : std_logic;
SIGNAL \U|DP|U2|Equal0~6_combout\ : std_logic;
SIGNAL \U|DP|A|out[15]~DUPLICATE_q\ : std_logic;
SIGNAL \U|DP|overflowcheck|ovf~0_combout\ : std_logic;
SIGNAL \U|DP|stat|out[1]~feeder_combout\ : std_logic;
SIGNAL \U|statemachine|vsel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Rthree|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|C|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Rzero|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|stat|out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \IN|REG|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|B|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|statemachine|next_st\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U|instruct|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|A|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|statemachine|nsel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Rone|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Rfour|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Rtwo|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Rsix|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Rfive|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Rseven|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|outp|b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|towrite\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U|DP|B|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|U2|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \U|DP|A|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_rtl~55_combout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~54_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~53_combout\ : std_logic;
SIGNAL \U|instruct|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|U2|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_w~0_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_next_st\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U|DP|stat|ALT_INV_out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \H3|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \H2|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \H1|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \H0|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \IN|REG|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|U2|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \U|DP|C|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|A|ALT_INV_out[15]~DUPLICATE_q\ : std_logic;
SIGNAL \U|DP|A|ALT_INV_out[11]~DUPLICATE_q\ : std_logic;
SIGNAL \U|DP|A|ALT_INV_out[9]~DUPLICATE_q\ : std_logic;
SIGNAL \U|DP|B|ALT_INV_out[9]~DUPLICATE_q\ : std_logic;
SIGNAL \U|DP|A|ALT_INV_out[2]~DUPLICATE_q\ : std_logic;
SIGNAL \U|DP|B|ALT_INV_out[2]~DUPLICATE_q\ : std_logic;
SIGNAL \U|DP|B|ALT_INV_out[1]~DUPLICATE_q\ : std_logic;
SIGNAL \U|DP|C|ALT_INV_out[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~78_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~77_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~76_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~75_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~74_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~73_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~72_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~71_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~70_combout\ : std_logic;
SIGNAL \U|DP|U0|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \U|DP|U0|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \U|DP|U0|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \U|DP|U0|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \U|DP|U0|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_always0~5_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_always0~4_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_write~q\ : std_logic;
SIGNAL \U|DP|U0|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_vsel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[15]~47_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rseven|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Rfive|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[15]~46_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rsix|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Rtwo|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[15]~45_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Rfour|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Rone|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Rzero|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Rthree|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[14]~44_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[14]~43_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[14]~42_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[13]~41_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[13]~40_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[13]~39_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[12]~38_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[12]~37_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[12]~36_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[11]~35_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[11]~34_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[11]~33_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[10]~32_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[10]~31_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[10]~30_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[9]~29_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[9]~28_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[9]~27_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[8]~26_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[8]~25_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[8]~24_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~69_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[7]~23_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[7]~22_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[7]~21_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~68_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[6]~20_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[6]~19_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[6]~18_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[5]~17_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[5]~16_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[5]~15_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[4]~14_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[4]~13_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[4]~12_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[3]~11_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[3]~10_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[3]~9_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[2]~8_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[2]~7_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[2]~6_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~67_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[0]~5_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[0]~4_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[0]~3_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[1]~2_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[1]~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|outp|ALT_INV_b[1]~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|bot|ALT_INV_ShiftLeft0~0_combout\ : std_logic;
SIGNAL \U|dec_i|locsel|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \U|dec_i|locsel|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \U|dec_i|locsel|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_nsel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_rtl~0_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_WideNor5~0_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_WideNor6~0_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_WideOr7~0_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_always0~3_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_always0~2_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_always0~1_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_WideNor7~combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_always0~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~31_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~30_combout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~66_combout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~65_combout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~64_combout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~63_combout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~62_combout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~61_combout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~60_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~59_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~58_combout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~57_combout\ : std_logic;
SIGNAL \U|DP|U2|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~56_combout\ : std_logic;

BEGIN

ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U|DP|B|ALT_INV_out\(5) <= NOT \U|DP|B|out\(5);
\U|DP|U2|ALT_INV_Mux12~0_combout\ <= NOT \U|DP|U2|Mux12~0_combout\;
\U|DP|A|ALT_INV_out\(3) <= NOT \U|DP|A|out\(3);
\ALT_INV_rtl~55_combout\ <= NOT \rtl~55_combout\;
\U|DP|B|ALT_INV_out\(4) <= NOT \U|DP|B|out\(4);
\U|DP|U2|ALT_INV_Mux13~0_combout\ <= NOT \U|DP|U2|Mux13~0_combout\;
\U|DP|A|ALT_INV_out\(2) <= NOT \U|DP|A|out\(2);
\ALT_INV_rtl~54_combout\ <= NOT \rtl~54_combout\;
\U|DP|B|ALT_INV_out\(3) <= NOT \U|DP|B|out\(3);
\ALT_INV_rtl~53_combout\ <= NOT \rtl~53_combout\;
\U|DP|B|ALT_INV_out\(2) <= NOT \U|DP|B|out\(2);
\U|DP|A|ALT_INV_out\(1) <= NOT \U|DP|A|out\(1);
\U|instruct|ALT_INV_out\(12) <= NOT \U|instruct|out\(12);
\U|DP|U2|ALT_INV_Mux15~0_combout\ <= NOT \U|DP|U2|Mux15~0_combout\;
\U|DP|A|ALT_INV_out\(0) <= NOT \U|DP|A|out\(0);
\U|DP|B|ALT_INV_out\(0) <= NOT \U|DP|B|out\(0);
\U|instruct|ALT_INV_out\(3) <= NOT \U|instruct|out\(3);
\U|DP|B|ALT_INV_out\(1) <= NOT \U|DP|B|out\(1);
\U|instruct|ALT_INV_out\(4) <= NOT \U|instruct|out\(4);
\U|instruct|ALT_INV_out\(11) <= NOT \U|instruct|out\(11);
\U|statemachine|ALT_INV_w~0_combout\ <= NOT \U|statemachine|w~0_combout\;
\U|statemachine|ALT_INV_next_st\(3) <= NOT \U|statemachine|next_st\(3);
\U|statemachine|ALT_INV_next_st\(0) <= NOT \U|statemachine|next_st\(0);
\U|statemachine|ALT_INV_next_st\(1) <= NOT \U|statemachine|next_st\(1);
\U|statemachine|ALT_INV_next_st\(2) <= NOT \U|statemachine|next_st\(2);
\U|DP|stat|ALT_INV_out\(0) <= NOT \U|DP|stat|out\(0);
\H3|ALT_INV_WideOr0~0_combout\ <= NOT \H3|WideOr0~0_combout\;
\H2|ALT_INV_WideOr0~0_combout\ <= NOT \H2|WideOr0~0_combout\;
\H1|ALT_INV_WideOr0~0_combout\ <= NOT \H1|WideOr0~0_combout\;
\H0|ALT_INV_WideOr0~0_combout\ <= NOT \H0|WideOr0~0_combout\;
\IN|REG|ALT_INV_Q\(15) <= NOT \IN|REG|Q\(15);
\IN|REG|ALT_INV_Q\(7) <= NOT \IN|REG|Q\(7);
\IN|REG|ALT_INV_Q\(14) <= NOT \IN|REG|Q\(14);
\IN|REG|ALT_INV_Q\(6) <= NOT \IN|REG|Q\(6);
\IN|REG|ALT_INV_Q\(13) <= NOT \IN|REG|Q\(13);
\IN|REG|ALT_INV_Q\(5) <= NOT \IN|REG|Q\(5);
\IN|REG|ALT_INV_Q\(12) <= NOT \IN|REG|Q\(12);
\IN|REG|ALT_INV_Q\(4) <= NOT \IN|REG|Q\(4);
\IN|REG|ALT_INV_Q\(11) <= NOT \IN|REG|Q\(11);
\IN|REG|ALT_INV_Q\(3) <= NOT \IN|REG|Q\(3);
\IN|REG|ALT_INV_Q\(10) <= NOT \IN|REG|Q\(10);
\IN|REG|ALT_INV_Q\(2) <= NOT \IN|REG|Q\(2);
\IN|REG|ALT_INV_Q\(9) <= NOT \IN|REG|Q\(9);
\IN|REG|ALT_INV_Q\(1) <= NOT \IN|REG|Q\(1);
\IN|REG|ALT_INV_Q\(8) <= NOT \IN|REG|Q\(8);
\IN|REG|ALT_INV_Q\(0) <= NOT \IN|REG|Q\(0);
\U|DP|U2|ALT_INV_Add0~61_sumout\ <= NOT \U|DP|U2|Add0~61_sumout\;
\U|DP|U2|ALT_INV_Add0~57_sumout\ <= NOT \U|DP|U2|Add0~57_sumout\;
\U|DP|U2|ALT_INV_Add0~53_sumout\ <= NOT \U|DP|U2|Add0~53_sumout\;
\U|DP|U2|ALT_INV_Add0~49_sumout\ <= NOT \U|DP|U2|Add0~49_sumout\;
\U|DP|U2|ALT_INV_Add0~45_sumout\ <= NOT \U|DP|U2|Add0~45_sumout\;
\U|DP|U2|ALT_INV_Add0~41_sumout\ <= NOT \U|DP|U2|Add0~41_sumout\;
\U|DP|U2|ALT_INV_Add0~37_sumout\ <= NOT \U|DP|U2|Add0~37_sumout\;
\U|DP|U2|ALT_INV_Add0~33_sumout\ <= NOT \U|DP|U2|Add0~33_sumout\;
\U|DP|U2|ALT_INV_Add0~29_sumout\ <= NOT \U|DP|U2|Add0~29_sumout\;
\U|DP|U2|ALT_INV_Add0~25_sumout\ <= NOT \U|DP|U2|Add0~25_sumout\;
\U|DP|U2|ALT_INV_Add0~21_sumout\ <= NOT \U|DP|U2|Add0~21_sumout\;
\U|DP|U2|ALT_INV_Add0~17_sumout\ <= NOT \U|DP|U2|Add0~17_sumout\;
\U|DP|U2|ALT_INV_Add0~13_sumout\ <= NOT \U|DP|U2|Add0~13_sumout\;
\U|DP|U2|ALT_INV_Add0~9_sumout\ <= NOT \U|DP|U2|Add0~9_sumout\;
\U|DP|U2|ALT_INV_Add0~5_sumout\ <= NOT \U|DP|U2|Add0~5_sumout\;
\U|DP|U2|ALT_INV_Add0~1_sumout\ <= NOT \U|DP|U2|Add0~1_sumout\;
\U|DP|stat|ALT_INV_out\(1) <= NOT \U|DP|stat|out\(1);
\U|DP|stat|ALT_INV_out\(2) <= NOT \U|DP|stat|out\(2);
\U|DP|C|ALT_INV_out\(15) <= NOT \U|DP|C|out\(15);
\U|DP|C|ALT_INV_out\(14) <= NOT \U|DP|C|out\(14);
\U|DP|C|ALT_INV_out\(13) <= NOT \U|DP|C|out\(13);
\U|DP|C|ALT_INV_out\(12) <= NOT \U|DP|C|out\(12);
\U|DP|C|ALT_INV_out\(11) <= NOT \U|DP|C|out\(11);
\U|DP|C|ALT_INV_out\(10) <= NOT \U|DP|C|out\(10);
\U|DP|C|ALT_INV_out\(9) <= NOT \U|DP|C|out\(9);
\U|DP|C|ALT_INV_out\(8) <= NOT \U|DP|C|out\(8);
\U|DP|C|ALT_INV_out\(7) <= NOT \U|DP|C|out\(7);
\U|DP|C|ALT_INV_out\(6) <= NOT \U|DP|C|out\(6);
\U|DP|C|ALT_INV_out\(5) <= NOT \U|DP|C|out\(5);
\U|DP|C|ALT_INV_out\(4) <= NOT \U|DP|C|out\(4);
\U|DP|C|ALT_INV_out\(3) <= NOT \U|DP|C|out\(3);
\U|DP|C|ALT_INV_out\(2) <= NOT \U|DP|C|out\(2);
\U|DP|C|ALT_INV_out\(1) <= NOT \U|DP|C|out\(1);
\U|DP|C|ALT_INV_out\(0) <= NOT \U|DP|C|out\(0);
\U|DP|A|ALT_INV_out[15]~DUPLICATE_q\ <= NOT \U|DP|A|out[15]~DUPLICATE_q\;
\U|DP|A|ALT_INV_out[11]~DUPLICATE_q\ <= NOT \U|DP|A|out[11]~DUPLICATE_q\;
\U|DP|A|ALT_INV_out[9]~DUPLICATE_q\ <= NOT \U|DP|A|out[9]~DUPLICATE_q\;
\U|DP|B|ALT_INV_out[9]~DUPLICATE_q\ <= NOT \U|DP|B|out[9]~DUPLICATE_q\;
\U|DP|A|ALT_INV_out[2]~DUPLICATE_q\ <= NOT \U|DP|A|out[2]~DUPLICATE_q\;
\U|DP|B|ALT_INV_out[2]~DUPLICATE_q\ <= NOT \U|DP|B|out[2]~DUPLICATE_q\;
\U|DP|B|ALT_INV_out[1]~DUPLICATE_q\ <= NOT \U|DP|B|out[1]~DUPLICATE_q\;
\U|DP|C|ALT_INV_out[1]~DUPLICATE_q\ <= NOT \U|DP|C|out[1]~DUPLICATE_q\;
\ALT_INV_KEY[0]~inputCLKENA0_outclk\ <= NOT \KEY[0]~inputCLKENA0_outclk\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\U|DP|U2|ALT_INV_Equal0~8_combout\ <= NOT \U|DP|U2|Equal0~8_combout\;
\U|DP|U2|ALT_INV_Equal0~7_combout\ <= NOT \U|DP|U2|Equal0~7_combout\;
\ALT_INV_rtl~78_combout\ <= NOT \rtl~78_combout\;
\ALT_INV_rtl~77_combout\ <= NOT \rtl~77_combout\;
\ALT_INV_rtl~76_combout\ <= NOT \rtl~76_combout\;
\ALT_INV_rtl~75_combout\ <= NOT \rtl~75_combout\;
\ALT_INV_rtl~74_combout\ <= NOT \rtl~74_combout\;
\ALT_INV_rtl~73_combout\ <= NOT \rtl~73_combout\;
\ALT_INV_rtl~72_combout\ <= NOT \rtl~72_combout\;
\ALT_INV_rtl~71_combout\ <= NOT \rtl~71_combout\;
\ALT_INV_rtl~70_combout\ <= NOT \rtl~70_combout\;
\U|DP|U0|ALT_INV_Mux9~0_combout\ <= NOT \U|DP|U0|Mux9~0_combout\;
\U|DP|U0|ALT_INV_Mux11~0_combout\ <= NOT \U|DP|U0|Mux11~0_combout\;
\U|DP|U0|ALT_INV_Mux12~0_combout\ <= NOT \U|DP|U0|Mux12~0_combout\;
\U|DP|U0|ALT_INV_Mux13~0_combout\ <= NOT \U|DP|U0|Mux13~0_combout\;
\U|DP|U0|ALT_INV_Mux15~0_combout\ <= NOT \U|DP|U0|Mux15~0_combout\;
\U|statemachine|ALT_INV_always0~5_combout\ <= NOT \U|statemachine|always0~5_combout\;
\U|statemachine|ALT_INV_always0~4_combout\ <= NOT \U|statemachine|always0~4_combout\;
\U|statemachine|ALT_INV_write~q\ <= NOT \U|statemachine|write~q\;
\U|DP|U0|ALT_INV_Mux14~0_combout\ <= NOT \U|DP|U0|Mux14~0_combout\;
\U|statemachine|ALT_INV_vsel\(1) <= NOT \U|statemachine|vsel\(1);
\U|statemachine|ALT_INV_vsel\(0) <= NOT \U|statemachine|vsel\(0);
\U|DP|REGFILE|outp|ALT_INV_b[15]~47_combout\ <= NOT \U|DP|REGFILE|outp|b[15]~47_combout\;
\U|DP|REGFILE|Rseven|ALT_INV_out\(15) <= NOT \U|DP|REGFILE|Rseven|out\(15);
\U|DP|REGFILE|Rfive|ALT_INV_out\(15) <= NOT \U|DP|REGFILE|Rfive|out\(15);
\U|DP|REGFILE|outp|ALT_INV_b[15]~46_combout\ <= NOT \U|DP|REGFILE|outp|b[15]~46_combout\;
\U|DP|REGFILE|Rsix|ALT_INV_out\(15) <= NOT \U|DP|REGFILE|Rsix|out\(15);
\U|DP|REGFILE|Rtwo|ALT_INV_out\(15) <= NOT \U|DP|REGFILE|Rtwo|out\(15);
\U|DP|REGFILE|outp|ALT_INV_b[15]~45_combout\ <= NOT \U|DP|REGFILE|outp|b[15]~45_combout\;
\U|DP|REGFILE|Rfour|ALT_INV_out\(15) <= NOT \U|DP|REGFILE|Rfour|out\(15);
\U|DP|REGFILE|Rone|ALT_INV_out\(15) <= NOT \U|DP|REGFILE|Rone|out\(15);
\U|DP|REGFILE|Rzero|ALT_INV_out\(15) <= NOT \U|DP|REGFILE|Rzero|out\(15);
\U|DP|REGFILE|Rthree|ALT_INV_out\(15) <= NOT \U|DP|REGFILE|Rthree|out\(15);
\U|DP|REGFILE|outp|ALT_INV_b[14]~44_combout\ <= NOT \U|DP|REGFILE|outp|b[14]~44_combout\;
\U|DP|REGFILE|Rseven|ALT_INV_out\(14) <= NOT \U|DP|REGFILE|Rseven|out\(14);
\U|DP|REGFILE|Rfive|ALT_INV_out\(14) <= NOT \U|DP|REGFILE|Rfive|out\(14);
\U|DP|REGFILE|outp|ALT_INV_b[14]~43_combout\ <= NOT \U|DP|REGFILE|outp|b[14]~43_combout\;
\U|DP|REGFILE|Rsix|ALT_INV_out\(14) <= NOT \U|DP|REGFILE|Rsix|out\(14);
\U|DP|REGFILE|Rtwo|ALT_INV_out\(14) <= NOT \U|DP|REGFILE|Rtwo|out\(14);
\U|DP|REGFILE|outp|ALT_INV_b[14]~42_combout\ <= NOT \U|DP|REGFILE|outp|b[14]~42_combout\;
\U|DP|REGFILE|Rfour|ALT_INV_out\(14) <= NOT \U|DP|REGFILE|Rfour|out\(14);
\U|DP|REGFILE|Rone|ALT_INV_out\(14) <= NOT \U|DP|REGFILE|Rone|out\(14);
\U|DP|REGFILE|Rzero|ALT_INV_out\(14) <= NOT \U|DP|REGFILE|Rzero|out\(14);
\U|DP|REGFILE|Rthree|ALT_INV_out\(14) <= NOT \U|DP|REGFILE|Rthree|out\(14);
\U|DP|REGFILE|outp|ALT_INV_b[13]~41_combout\ <= NOT \U|DP|REGFILE|outp|b[13]~41_combout\;
\U|DP|REGFILE|Rseven|ALT_INV_out\(13) <= NOT \U|DP|REGFILE|Rseven|out\(13);
\U|DP|REGFILE|Rfive|ALT_INV_out\(13) <= NOT \U|DP|REGFILE|Rfive|out\(13);
\U|DP|REGFILE|outp|ALT_INV_b[13]~40_combout\ <= NOT \U|DP|REGFILE|outp|b[13]~40_combout\;
\U|DP|REGFILE|Rsix|ALT_INV_out\(13) <= NOT \U|DP|REGFILE|Rsix|out\(13);
\U|DP|REGFILE|Rtwo|ALT_INV_out\(13) <= NOT \U|DP|REGFILE|Rtwo|out\(13);
\U|DP|REGFILE|outp|ALT_INV_b[13]~39_combout\ <= NOT \U|DP|REGFILE|outp|b[13]~39_combout\;
\U|DP|REGFILE|Rfour|ALT_INV_out\(13) <= NOT \U|DP|REGFILE|Rfour|out\(13);
\U|DP|REGFILE|Rone|ALT_INV_out\(13) <= NOT \U|DP|REGFILE|Rone|out\(13);
\U|DP|REGFILE|Rzero|ALT_INV_out\(13) <= NOT \U|DP|REGFILE|Rzero|out\(13);
\U|DP|REGFILE|Rthree|ALT_INV_out\(13) <= NOT \U|DP|REGFILE|Rthree|out\(13);
\U|DP|REGFILE|outp|ALT_INV_b[12]~38_combout\ <= NOT \U|DP|REGFILE|outp|b[12]~38_combout\;
\U|DP|REGFILE|Rseven|ALT_INV_out\(12) <= NOT \U|DP|REGFILE|Rseven|out\(12);
\U|DP|REGFILE|Rfive|ALT_INV_out\(12) <= NOT \U|DP|REGFILE|Rfive|out\(12);
\U|DP|REGFILE|outp|ALT_INV_b[12]~37_combout\ <= NOT \U|DP|REGFILE|outp|b[12]~37_combout\;
\U|DP|REGFILE|Rsix|ALT_INV_out\(12) <= NOT \U|DP|REGFILE|Rsix|out\(12);
\U|DP|REGFILE|Rtwo|ALT_INV_out\(12) <= NOT \U|DP|REGFILE|Rtwo|out\(12);
\U|DP|REGFILE|outp|ALT_INV_b[12]~36_combout\ <= NOT \U|DP|REGFILE|outp|b[12]~36_combout\;
\U|DP|REGFILE|Rfour|ALT_INV_out\(12) <= NOT \U|DP|REGFILE|Rfour|out\(12);
\U|DP|REGFILE|Rone|ALT_INV_out\(12) <= NOT \U|DP|REGFILE|Rone|out\(12);
\U|DP|REGFILE|Rzero|ALT_INV_out\(12) <= NOT \U|DP|REGFILE|Rzero|out\(12);
\U|DP|REGFILE|Rthree|ALT_INV_out\(12) <= NOT \U|DP|REGFILE|Rthree|out\(12);
\U|DP|REGFILE|outp|ALT_INV_b[11]~35_combout\ <= NOT \U|DP|REGFILE|outp|b[11]~35_combout\;
\U|DP|REGFILE|Rseven|ALT_INV_out\(11) <= NOT \U|DP|REGFILE|Rseven|out\(11);
\U|DP|REGFILE|Rfive|ALT_INV_out\(11) <= NOT \U|DP|REGFILE|Rfive|out\(11);
\U|DP|REGFILE|outp|ALT_INV_b[11]~34_combout\ <= NOT \U|DP|REGFILE|outp|b[11]~34_combout\;
\U|DP|REGFILE|Rsix|ALT_INV_out\(11) <= NOT \U|DP|REGFILE|Rsix|out\(11);
\U|DP|REGFILE|Rtwo|ALT_INV_out\(11) <= NOT \U|DP|REGFILE|Rtwo|out\(11);
\U|DP|REGFILE|outp|ALT_INV_b[11]~33_combout\ <= NOT \U|DP|REGFILE|outp|b[11]~33_combout\;
\U|DP|REGFILE|Rfour|ALT_INV_out\(11) <= NOT \U|DP|REGFILE|Rfour|out\(11);
\U|DP|REGFILE|Rone|ALT_INV_out\(11) <= NOT \U|DP|REGFILE|Rone|out\(11);
\U|DP|REGFILE|Rzero|ALT_INV_out\(11) <= NOT \U|DP|REGFILE|Rzero|out\(11);
\U|DP|REGFILE|Rthree|ALT_INV_out\(11) <= NOT \U|DP|REGFILE|Rthree|out\(11);
\U|DP|REGFILE|outp|ALT_INV_b[10]~32_combout\ <= NOT \U|DP|REGFILE|outp|b[10]~32_combout\;
\U|DP|REGFILE|Rseven|ALT_INV_out\(10) <= NOT \U|DP|REGFILE|Rseven|out\(10);
\U|DP|REGFILE|Rfive|ALT_INV_out\(10) <= NOT \U|DP|REGFILE|Rfive|out\(10);
\U|DP|REGFILE|outp|ALT_INV_b[10]~31_combout\ <= NOT \U|DP|REGFILE|outp|b[10]~31_combout\;
\U|DP|REGFILE|Rsix|ALT_INV_out\(10) <= NOT \U|DP|REGFILE|Rsix|out\(10);
\U|DP|REGFILE|Rtwo|ALT_INV_out\(10) <= NOT \U|DP|REGFILE|Rtwo|out\(10);
\U|DP|REGFILE|outp|ALT_INV_b[10]~30_combout\ <= NOT \U|DP|REGFILE|outp|b[10]~30_combout\;
\U|DP|REGFILE|Rfour|ALT_INV_out\(10) <= NOT \U|DP|REGFILE|Rfour|out\(10);
\U|DP|REGFILE|Rone|ALT_INV_out\(10) <= NOT \U|DP|REGFILE|Rone|out\(10);
\U|DP|REGFILE|Rzero|ALT_INV_out\(10) <= NOT \U|DP|REGFILE|Rzero|out\(10);
\U|DP|REGFILE|Rthree|ALT_INV_out\(10) <= NOT \U|DP|REGFILE|Rthree|out\(10);
\U|DP|REGFILE|outp|ALT_INV_b[9]~29_combout\ <= NOT \U|DP|REGFILE|outp|b[9]~29_combout\;
\U|DP|REGFILE|Rseven|ALT_INV_out\(9) <= NOT \U|DP|REGFILE|Rseven|out\(9);
\U|DP|REGFILE|Rfive|ALT_INV_out\(9) <= NOT \U|DP|REGFILE|Rfive|out\(9);
\U|DP|REGFILE|outp|ALT_INV_b[9]~28_combout\ <= NOT \U|DP|REGFILE|outp|b[9]~28_combout\;
\U|DP|REGFILE|Rsix|ALT_INV_out\(9) <= NOT \U|DP|REGFILE|Rsix|out\(9);
\U|DP|REGFILE|Rtwo|ALT_INV_out\(9) <= NOT \U|DP|REGFILE|Rtwo|out\(9);
\U|DP|REGFILE|outp|ALT_INV_b[9]~27_combout\ <= NOT \U|DP|REGFILE|outp|b[9]~27_combout\;
\U|DP|REGFILE|Rfour|ALT_INV_out\(9) <= NOT \U|DP|REGFILE|Rfour|out\(9);
\U|DP|REGFILE|Rone|ALT_INV_out\(9) <= NOT \U|DP|REGFILE|Rone|out\(9);
\U|DP|REGFILE|Rzero|ALT_INV_out\(9) <= NOT \U|DP|REGFILE|Rzero|out\(9);
\U|DP|REGFILE|Rthree|ALT_INV_out\(9) <= NOT \U|DP|REGFILE|Rthree|out\(9);
\U|DP|REGFILE|outp|ALT_INV_b[8]~26_combout\ <= NOT \U|DP|REGFILE|outp|b[8]~26_combout\;
\U|DP|REGFILE|Rseven|ALT_INV_out\(8) <= NOT \U|DP|REGFILE|Rseven|out\(8);
\U|DP|REGFILE|Rfive|ALT_INV_out\(8) <= NOT \U|DP|REGFILE|Rfive|out\(8);
\U|DP|REGFILE|outp|ALT_INV_b[8]~25_combout\ <= NOT \U|DP|REGFILE|outp|b[8]~25_combout\;
\U|DP|REGFILE|Rsix|ALT_INV_out\(8) <= NOT \U|DP|REGFILE|Rsix|out\(8);
\U|DP|REGFILE|Rtwo|ALT_INV_out\(8) <= NOT \U|DP|REGFILE|Rtwo|out\(8);
\U|DP|REGFILE|outp|ALT_INV_b[8]~24_combout\ <= NOT \U|DP|REGFILE|outp|b[8]~24_combout\;
\U|DP|REGFILE|Rfour|ALT_INV_out\(8) <= NOT \U|DP|REGFILE|Rfour|out\(8);
\U|DP|REGFILE|Rone|ALT_INV_out\(8) <= NOT \U|DP|REGFILE|Rone|out\(8);
\U|DP|REGFILE|Rzero|ALT_INV_out\(8) <= NOT \U|DP|REGFILE|Rzero|out\(8);
\U|DP|REGFILE|Rthree|ALT_INV_out\(8) <= NOT \U|DP|REGFILE|Rthree|out\(8);
\ALT_INV_rtl~69_combout\ <= NOT \rtl~69_combout\;
\U|DP|REGFILE|outp|ALT_INV_b[7]~23_combout\ <= NOT \U|DP|REGFILE|outp|b[7]~23_combout\;
\U|DP|REGFILE|Rseven|ALT_INV_out\(7) <= NOT \U|DP|REGFILE|Rseven|out\(7);
\U|DP|REGFILE|Rfive|ALT_INV_out\(7) <= NOT \U|DP|REGFILE|Rfive|out\(7);
\U|DP|REGFILE|outp|ALT_INV_b[7]~22_combout\ <= NOT \U|DP|REGFILE|outp|b[7]~22_combout\;
\U|DP|REGFILE|Rsix|ALT_INV_out\(7) <= NOT \U|DP|REGFILE|Rsix|out\(7);
\U|DP|REGFILE|Rtwo|ALT_INV_out\(7) <= NOT \U|DP|REGFILE|Rtwo|out\(7);
\U|DP|REGFILE|outp|ALT_INV_b[7]~21_combout\ <= NOT \U|DP|REGFILE|outp|b[7]~21_combout\;
\U|DP|REGFILE|Rfour|ALT_INV_out\(7) <= NOT \U|DP|REGFILE|Rfour|out\(7);
\U|DP|REGFILE|Rone|ALT_INV_out\(7) <= NOT \U|DP|REGFILE|Rone|out\(7);
\U|DP|REGFILE|Rzero|ALT_INV_out\(7) <= NOT \U|DP|REGFILE|Rzero|out\(7);
\U|DP|REGFILE|Rthree|ALT_INV_out\(7) <= NOT \U|DP|REGFILE|Rthree|out\(7);
\ALT_INV_rtl~68_combout\ <= NOT \rtl~68_combout\;
\U|DP|REGFILE|outp|ALT_INV_b[6]~20_combout\ <= NOT \U|DP|REGFILE|outp|b[6]~20_combout\;
\U|DP|REGFILE|Rseven|ALT_INV_out\(6) <= NOT \U|DP|REGFILE|Rseven|out\(6);
\U|DP|REGFILE|Rfive|ALT_INV_out\(6) <= NOT \U|DP|REGFILE|Rfive|out\(6);
\U|DP|REGFILE|outp|ALT_INV_b[6]~19_combout\ <= NOT \U|DP|REGFILE|outp|b[6]~19_combout\;
\U|DP|REGFILE|Rsix|ALT_INV_out\(6) <= NOT \U|DP|REGFILE|Rsix|out\(6);
\U|DP|REGFILE|Rtwo|ALT_INV_out\(6) <= NOT \U|DP|REGFILE|Rtwo|out\(6);
\U|DP|REGFILE|outp|ALT_INV_b[6]~18_combout\ <= NOT \U|DP|REGFILE|outp|b[6]~18_combout\;
\U|DP|REGFILE|Rfour|ALT_INV_out\(6) <= NOT \U|DP|REGFILE|Rfour|out\(6);
\U|DP|REGFILE|Rone|ALT_INV_out\(6) <= NOT \U|DP|REGFILE|Rone|out\(6);
\U|DP|REGFILE|Rzero|ALT_INV_out\(6) <= NOT \U|DP|REGFILE|Rzero|out\(6);
\U|DP|REGFILE|Rthree|ALT_INV_out\(6) <= NOT \U|DP|REGFILE|Rthree|out\(6);
\U|DP|REGFILE|outp|ALT_INV_b[5]~17_combout\ <= NOT \U|DP|REGFILE|outp|b[5]~17_combout\;
\U|DP|REGFILE|Rseven|ALT_INV_out\(5) <= NOT \U|DP|REGFILE|Rseven|out\(5);
\U|DP|REGFILE|Rfive|ALT_INV_out\(5) <= NOT \U|DP|REGFILE|Rfive|out\(5);
\U|DP|REGFILE|outp|ALT_INV_b[5]~16_combout\ <= NOT \U|DP|REGFILE|outp|b[5]~16_combout\;
\U|DP|REGFILE|Rsix|ALT_INV_out\(5) <= NOT \U|DP|REGFILE|Rsix|out\(5);
\U|DP|REGFILE|Rtwo|ALT_INV_out\(5) <= NOT \U|DP|REGFILE|Rtwo|out\(5);
\U|DP|REGFILE|outp|ALT_INV_b[5]~15_combout\ <= NOT \U|DP|REGFILE|outp|b[5]~15_combout\;
\U|DP|REGFILE|Rfour|ALT_INV_out\(5) <= NOT \U|DP|REGFILE|Rfour|out\(5);
\U|DP|REGFILE|Rone|ALT_INV_out\(5) <= NOT \U|DP|REGFILE|Rone|out\(5);
\U|DP|REGFILE|Rzero|ALT_INV_out\(5) <= NOT \U|DP|REGFILE|Rzero|out\(5);
\U|DP|REGFILE|Rthree|ALT_INV_out\(5) <= NOT \U|DP|REGFILE|Rthree|out\(5);
\U|DP|REGFILE|outp|ALT_INV_b[4]~14_combout\ <= NOT \U|DP|REGFILE|outp|b[4]~14_combout\;
\U|DP|REGFILE|Rseven|ALT_INV_out\(4) <= NOT \U|DP|REGFILE|Rseven|out\(4);
\U|DP|REGFILE|Rfive|ALT_INV_out\(4) <= NOT \U|DP|REGFILE|Rfive|out\(4);
\U|DP|REGFILE|outp|ALT_INV_b[4]~13_combout\ <= NOT \U|DP|REGFILE|outp|b[4]~13_combout\;
\U|DP|REGFILE|Rsix|ALT_INV_out\(4) <= NOT \U|DP|REGFILE|Rsix|out\(4);
\U|DP|REGFILE|Rtwo|ALT_INV_out\(4) <= NOT \U|DP|REGFILE|Rtwo|out\(4);
\U|DP|REGFILE|outp|ALT_INV_b[4]~12_combout\ <= NOT \U|DP|REGFILE|outp|b[4]~12_combout\;
\U|DP|REGFILE|Rfour|ALT_INV_out\(4) <= NOT \U|DP|REGFILE|Rfour|out\(4);
\U|DP|REGFILE|Rone|ALT_INV_out\(4) <= NOT \U|DP|REGFILE|Rone|out\(4);
\U|DP|REGFILE|Rzero|ALT_INV_out\(4) <= NOT \U|DP|REGFILE|Rzero|out\(4);
\U|DP|REGFILE|Rthree|ALT_INV_out\(4) <= NOT \U|DP|REGFILE|Rthree|out\(4);
\U|DP|REGFILE|outp|ALT_INV_b[3]~11_combout\ <= NOT \U|DP|REGFILE|outp|b[3]~11_combout\;
\U|DP|REGFILE|Rseven|ALT_INV_out\(3) <= NOT \U|DP|REGFILE|Rseven|out\(3);
\U|DP|REGFILE|Rfive|ALT_INV_out\(3) <= NOT \U|DP|REGFILE|Rfive|out\(3);
\U|DP|REGFILE|outp|ALT_INV_b[3]~10_combout\ <= NOT \U|DP|REGFILE|outp|b[3]~10_combout\;
\U|DP|REGFILE|Rsix|ALT_INV_out\(3) <= NOT \U|DP|REGFILE|Rsix|out\(3);
\U|DP|REGFILE|Rtwo|ALT_INV_out\(3) <= NOT \U|DP|REGFILE|Rtwo|out\(3);
\U|DP|REGFILE|outp|ALT_INV_b[3]~9_combout\ <= NOT \U|DP|REGFILE|outp|b[3]~9_combout\;
\U|DP|REGFILE|Rfour|ALT_INV_out\(3) <= NOT \U|DP|REGFILE|Rfour|out\(3);
\U|DP|REGFILE|Rone|ALT_INV_out\(3) <= NOT \U|DP|REGFILE|Rone|out\(3);
\U|DP|REGFILE|Rzero|ALT_INV_out\(3) <= NOT \U|DP|REGFILE|Rzero|out\(3);
\U|DP|REGFILE|Rthree|ALT_INV_out\(3) <= NOT \U|DP|REGFILE|Rthree|out\(3);
\U|DP|REGFILE|outp|ALT_INV_b[2]~8_combout\ <= NOT \U|DP|REGFILE|outp|b[2]~8_combout\;
\U|DP|REGFILE|Rseven|ALT_INV_out\(2) <= NOT \U|DP|REGFILE|Rseven|out\(2);
\U|DP|REGFILE|Rfive|ALT_INV_out\(2) <= NOT \U|DP|REGFILE|Rfive|out\(2);
\U|DP|REGFILE|outp|ALT_INV_b[2]~7_combout\ <= NOT \U|DP|REGFILE|outp|b[2]~7_combout\;
\U|DP|REGFILE|Rsix|ALT_INV_out\(2) <= NOT \U|DP|REGFILE|Rsix|out\(2);
\U|DP|REGFILE|Rtwo|ALT_INV_out\(2) <= NOT \U|DP|REGFILE|Rtwo|out\(2);
\U|DP|REGFILE|outp|ALT_INV_b[2]~6_combout\ <= NOT \U|DP|REGFILE|outp|b[2]~6_combout\;
\U|DP|REGFILE|Rfour|ALT_INV_out\(2) <= NOT \U|DP|REGFILE|Rfour|out\(2);
\U|DP|REGFILE|Rone|ALT_INV_out\(2) <= NOT \U|DP|REGFILE|Rone|out\(2);
\U|DP|REGFILE|Rzero|ALT_INV_out\(2) <= NOT \U|DP|REGFILE|Rzero|out\(2);
\U|DP|REGFILE|Rthree|ALT_INV_out\(2) <= NOT \U|DP|REGFILE|Rthree|out\(2);
\ALT_INV_rtl~67_combout\ <= NOT \rtl~67_combout\;
\U|DP|REGFILE|outp|ALT_INV_b[0]~5_combout\ <= NOT \U|DP|REGFILE|outp|b[0]~5_combout\;
\U|DP|REGFILE|Rseven|ALT_INV_out\(0) <= NOT \U|DP|REGFILE|Rseven|out\(0);
\U|DP|REGFILE|Rfive|ALT_INV_out\(0) <= NOT \U|DP|REGFILE|Rfive|out\(0);
\U|DP|REGFILE|outp|ALT_INV_b[0]~4_combout\ <= NOT \U|DP|REGFILE|outp|b[0]~4_combout\;
\U|DP|REGFILE|Rsix|ALT_INV_out\(0) <= NOT \U|DP|REGFILE|Rsix|out\(0);
\U|DP|REGFILE|Rtwo|ALT_INV_out\(0) <= NOT \U|DP|REGFILE|Rtwo|out\(0);
\U|DP|REGFILE|outp|ALT_INV_b[0]~3_combout\ <= NOT \U|DP|REGFILE|outp|b[0]~3_combout\;
\U|DP|REGFILE|Rfour|ALT_INV_out\(0) <= NOT \U|DP|REGFILE|Rfour|out\(0);
\U|DP|REGFILE|Rone|ALT_INV_out\(0) <= NOT \U|DP|REGFILE|Rone|out\(0);
\U|DP|REGFILE|Rzero|ALT_INV_out\(0) <= NOT \U|DP|REGFILE|Rzero|out\(0);
\U|DP|REGFILE|Rthree|ALT_INV_out\(0) <= NOT \U|DP|REGFILE|Rthree|out\(0);
\U|DP|REGFILE|outp|ALT_INV_b[1]~2_combout\ <= NOT \U|DP|REGFILE|outp|b[1]~2_combout\;
\U|DP|REGFILE|Rseven|ALT_INV_out\(1) <= NOT \U|DP|REGFILE|Rseven|out\(1);
\U|DP|REGFILE|Rfive|ALT_INV_out\(1) <= NOT \U|DP|REGFILE|Rfive|out\(1);
\U|DP|REGFILE|outp|ALT_INV_b[1]~1_combout\ <= NOT \U|DP|REGFILE|outp|b[1]~1_combout\;
\U|DP|REGFILE|Rsix|ALT_INV_out\(1) <= NOT \U|DP|REGFILE|Rsix|out\(1);
\U|DP|REGFILE|Rtwo|ALT_INV_out\(1) <= NOT \U|DP|REGFILE|Rtwo|out\(1);
\U|DP|REGFILE|outp|ALT_INV_b[1]~0_combout\ <= NOT \U|DP|REGFILE|outp|b[1]~0_combout\;
\U|DP|REGFILE|Rfour|ALT_INV_out\(1) <= NOT \U|DP|REGFILE|Rfour|out\(1);
\U|DP|REGFILE|Rone|ALT_INV_out\(1) <= NOT \U|DP|REGFILE|Rone|out\(1);
\U|DP|REGFILE|Rzero|ALT_INV_out\(1) <= NOT \U|DP|REGFILE|Rzero|out\(1);
\U|DP|REGFILE|bot|ALT_INV_ShiftLeft0~0_combout\ <= NOT \U|DP|REGFILE|bot|ShiftLeft0~0_combout\;
\U|dec_i|locsel|ALT_INV_Mux2~0_combout\ <= NOT \U|dec_i|locsel|Mux2~0_combout\;
\U|instruct|ALT_INV_out\(0) <= NOT \U|instruct|out\(0);
\U|instruct|ALT_INV_out\(5) <= NOT \U|instruct|out\(5);
\U|instruct|ALT_INV_out\(8) <= NOT \U|instruct|out\(8);
\U|dec_i|locsel|ALT_INV_Mux1~0_combout\ <= NOT \U|dec_i|locsel|Mux1~0_combout\;
\U|instruct|ALT_INV_out\(1) <= NOT \U|instruct|out\(1);
\U|instruct|ALT_INV_out\(6) <= NOT \U|instruct|out\(6);
\U|instruct|ALT_INV_out\(9) <= NOT \U|instruct|out\(9);
\U|dec_i|locsel|ALT_INV_Mux0~0_combout\ <= NOT \U|dec_i|locsel|Mux0~0_combout\;
\U|instruct|ALT_INV_out\(2) <= NOT \U|instruct|out\(2);
\U|instruct|ALT_INV_out\(7) <= NOT \U|instruct|out\(7);
\U|statemachine|ALT_INV_nsel\(1) <= NOT \U|statemachine|nsel\(1);
\U|statemachine|ALT_INV_nsel\(0) <= NOT \U|statemachine|nsel\(0);
\U|statemachine|ALT_INV_nsel\(2) <= NOT \U|statemachine|nsel\(2);
\U|instruct|ALT_INV_out\(10) <= NOT \U|instruct|out\(10);
\U|DP|REGFILE|Rthree|ALT_INV_out\(1) <= NOT \U|DP|REGFILE|Rthree|out\(1);
\ALT_INV_rtl~0_combout\ <= NOT \rtl~0_combout\;
\U|statemachine|ALT_INV_WideNor5~0_combout\ <= NOT \U|statemachine|WideNor5~0_combout\;
\U|statemachine|ALT_INV_WideNor6~0_combout\ <= NOT \U|statemachine|WideNor6~0_combout\;
\U|statemachine|ALT_INV_WideOr7~0_combout\ <= NOT \U|statemachine|WideOr7~0_combout\;
\U|statemachine|ALT_INV_WideOr3~0_combout\ <= NOT \U|statemachine|WideOr3~0_combout\;
\U|statemachine|ALT_INV_always0~3_combout\ <= NOT \U|statemachine|always0~3_combout\;
\U|statemachine|ALT_INV_always0~2_combout\ <= NOT \U|statemachine|always0~2_combout\;
\U|instruct|ALT_INV_out\(14) <= NOT \U|instruct|out\(14);
\U|instruct|ALT_INV_out\(13) <= NOT \U|instruct|out\(13);
\U|statemachine|ALT_INV_always0~1_combout\ <= NOT \U|statemachine|always0~1_combout\;
\U|instruct|ALT_INV_out\(15) <= NOT \U|instruct|out\(15);
\U|statemachine|ALT_INV_WideNor7~combout\ <= NOT \U|statemachine|WideNor7~combout\;
\U|statemachine|ALT_INV_always0~0_combout\ <= NOT \U|statemachine|always0~0_combout\;
\ALT_INV_rtl~31_combout\ <= NOT \rtl~31_combout\;
\ALT_INV_rtl~30_combout\ <= NOT \rtl~30_combout\;
\U|DP|U2|ALT_INV_Equal0~5_combout\ <= NOT \U|DP|U2|Equal0~5_combout\;
\U|DP|U2|ALT_INV_Equal0~4_combout\ <= NOT \U|DP|U2|Equal0~4_combout\;
\U|DP|U2|ALT_INV_Equal0~3_combout\ <= NOT \U|DP|U2|Equal0~3_combout\;
\U|DP|U2|ALT_INV_Equal0~2_combout\ <= NOT \U|DP|U2|Equal0~2_combout\;
\U|DP|U2|ALT_INV_Equal0~1_combout\ <= NOT \U|DP|U2|Equal0~1_combout\;
\U|DP|U2|ALT_INV_Equal0~0_combout\ <= NOT \U|DP|U2|Equal0~0_combout\;
\U|DP|U2|ALT_INV_Mux0~0_combout\ <= NOT \U|DP|U2|Mux0~0_combout\;
\U|DP|A|ALT_INV_out\(15) <= NOT \U|DP|A|out\(15);
\U|DP|U2|ALT_INV_Mux1~0_combout\ <= NOT \U|DP|U2|Mux1~0_combout\;
\U|DP|A|ALT_INV_out\(14) <= NOT \U|DP|A|out\(14);
\ALT_INV_rtl~66_combout\ <= NOT \rtl~66_combout\;
\U|DP|B|ALT_INV_out\(15) <= NOT \U|DP|B|out\(15);
\U|DP|U2|ALT_INV_Mux2~0_combout\ <= NOT \U|DP|U2|Mux2~0_combout\;
\U|DP|A|ALT_INV_out\(13) <= NOT \U|DP|A|out\(13);
\ALT_INV_rtl~65_combout\ <= NOT \rtl~65_combout\;
\U|DP|B|ALT_INV_out\(14) <= NOT \U|DP|B|out\(14);
\U|DP|U2|ALT_INV_Mux3~0_combout\ <= NOT \U|DP|U2|Mux3~0_combout\;
\U|DP|A|ALT_INV_out\(12) <= NOT \U|DP|A|out\(12);
\ALT_INV_rtl~64_combout\ <= NOT \rtl~64_combout\;
\U|DP|B|ALT_INV_out\(13) <= NOT \U|DP|B|out\(13);
\U|DP|U2|ALT_INV_Mux4~0_combout\ <= NOT \U|DP|U2|Mux4~0_combout\;
\U|DP|A|ALT_INV_out\(11) <= NOT \U|DP|A|out\(11);
\ALT_INV_rtl~63_combout\ <= NOT \rtl~63_combout\;
\U|DP|B|ALT_INV_out\(12) <= NOT \U|DP|B|out\(12);
\U|DP|U2|ALT_INV_Mux5~0_combout\ <= NOT \U|DP|U2|Mux5~0_combout\;
\U|DP|A|ALT_INV_out\(10) <= NOT \U|DP|A|out\(10);
\ALT_INV_rtl~62_combout\ <= NOT \rtl~62_combout\;
\U|DP|B|ALT_INV_out\(11) <= NOT \U|DP|B|out\(11);
\U|DP|U2|ALT_INV_Mux6~0_combout\ <= NOT \U|DP|U2|Mux6~0_combout\;
\U|DP|A|ALT_INV_out\(9) <= NOT \U|DP|A|out\(9);
\ALT_INV_rtl~61_combout\ <= NOT \rtl~61_combout\;
\U|DP|B|ALT_INV_out\(10) <= NOT \U|DP|B|out\(10);
\U|DP|U2|ALT_INV_Mux7~0_combout\ <= NOT \U|DP|U2|Mux7~0_combout\;
\U|DP|A|ALT_INV_out\(8) <= NOT \U|DP|A|out\(8);
\ALT_INV_rtl~60_combout\ <= NOT \rtl~60_combout\;
\U|DP|B|ALT_INV_out\(9) <= NOT \U|DP|B|out\(9);
\ALT_INV_rtl~59_combout\ <= NOT \rtl~59_combout\;
\U|DP|B|ALT_INV_out\(8) <= NOT \U|DP|B|out\(8);
\U|DP|A|ALT_INV_out\(7) <= NOT \U|DP|A|out\(7);
\ALT_INV_rtl~58_combout\ <= NOT \rtl~58_combout\;
\U|DP|B|ALT_INV_out\(7) <= NOT \U|DP|B|out\(7);
\U|DP|A|ALT_INV_out\(6) <= NOT \U|DP|A|out\(6);
\U|DP|U2|ALT_INV_Mux10~0_combout\ <= NOT \U|DP|U2|Mux10~0_combout\;
\U|DP|A|ALT_INV_out\(5) <= NOT \U|DP|A|out\(5);
\ALT_INV_rtl~57_combout\ <= NOT \rtl~57_combout\;
\U|DP|B|ALT_INV_out\(6) <= NOT \U|DP|B|out\(6);
\U|DP|U2|ALT_INV_Mux11~0_combout\ <= NOT \U|DP|U2|Mux11~0_combout\;
\U|DP|A|ALT_INV_out\(4) <= NOT \U|DP|A|out\(4);
\ALT_INV_rtl~56_combout\ <= NOT \rtl~56_combout\;

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IN|LEDR[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IN|LEDR[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IN|LEDR[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IN|LEDR[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IN|LEDR[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IN|LEDR[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IN|LEDR[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IN|LEDR[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U|statemachine|w~q\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y16_N5
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X89_Y16_N22
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y4_N45
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y4_N62
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y21_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X89_Y11_N62
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y9_N5
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X89_Y11_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y13_N5
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y13_N22
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X89_Y8_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y15_N22
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y15_N5
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X89_Y20_N45
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y20_N62
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U|DP|stat|ALT_INV_out\(0),
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y25_N22
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y23_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U|DP|stat|ALT_INV_out\(2),
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y9_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y23_N5
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U|DP|stat|ALT_INV_out\(1),
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G7
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: FF_X87_Y4_N16
\IN|REG|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(0));

-- Location: FF_X87_Y5_N8
\IN|REG|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(8));

-- Location: MLABCELL_X87_Y4_N48
\IN|LEDR[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|LEDR[0]~0_combout\ = ( \IN|REG|Q\(8) & ( (!\SW[9]~input_o\) # (\IN|REG|Q\(0)) ) ) # ( !\IN|REG|Q\(8) & ( (\IN|REG|Q\(0) & \SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IN|REG|ALT_INV_Q\(0),
	datac => \ALT_INV_SW[9]~input_o\,
	datae => \IN|REG|ALT_INV_Q\(8),
	combout => \IN|LEDR[0]~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X85_Y5_N53
\IN|REG|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(9));

-- Location: FF_X87_Y4_N25
\IN|REG|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(1));

-- Location: LABCELL_X77_Y5_N27
\IN|LEDR[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|LEDR[1]~1_combout\ = ( \SW[9]~input_o\ & ( \IN|REG|Q\(1) ) ) # ( !\SW[9]~input_o\ & ( \IN|REG|Q\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IN|REG|ALT_INV_Q\(9),
	datac => \IN|REG|ALT_INV_Q\(1),
	datae => \ALT_INV_SW[9]~input_o\,
	combout => \IN|LEDR[1]~1_combout\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X87_Y5_N26
\IN|REG|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(10));

-- Location: FF_X87_Y5_N56
\IN|REG|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(2));

-- Location: MLABCELL_X87_Y5_N0
\IN|LEDR[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|LEDR[2]~2_combout\ = (!\SW[9]~input_o\ & (\IN|REG|Q\(10))) # (\SW[9]~input_o\ & ((\IN|REG|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \IN|REG|ALT_INV_Q\(10),
	datad => \IN|REG|ALT_INV_Q\(2),
	combout => \IN|LEDR[2]~2_combout\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LABCELL_X85_Y8_N51
\IN|REG|Q[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|REG|Q[11]~feeder_combout\ = ( \SW[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \IN|REG|Q[11]~feeder_combout\);

-- Location: FF_X85_Y8_N53
\IN|REG|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \IN|REG|Q[11]~feeder_combout\,
	ena => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(11));

-- Location: FF_X85_Y4_N26
\IN|REG|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(3));

-- Location: MLABCELL_X87_Y4_N12
\IN|LEDR[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|LEDR[3]~3_combout\ = ( \IN|REG|Q\(3) & ( (\IN|REG|Q\(11)) # (\SW[9]~input_o\) ) ) # ( !\IN|REG|Q\(3) & ( (!\SW[9]~input_o\ & \IN|REG|Q\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \IN|REG|ALT_INV_Q\(11),
	datae => \IN|REG|ALT_INV_Q\(3),
	combout => \IN|LEDR[3]~3_combout\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X87_Y4_N53
\IN|REG|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(4));

-- Location: FF_X87_Y8_N53
\IN|REG|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(12));

-- Location: MLABCELL_X87_Y4_N9
\IN|LEDR[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|LEDR[4]~4_combout\ = ( \SW[9]~input_o\ & ( \IN|REG|Q\(4) ) ) # ( !\SW[9]~input_o\ & ( \IN|REG|Q\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \IN|REG|ALT_INV_Q\(4),
	datad => \IN|REG|ALT_INV_Q\(12),
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \IN|LEDR[4]~4_combout\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: MLABCELL_X87_Y4_N18
\IN|REG|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|REG|Q[5]~feeder_combout\ = ( \SW[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \IN|REG|Q[5]~feeder_combout\);

-- Location: FF_X87_Y4_N20
\IN|REG|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \IN|REG|Q[5]~feeder_combout\,
	ena => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(5));

-- Location: FF_X87_Y5_N44
\IN|REG|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(13));

-- Location: LABCELL_X88_Y4_N57
\IN|LEDR[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|LEDR[5]~5_combout\ = ( \SW[9]~input_o\ & ( \IN|REG|Q\(5) ) ) # ( !\SW[9]~input_o\ & ( \IN|REG|Q\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \IN|REG|ALT_INV_Q\(5),
	datad => \IN|REG|ALT_INV_Q\(13),
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \IN|LEDR[5]~5_combout\);

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X87_Y5_N20
\IN|REG|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(6));

-- Location: FF_X87_Y5_N11
\IN|REG|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(14));

-- Location: MLABCELL_X87_Y5_N48
\IN|LEDR[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|LEDR[6]~6_combout\ = (!\SW[9]~input_o\ & ((\IN|REG|Q\(14)))) # (\SW[9]~input_o\ & (\IN|REG|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IN|REG|ALT_INV_Q\(6),
	datab => \IN|REG|ALT_INV_Q\(14),
	datac => \ALT_INV_SW[9]~input_o\,
	combout => \IN|LEDR[6]~6_combout\);

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X87_Y5_N53
\IN|REG|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(7));

-- Location: FF_X85_Y5_N20
\IN|REG|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(15));

-- Location: LABCELL_X83_Y5_N39
\IN|LEDR[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|LEDR[7]~7_combout\ = ( \SW[9]~input_o\ & ( \IN|REG|Q\(15) & ( \IN|REG|Q\(7) ) ) ) # ( !\SW[9]~input_o\ & ( \IN|REG|Q\(15) ) ) # ( \SW[9]~input_o\ & ( !\IN|REG|Q\(15) & ( \IN|REG|Q\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \IN|REG|ALT_INV_Q\(7),
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \IN|REG|ALT_INV_Q\(15),
	combout => \IN|LEDR[7]~7_combout\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G6
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: FF_X88_Y4_N38
\U|instruct|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(13),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruct|out\(13));

-- Location: FF_X88_Y5_N53
\U|instruct|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(14),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruct|out\(14));

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: FF_X87_Y8_N56
\U|instruct|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(12),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruct|out\(12));

-- Location: LABCELL_X85_Y8_N36
\U|instruct|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|instruct|out[11]~feeder_combout\ = ( \IN|REG|Q\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \IN|REG|ALT_INV_Q\(11),
	combout => \U|instruct|out[11]~feeder_combout\);

-- Location: FF_X85_Y8_N38
\U|instruct|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|instruct|out[11]~feeder_combout\,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruct|out\(11));

-- Location: LABCELL_X83_Y5_N6
\U|statemachine|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|always0~0_combout\ = ( !\U|instruct|out\(12) & ( !\U|instruct|out\(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \U|instruct|ALT_INV_out\(12),
	dataf => \U|instruct|ALT_INV_out\(11),
	combout => \U|statemachine|always0~0_combout\);

-- Location: LABCELL_X85_Y5_N42
\U|statemachine|WideOr7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideOr7~0_combout\ = ( \U|statemachine|always0~0_combout\ & ( \U|statemachine|next_st\(1) & ( (!\U|statemachine|next_st\(3) & (\KEY[1]~input_o\ & (!\U|statemachine|next_st\(2) & !\U|statemachine|next_st\(0)))) ) ) ) # ( 
-- !\U|statemachine|always0~0_combout\ & ( \U|statemachine|next_st\(1) & ( (!\U|statemachine|next_st\(3) & (\KEY[1]~input_o\ & (!\U|statemachine|next_st\(2) & !\U|statemachine|next_st\(0)))) ) ) ) # ( \U|statemachine|always0~0_combout\ & ( 
-- !\U|statemachine|next_st\(1) & ( (\U|statemachine|next_st\(3) & (\KEY[1]~input_o\ & (!\U|statemachine|next_st\(2) & !\U|statemachine|next_st\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_next_st\(3),
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \U|statemachine|ALT_INV_next_st\(2),
	datad => \U|statemachine|ALT_INV_next_st\(0),
	datae => \U|statemachine|ALT_INV_always0~0_combout\,
	dataf => \U|statemachine|ALT_INV_next_st\(1),
	combout => \U|statemachine|WideOr7~0_combout\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: FF_X85_Y5_N38
\U|instruct|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(15),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruct|out\(15));

-- Location: LABCELL_X85_Y5_N36
\U|statemachine|always0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|always0~1_combout\ = ( \U|instruct|out\(15) & ( \U|statemachine|next_st\(1) & ( (!\U|statemachine|next_st\(3) & (\U|statemachine|next_st\(0) & (\U|statemachine|next_st\(2) & \KEY[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_next_st\(3),
	datab => \U|statemachine|ALT_INV_next_st\(0),
	datac => \U|statemachine|ALT_INV_next_st\(2),
	datad => \ALT_INV_KEY[1]~input_o\,
	datae => \U|instruct|ALT_INV_out\(15),
	dataf => \U|statemachine|ALT_INV_next_st\(1),
	combout => \U|statemachine|always0~1_combout\);

-- Location: LABCELL_X85_Y5_N9
\U|statemachine|WideOr7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideOr7~combout\ = ( \U|statemachine|always0~1_combout\ & ( \U|statemachine|w~0_combout\ & ( ((!\KEY[2]~input_o\) # (!\U|instruct|out\(13) $ (!\U|instruct|out\(14)))) # (\U|statemachine|WideOr7~0_combout\) ) ) ) # ( 
-- !\U|statemachine|always0~1_combout\ & ( \U|statemachine|w~0_combout\ & ( (!\KEY[2]~input_o\) # (\U|statemachine|WideOr7~0_combout\) ) ) ) # ( \U|statemachine|always0~1_combout\ & ( !\U|statemachine|w~0_combout\ & ( (!\U|instruct|out\(13) $ 
-- (!\U|instruct|out\(14))) # (\U|statemachine|WideOr7~0_combout\) ) ) ) # ( !\U|statemachine|always0~1_combout\ & ( !\U|statemachine|w~0_combout\ & ( \U|statemachine|WideOr7~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111011011110110111111111111000011111111111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(13),
	datab => \U|instruct|ALT_INV_out\(14),
	datac => \U|statemachine|ALT_INV_WideOr7~0_combout\,
	datad => \ALT_INV_KEY[2]~input_o\,
	datae => \U|statemachine|ALT_INV_always0~1_combout\,
	dataf => \U|statemachine|ALT_INV_w~0_combout\,
	combout => \U|statemachine|WideOr7~combout\);

-- Location: FF_X85_Y5_N11
\U|statemachine|next_st[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|statemachine|WideOr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|statemachine|next_st\(0));

-- Location: MLABCELL_X87_Y5_N21
\U|statemachine|WideNor5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideNor5~0_combout\ = ( \U|statemachine|next_st\(2) & ( !\U|instruct|out\(11) & ( (\KEY[1]~input_o\ & (!\U|statemachine|next_st\(1) & (\U|statemachine|next_st\(0) & !\U|statemachine|next_st\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \U|statemachine|ALT_INV_next_st\(1),
	datac => \U|statemachine|ALT_INV_next_st\(0),
	datad => \U|statemachine|ALT_INV_next_st\(3),
	datae => \U|statemachine|ALT_INV_next_st\(2),
	dataf => \U|instruct|ALT_INV_out\(11),
	combout => \U|statemachine|WideNor5~0_combout\);

-- Location: MLABCELL_X87_Y5_N6
\U|statemachine|WideNor6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideNor6~0_combout\ = ( \KEY[1]~input_o\ & ( !\U|instruct|out\(11) & ( (!\U|statemachine|next_st\(2) & (!\U|statemachine|next_st\(1) & (\U|statemachine|next_st\(3) & !\U|instruct|out\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_next_st\(2),
	datab => \U|statemachine|ALT_INV_next_st\(1),
	datac => \U|statemachine|ALT_INV_next_st\(3),
	datad => \U|instruct|ALT_INV_out\(12),
	datae => \ALT_INV_KEY[1]~input_o\,
	dataf => \U|instruct|ALT_INV_out\(11),
	combout => \U|statemachine|WideNor6~0_combout\);

-- Location: MLABCELL_X87_Y5_N33
\U|statemachine|next_st~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|next_st~0_combout\ = ( \U|statemachine|WideNor6~0_combout\ & ( (!\U|statemachine|next_st\(0)) # ((!\U|instruct|out\(12) & \U|statemachine|WideNor5~0_combout\)) ) ) # ( !\U|statemachine|WideNor6~0_combout\ & ( (!\U|instruct|out\(12) & 
-- \U|statemachine|WideNor5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011001100111111001100110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|statemachine|ALT_INV_next_st\(0),
	datac => \U|instruct|ALT_INV_out\(12),
	datad => \U|statemachine|ALT_INV_WideNor5~0_combout\,
	dataf => \U|statemachine|ALT_INV_WideNor6~0_combout\,
	combout => \U|statemachine|next_st~0_combout\);

-- Location: FF_X87_Y5_N35
\U|statemachine|next_st[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|statemachine|next_st~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|statemachine|next_st\(3));

-- Location: LABCELL_X85_Y5_N12
\U|statemachine|WideOr5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideOr5~combout\ = ( !\U|statemachine|next_st\(1) & ( \U|statemachine|next_st\(0) & ( (!\U|statemachine|next_st\(3) & (!\U|statemachine|next_st\(2) & \KEY[1]~input_o\)) ) ) ) # ( \U|statemachine|next_st\(1) & ( !\U|statemachine|next_st\(0) 
-- & ( (!\U|statemachine|next_st\(3) & (!\U|statemachine|next_st\(2) & \KEY[1]~input_o\)) ) ) ) # ( !\U|statemachine|next_st\(1) & ( !\U|statemachine|next_st\(0) & ( (!\U|statemachine|next_st\(3) & (!\KEY[2]~input_o\ & (!\U|statemachine|next_st\(2) & 
-- \KEY[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001010000000000000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_next_st\(3),
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \U|statemachine|ALT_INV_next_st\(2),
	datad => \ALT_INV_KEY[1]~input_o\,
	datae => \U|statemachine|ALT_INV_next_st\(1),
	dataf => \U|statemachine|ALT_INV_next_st\(0),
	combout => \U|statemachine|WideOr5~combout\);

-- Location: FF_X85_Y5_N14
\U|statemachine|next_st[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|statemachine|WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|statemachine|next_st\(1));

-- Location: LABCELL_X85_Y5_N48
\U|statemachine|always0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|always0~3_combout\ = ( !\U|statemachine|next_st\(2) & ( \U|statemachine|next_st\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \U|statemachine|ALT_INV_next_st\(2),
	dataf => \U|statemachine|ALT_INV_next_st\(1),
	combout => \U|statemachine|always0~3_combout\);

-- Location: LABCELL_X85_Y5_N33
\U|statemachine|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideOr3~0_combout\ = (\U|statemachine|always0~3_combout\ & (\U|statemachine|next_st\(0) & (!\U|statemachine|next_st\(3) & \KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_always0~3_combout\,
	datab => \U|statemachine|ALT_INV_next_st\(0),
	datac => \U|statemachine|ALT_INV_next_st\(3),
	datad => \ALT_INV_KEY[1]~input_o\,
	combout => \U|statemachine|WideOr3~0_combout\);

-- Location: LABCELL_X88_Y4_N39
\U|statemachine|always0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|always0~2_combout\ = ( \U|instruct|out\(14) & ( !\U|instruct|out\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U|instruct|ALT_INV_out\(13),
	datae => \U|instruct|ALT_INV_out\(14),
	combout => \U|statemachine|always0~2_combout\);

-- Location: LABCELL_X85_Y5_N21
\U|statemachine|WideNor7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideNor7~combout\ = ( !\U|statemachine|next_st\(2) & ( !\U|statemachine|next_st\(1) & ( (\KEY[1]~input_o\ & (\U|statemachine|next_st\(0) & (\U|statemachine|always0~0_combout\ & \U|statemachine|next_st\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \U|statemachine|ALT_INV_next_st\(0),
	datac => \U|statemachine|ALT_INV_always0~0_combout\,
	datad => \U|statemachine|ALT_INV_next_st\(3),
	datae => \U|statemachine|ALT_INV_next_st\(2),
	dataf => \U|statemachine|ALT_INV_next_st\(1),
	combout => \U|statemachine|WideNor7~combout\);

-- Location: LABCELL_X85_Y5_N0
\U|statemachine|WideOr3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideOr3~combout\ = ( \U|statemachine|WideNor7~combout\ & ( \U|statemachine|w~0_combout\ ) ) # ( !\U|statemachine|WideNor7~combout\ & ( \U|statemachine|w~0_combout\ & ( ((!\KEY[2]~input_o\) # ((\U|statemachine|always0~1_combout\ & 
-- \U|statemachine|always0~2_combout\))) # (\U|statemachine|WideOr3~0_combout\) ) ) ) # ( \U|statemachine|WideNor7~combout\ & ( !\U|statemachine|w~0_combout\ ) ) # ( !\U|statemachine|WideNor7~combout\ & ( !\U|statemachine|w~0_combout\ & ( 
-- ((\U|statemachine|always0~1_combout\ & \U|statemachine|always0~2_combout\)) # (\U|statemachine|WideOr3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111111111111111111111011101110111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_WideOr3~0_combout\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \U|statemachine|ALT_INV_always0~1_combout\,
	datad => \U|statemachine|ALT_INV_always0~2_combout\,
	datae => \U|statemachine|ALT_INV_WideNor7~combout\,
	dataf => \U|statemachine|ALT_INV_w~0_combout\,
	combout => \U|statemachine|WideOr3~combout\);

-- Location: FF_X85_Y5_N2
\U|statemachine|next_st[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|statemachine|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|statemachine|next_st\(2));

-- Location: LABCELL_X85_Y5_N24
\U|statemachine|w~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|w~0_combout\ = ( !\U|statemachine|next_st\(0) & ( (!\U|statemachine|next_st\(2) & (!\U|statemachine|next_st\(1) & (!\U|statemachine|next_st\(3) & \KEY[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_next_st\(2),
	datab => \U|statemachine|ALT_INV_next_st\(1),
	datac => \U|statemachine|ALT_INV_next_st\(3),
	datad => \ALT_INV_KEY[1]~input_o\,
	dataf => \U|statemachine|ALT_INV_next_st\(0),
	combout => \U|statemachine|w~0_combout\);

-- Location: FF_X85_Y5_N4
\U|statemachine|w\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|statemachine|w~0_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|statemachine|w~q\);

-- Location: FF_X87_Y8_N35
\U|instruct|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(4),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruct|out\(4));

-- Location: FF_X88_Y5_N35
\U|instruct|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(1),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruct|out\(1));

-- Location: LABCELL_X85_Y5_N54
\U|statemachine|WideOr15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideOr15~0_combout\ = ( !\U|statemachine|next_st\(3) & ( (\KEY[1]~input_o\ & ((!\U|statemachine|next_st\(2) & (((\U|statemachine|next_st\(1))) # (\U|statemachine|next_st\(0)))) # (\U|statemachine|next_st\(2) & (!\U|statemachine|next_st\(1) 
-- & ((!\U|statemachine|next_st\(0)) # (!\U|instruct|out\(11))))))) ) ) # ( \U|statemachine|next_st\(3) & ( (!\U|statemachine|next_st\(2) & (\KEY[1]~input_o\ & (!\U|instruct|out\(12) & (!\U|instruct|out\(11) & !\U|statemachine|next_st\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001001100010010001000000000000000100010001000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_next_st\(2),
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \U|instruct|ALT_INV_out\(12),
	datad => \U|instruct|ALT_INV_out\(11),
	datae => \U|statemachine|ALT_INV_next_st\(3),
	dataf => \U|statemachine|ALT_INV_next_st\(1),
	datag => \U|statemachine|ALT_INV_next_st\(0),
	combout => \U|statemachine|WideOr15~0_combout\);

-- Location: FF_X85_Y5_N56
\U|statemachine|vsel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|statemachine|WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|statemachine|vsel\(0));

-- Location: FF_X88_Y5_N2
\U|instruct|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(2),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruct|out\(2));

-- Location: MLABCELL_X87_Y5_N57
\U|statemachine|always0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|always0~5_combout\ = ( !\U|statemachine|next_st\(3) & ( \KEY[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	dataf => \U|statemachine|ALT_INV_next_st\(3),
	combout => \U|statemachine|always0~5_combout\);

-- Location: LABCELL_X85_Y5_N30
\U|statemachine|WideOr13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideOr13~combout\ = ( \U|statemachine|next_st\(1) & ( (!\U|statemachine|next_st\(2) & \U|statemachine|always0~5_combout\) ) ) # ( !\U|statemachine|next_st\(1) & ( (\U|statemachine|always0~5_combout\ & (!\U|statemachine|next_st\(0) $ 
-- (!\U|statemachine|next_st\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|statemachine|ALT_INV_next_st\(0),
	datac => \U|statemachine|ALT_INV_next_st\(2),
	datad => \U|statemachine|ALT_INV_always0~5_combout\,
	dataf => \U|statemachine|ALT_INV_next_st\(1),
	combout => \U|statemachine|WideOr13~combout\);

-- Location: FF_X85_Y5_N32
\U|statemachine|vsel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|statemachine|WideOr13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|statemachine|vsel\(1));

-- Location: FF_X87_Y8_N41
\U|instruct|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(3),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruct|out\(3));

-- Location: FF_X88_Y5_N32
\U|instruct|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(6),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruct|out\(6));

-- Location: FF_X88_Y5_N47
\U|instruct|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(7),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruct|out\(7));

-- Location: FF_X88_Y5_N50
\U|instruct|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(9),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruct|out\(9));

-- Location: MLABCELL_X87_Y5_N36
\U|statemachine|WideOr11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideOr11~0_combout\ = ( \U|statemachine|WideNor5~0_combout\ & ( \U|statemachine|WideNor6~0_combout\ ) ) # ( !\U|statemachine|WideNor5~0_combout\ & ( \U|statemachine|WideNor6~0_combout\ ) ) # ( \U|statemachine|WideNor5~0_combout\ & ( 
-- !\U|statemachine|WideNor6~0_combout\ & ( (!\U|instruct|out\(12)) # ((\U|statemachine|always0~5_combout\ & (\U|statemachine|always0~3_combout\ & !\U|statemachine|next_st\(0)))) ) ) ) # ( !\U|statemachine|WideNor5~0_combout\ & ( 
-- !\U|statemachine|WideNor6~0_combout\ & ( (\U|statemachine|always0~5_combout\ & (\U|statemachine|always0~3_combout\ & !\U|statemachine|next_st\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000110011011100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_always0~5_combout\,
	datab => \U|instruct|ALT_INV_out\(12),
	datac => \U|statemachine|ALT_INV_always0~3_combout\,
	datad => \U|statemachine|ALT_INV_next_st\(0),
	datae => \U|statemachine|ALT_INV_WideNor5~0_combout\,
	dataf => \U|statemachine|ALT_INV_WideNor6~0_combout\,
	combout => \U|statemachine|WideOr11~0_combout\);

-- Location: FF_X87_Y5_N38
\U|statemachine|nsel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|statemachine|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|statemachine|nsel\(0));

-- Location: LABCELL_X85_Y5_N27
\U|statemachine|always0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|always0~4_combout\ = ( \U|statemachine|next_st\(0) & ( (!\U|statemachine|next_st\(2) & (!\U|statemachine|next_st\(1) & (\KEY[1]~input_o\ & !\U|statemachine|next_st\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_next_st\(2),
	datab => \U|statemachine|ALT_INV_next_st\(1),
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \U|statemachine|ALT_INV_next_st\(3),
	dataf => \U|statemachine|ALT_INV_next_st\(0),
	combout => \U|statemachine|always0~4_combout\);

-- Location: MLABCELL_X87_Y5_N12
\U|statemachine|nsel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|nsel~0_combout\ = ( \U|statemachine|always0~4_combout\ ) # ( !\U|statemachine|always0~4_combout\ & ( (\U|statemachine|WideNor5~0_combout\ & \U|instruct|out\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|statemachine|ALT_INV_WideNor5~0_combout\,
	datad => \U|instruct|ALT_INV_out\(12),
	dataf => \U|statemachine|ALT_INV_always0~4_combout\,
	combout => \U|statemachine|nsel~0_combout\);

-- Location: FF_X87_Y5_N14
\U|statemachine|nsel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|statemachine|nsel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|statemachine|nsel\(2));

-- Location: MLABCELL_X87_Y5_N30
\U|statemachine|nsel~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|nsel~1_combout\ = ( !\U|statemachine|next_st\(3) & ( (!\U|statemachine|next_st\(1) & (!\U|statemachine|next_st\(0) & (\KEY[1]~input_o\ & \U|statemachine|next_st\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_next_st\(1),
	datab => \U|statemachine|ALT_INV_next_st\(0),
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \U|statemachine|ALT_INV_next_st\(2),
	dataf => \U|statemachine|ALT_INV_next_st\(3),
	combout => \U|statemachine|nsel~1_combout\);

-- Location: FF_X87_Y5_N32
\U|statemachine|nsel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|statemachine|nsel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|statemachine|nsel\(1));

-- Location: LABCELL_X88_Y5_N42
\U|dec_i|locsel|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|dec_i|locsel|Mux1~0_combout\ = ( \U|statemachine|nsel\(2) & ( \U|statemachine|nsel\(1) & ( \U|instruct|out\(9) ) ) ) # ( !\U|statemachine|nsel\(2) & ( \U|statemachine|nsel\(1) & ( (!\U|statemachine|nsel\(0) & ((\U|instruct|out\(6)))) # 
-- (\U|statemachine|nsel\(0) & (\U|instruct|out\(9))) ) ) ) # ( \U|statemachine|nsel\(2) & ( !\U|statemachine|nsel\(1) & ( \U|instruct|out\(9) ) ) ) # ( !\U|statemachine|nsel\(2) & ( !\U|statemachine|nsel\(1) & ( (!\U|statemachine|nsel\(0) & 
-- (\U|instruct|out\(9))) # (\U|statemachine|nsel\(0) & ((\U|instruct|out\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010101010100110011010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(9),
	datab => \U|instruct|ALT_INV_out\(6),
	datac => \U|instruct|ALT_INV_out\(1),
	datad => \U|statemachine|ALT_INV_nsel\(0),
	datae => \U|statemachine|ALT_INV_nsel\(2),
	dataf => \U|statemachine|ALT_INV_nsel\(1),
	combout => \U|dec_i|locsel|Mux1~0_combout\);

-- Location: FF_X88_Y4_N56
\U|instruct|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(0),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruct|out\(0));

-- Location: FF_X88_Y5_N44
\U|instruct|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(8),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruct|out\(8));

-- Location: FF_X88_Y4_N41
\U|instruct|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(5),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruct|out\(5));

-- Location: LABCELL_X88_Y5_N51
\U|dec_i|locsel|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|dec_i|locsel|Mux2~0_combout\ = ( \U|statemachine|nsel\(2) & ( \U|statemachine|nsel\(1) & ( \U|instruct|out\(8) ) ) ) # ( !\U|statemachine|nsel\(2) & ( \U|statemachine|nsel\(1) & ( (!\U|statemachine|nsel\(0) & ((\U|instruct|out\(5)))) # 
-- (\U|statemachine|nsel\(0) & (\U|instruct|out\(8))) ) ) ) # ( \U|statemachine|nsel\(2) & ( !\U|statemachine|nsel\(1) & ( \U|instruct|out\(8) ) ) ) # ( !\U|statemachine|nsel\(2) & ( !\U|statemachine|nsel\(1) & ( (!\U|statemachine|nsel\(0) & 
-- ((\U|instruct|out\(8)))) # (\U|statemachine|nsel\(0) & (\U|instruct|out\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001100110011001100000011111100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(0),
	datab => \U|instruct|ALT_INV_out\(8),
	datac => \U|statemachine|ALT_INV_nsel\(0),
	datad => \U|instruct|ALT_INV_out\(5),
	datae => \U|statemachine|ALT_INV_nsel\(2),
	dataf => \U|statemachine|ALT_INV_nsel\(1),
	combout => \U|dec_i|locsel|Mux2~0_combout\);

-- Location: FF_X88_Y5_N5
\U|instruct|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(10),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruct|out\(10));

-- Location: LABCELL_X88_Y5_N54
\U|dec_i|locsel|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|dec_i|locsel|Mux0~0_combout\ = ( \U|statemachine|nsel\(2) & ( \U|statemachine|nsel\(1) & ( \U|instruct|out\(10) ) ) ) # ( !\U|statemachine|nsel\(2) & ( \U|statemachine|nsel\(1) & ( (!\U|statemachine|nsel\(0) & (\U|instruct|out\(7))) # 
-- (\U|statemachine|nsel\(0) & ((\U|instruct|out\(10)))) ) ) ) # ( \U|statemachine|nsel\(2) & ( !\U|statemachine|nsel\(1) & ( \U|instruct|out\(10) ) ) ) # ( !\U|statemachine|nsel\(2) & ( !\U|statemachine|nsel\(1) & ( (!\U|statemachine|nsel\(0) & 
-- ((\U|instruct|out\(10)))) # (\U|statemachine|nsel\(0) & (\U|instruct|out\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110000111100110011000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(2),
	datab => \U|instruct|ALT_INV_out\(7),
	datac => \U|instruct|ALT_INV_out\(10),
	datad => \U|statemachine|ALT_INV_nsel\(0),
	datae => \U|statemachine|ALT_INV_nsel\(2),
	dataf => \U|statemachine|ALT_INV_nsel\(1),
	combout => \U|dec_i|locsel|Mux0~0_combout\);

-- Location: LABCELL_X88_Y7_N54
\rtl~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~30_combout\ = ( \U|instruct|out\(3) & ( \U|DP|B|out\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|B|ALT_INV_out\(14),
	dataf => \U|instruct|ALT_INV_out\(3),
	combout => \rtl~30_combout\);

-- Location: LABCELL_X88_Y7_N21
\rtl~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~31_combout\ = ( \U|instruct|out\(3) & ( !\U|instruct|out\(4) ) ) # ( !\U|instruct|out\(3) & ( \U|instruct|out\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|instruct|ALT_INV_out\(4),
	dataf => \U|instruct|ALT_INV_out\(3),
	combout => \rtl~31_combout\);

-- Location: FF_X85_Y5_N29
\U|statemachine|loada\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|statemachine|always0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|statemachine|loada~q\);

-- Location: FF_X85_Y7_N26
\U|DP|A|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(15),
	sload => VCC,
	ena => \U|statemachine|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|A|out\(15));

-- Location: FF_X87_Y6_N19
\U|DP|A|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(14),
	sload => VCC,
	ena => \U|statemachine|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|A|out\(14));

-- Location: LABCELL_X88_Y7_N9
\rtl~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~66_combout\ = ( \U|instruct|out\(3) & ( \U|DP|B|out\(13) ) ) # ( !\U|instruct|out\(3) & ( \U|DP|B|out\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|B|ALT_INV_out\(13),
	datad => \U|DP|B|ALT_INV_out\(14),
	dataf => \U|instruct|ALT_INV_out\(3),
	combout => \rtl~66_combout\);

-- Location: LABCELL_X88_Y7_N24
\rtl~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~65_combout\ = (!\U|instruct|out\(3) & ((\U|DP|B|out\(13)))) # (\U|instruct|out\(3) & (\U|DP|B|out\(12)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(3),
	datab => \U|DP|B|ALT_INV_out\(12),
	datac => \U|DP|B|ALT_INV_out\(13),
	combout => \rtl~65_combout\);

-- Location: FF_X85_Y7_N19
\U|DP|A|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(13),
	sload => VCC,
	ena => \U|statemachine|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|A|out\(13));

-- Location: FF_X88_Y7_N23
\U|DP|A|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(12),
	sload => VCC,
	ena => \U|statemachine|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|A|out\(12));

-- Location: LABCELL_X88_Y7_N27
\rtl~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~64_combout\ = ( \U|instruct|out\(3) & ( \U|DP|B|out\(11) ) ) # ( !\U|instruct|out\(3) & ( \U|DP|B|out\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|B|ALT_INV_out\(12),
	datac => \U|DP|B|ALT_INV_out\(11),
	dataf => \U|instruct|ALT_INV_out\(3),
	combout => \rtl~64_combout\);

-- Location: FF_X88_Y7_N5
\U|DP|A|out[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(11),
	sload => VCC,
	ena => \U|statemachine|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|A|out[11]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y7_N12
\rtl~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~63_combout\ = ( \U|instruct|out\(3) & ( \U|DP|B|out\(10) ) ) # ( !\U|instruct|out\(3) & ( \U|DP|B|out\(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|B|ALT_INV_out\(10),
	datad => \U|DP|B|ALT_INV_out\(11),
	dataf => \U|instruct|ALT_INV_out\(3),
	combout => \rtl~63_combout\);

-- Location: FF_X85_Y5_N44
\U|statemachine|loadb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|statemachine|WideOr7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|statemachine|loadb~q\);

-- Location: FF_X87_Y7_N55
\U|DP|B|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(9),
	sload => VCC,
	ena => \U|statemachine|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|B|out\(9));

-- Location: LABCELL_X88_Y7_N15
\rtl~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~62_combout\ = ( \U|instruct|out\(3) & ( \U|DP|B|out\(9) ) ) # ( !\U|instruct|out\(3) & ( \U|DP|B|out\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|B|ALT_INV_out\(10),
	datac => \U|DP|B|ALT_INV_out\(9),
	dataf => \U|instruct|ALT_INV_out\(3),
	combout => \rtl~62_combout\);

-- Location: FF_X88_Y7_N20
\U|DP|A|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|outp|b\(10),
	ena => \U|statemachine|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|A|out\(10));

-- Location: MLABCELL_X87_Y7_N27
\rtl~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~61_combout\ = ( \U|instruct|out\(3) & ( \U|DP|B|out\(8) ) ) # ( !\U|instruct|out\(3) & ( \U|DP|B|out\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|B|ALT_INV_out\(9),
	datad => \U|DP|B|ALT_INV_out\(8),
	dataf => \U|instruct|ALT_INV_out\(3),
	combout => \rtl~61_combout\);

-- Location: FF_X87_Y7_N37
\U|DP|A|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(9),
	sload => VCC,
	ena => \U|statemachine|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|A|out\(9));

-- Location: MLABCELL_X87_Y7_N15
\rtl~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~60_combout\ = ( \U|instruct|out\(3) & ( \U|DP|B|out\(7) ) ) # ( !\U|instruct|out\(3) & ( \U|DP|B|out\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|B|ALT_INV_out\(8),
	datad => \U|DP|B|ALT_INV_out\(7),
	dataf => \U|instruct|ALT_INV_out\(3),
	combout => \rtl~60_combout\);

-- Location: FF_X87_Y7_N7
\U|DP|A|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(8),
	sload => VCC,
	ena => \U|statemachine|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|A|out\(8));

-- Location: MLABCELL_X87_Y7_N30
\rtl~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~69_combout\ = ( \U|DP|B|out\(6) & ( (\U|instruct|out\(3)) # (\U|DP|B|out\(7)) ) ) # ( !\U|DP|B|out\(6) & ( (\U|DP|B|out\(7) & !\U|instruct|out\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|B|ALT_INV_out\(7),
	datad => \U|instruct|ALT_INV_out\(3),
	dataf => \U|DP|B|ALT_INV_out\(6),
	combout => \rtl~69_combout\);

-- Location: FF_X87_Y7_N49
\U|DP|A|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(7),
	sload => VCC,
	ena => \U|statemachine|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|A|out\(7));

-- Location: FF_X87_Y6_N16
\U|DP|A|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(6),
	sload => VCC,
	ena => \U|statemachine|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|A|out\(6));

-- Location: MLABCELL_X87_Y8_N18
\rtl~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~68_combout\ = ( \U|instruct|out\(3) & ( \U|DP|B|out\(5) ) ) # ( !\U|instruct|out\(3) & ( \U|DP|B|out\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|B|ALT_INV_out\(5),
	datad => \U|DP|B|ALT_INV_out\(6),
	dataf => \U|instruct|ALT_INV_out\(3),
	combout => \rtl~68_combout\);

-- Location: MLABCELL_X87_Y8_N57
\rtl~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~57_combout\ = ( \U|DP|B|out\(4) & ( (\U|DP|B|out\(5)) # (\U|instruct|out\(3)) ) ) # ( !\U|DP|B|out\(4) & ( (!\U|instruct|out\(3) & \U|DP|B|out\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|instruct|ALT_INV_out\(3),
	datac => \U|DP|B|ALT_INV_out\(5),
	dataf => \U|DP|B|ALT_INV_out\(4),
	combout => \rtl~57_combout\);

-- Location: FF_X88_Y6_N38
\U|DP|A|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(5),
	sload => VCC,
	ena => \U|statemachine|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|A|out\(5));

-- Location: MLABCELL_X87_Y8_N30
\rtl~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~56_combout\ = (!\U|instruct|out\(3) & (\U|DP|B|out\(4))) # (\U|instruct|out\(3) & ((\U|DP|B|out\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|instruct|ALT_INV_out\(3),
	datac => \U|DP|B|ALT_INV_out\(4),
	datad => \U|DP|B|ALT_INV_out\(3),
	combout => \rtl~56_combout\);

-- Location: FF_X87_Y6_N56
\U|DP|A|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(4),
	sload => VCC,
	ena => \U|statemachine|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|A|out\(4));

-- Location: FF_X87_Y6_N26
\U|DP|A|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(3),
	sload => VCC,
	ena => \U|statemachine|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|A|out\(3));

-- Location: FF_X87_Y8_N11
\U|DP|B|out[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(2),
	sload => VCC,
	ena => \U|statemachine|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|B|out[2]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y8_N54
\rtl~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~55_combout\ = ( \U|DP|B|out[2]~DUPLICATE_q\ & ( (\U|DP|B|out\(3)) # (\U|instruct|out\(3)) ) ) # ( !\U|DP|B|out[2]~DUPLICATE_q\ & ( (!\U|instruct|out\(3) & \U|DP|B|out\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|instruct|ALT_INV_out\(3),
	datac => \U|DP|B|ALT_INV_out\(3),
	dataf => \U|DP|B|ALT_INV_out[2]~DUPLICATE_q\,
	combout => \rtl~55_combout\);

-- Location: FF_X87_Y8_N44
\U|DP|B|out[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(1),
	sload => VCC,
	ena => \U|statemachine|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|B|out[1]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y8_N33
\rtl~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~54_combout\ = ( \U|DP|B|out[2]~DUPLICATE_q\ & ( (!\U|instruct|out\(3)) # (\U|DP|B|out[1]~DUPLICATE_q\) ) ) # ( !\U|DP|B|out[2]~DUPLICATE_q\ & ( (\U|instruct|out\(3) & \U|DP|B|out[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|instruct|ALT_INV_out\(3),
	datac => \U|DP|B|ALT_INV_out[1]~DUPLICATE_q\,
	dataf => \U|DP|B|ALT_INV_out[2]~DUPLICATE_q\,
	combout => \rtl~54_combout\);

-- Location: FF_X88_Y6_N19
\U|DP|A|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(2),
	sload => VCC,
	ena => \U|statemachine|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|A|out\(2));

-- Location: LABCELL_X88_Y4_N3
\U|DP|U0|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U0|Mux15~0_combout\ = ( \IN|REG|Q\(0) & ( (!\U|statemachine|vsel\(0) & (((\U|statemachine|vsel\(1))))) # (\U|statemachine|vsel\(0) & ((!\U|statemachine|vsel\(1) & (\U|instruct|out\(0))) # (\U|statemachine|vsel\(1) & ((\U|DP|C|out\(0)))))) ) ) # ( 
-- !\IN|REG|Q\(0) & ( (\U|statemachine|vsel\(0) & ((!\U|statemachine|vsel\(1) & (\U|instruct|out\(0))) # (\U|statemachine|vsel\(1) & ((\U|DP|C|out\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100010000001100010001110011110001000111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(0),
	datab => \U|statemachine|ALT_INV_vsel\(0),
	datac => \U|DP|C|ALT_INV_out\(0),
	datad => \U|statemachine|ALT_INV_vsel\(1),
	dataf => \IN|REG|ALT_INV_Q\(0),
	combout => \U|DP|U0|Mux15~0_combout\);

-- Location: LABCELL_X88_Y5_N33
\U|statemachine|write~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|write~0_combout\ = ( \U|instruct|out\(12) & ( \U|instruct|out\(11) & ( (\U|statemachine|always0~5_combout\ & (!\U|statemachine|next_st\(1) & (\U|statemachine|next_st\(2) & !\U|statemachine|next_st\(0)))) ) ) ) # ( \U|instruct|out\(12) & ( 
-- !\U|instruct|out\(11) & ( (\U|statemachine|always0~5_combout\ & (!\U|statemachine|next_st\(1) & \U|statemachine|next_st\(2))) ) ) ) # ( !\U|instruct|out\(12) & ( !\U|instruct|out\(11) & ( (\U|statemachine|always0~5_combout\ & (!\U|statemachine|next_st\(1) 
-- & (\U|statemachine|next_st\(2) & !\U|statemachine|next_st\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000010000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_always0~5_combout\,
	datab => \U|statemachine|ALT_INV_next_st\(1),
	datac => \U|statemachine|ALT_INV_next_st\(2),
	datad => \U|statemachine|ALT_INV_next_st\(0),
	datae => \U|instruct|ALT_INV_out\(12),
	dataf => \U|instruct|ALT_INV_out\(11),
	combout => \U|statemachine|write~0_combout\);

-- Location: FF_X87_Y5_N5
\U|statemachine|write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|statemachine|write~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|statemachine|write~q\);

-- Location: MLABCELL_X87_Y5_N45
\U|DP|REGFILE|towrite[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|towrite\(5) = ( !\U|dec_i|locsel|Mux1~0_combout\ & ( \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|statemachine|write~q\ & \U|dec_i|locsel|Mux0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_write~q\,
	datac => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datae => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|towrite\(5));

-- Location: FF_X88_Y6_N50
\U|DP|REGFILE|Rfive|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux15~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfive|out\(0));

-- Location: MLABCELL_X87_Y5_N27
\U|DP|REGFILE|towrite[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|towrite\(7) = ( \U|statemachine|write~q\ & ( \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|dec_i|locsel|Mux0~0_combout\ & \U|dec_i|locsel|Mux1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datac => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datae => \U|statemachine|ALT_INV_write~q\,
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|towrite\(7));

-- Location: FF_X88_Y5_N7
\U|DP|REGFILE|Rseven|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux15~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rseven|out\(0));

-- Location: LABCELL_X88_Y6_N21
\U|DP|REGFILE|outp|b[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[0]~5_combout\ = ( \U|dec_i|locsel|Mux0~0_combout\ & ( \U|dec_i|locsel|Mux2~0_combout\ & ( (!\U|dec_i|locsel|Mux1~0_combout\ & (\U|DP|REGFILE|Rfive|out\(0))) # (\U|dec_i|locsel|Mux1~0_combout\ & ((\U|DP|REGFILE|Rseven|out\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rfive|ALT_INV_out\(0),
	datac => \U|DP|REGFILE|Rseven|ALT_INV_out\(0),
	datad => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datae => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|outp|b[0]~5_combout\);

-- Location: MLABCELL_X87_Y4_N33
\U|DP|REGFILE|towrite[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|towrite\(3) = ( \U|dec_i|locsel|Mux1~0_combout\ & ( \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|statemachine|write~q\ & !\U|dec_i|locsel|Mux0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_write~q\,
	datad => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datae => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|towrite\(3));

-- Location: FF_X88_Y4_N7
\U|DP|REGFILE|Rthree|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux15~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rthree|out\(0));

-- Location: LABCELL_X88_Y5_N18
\U|DP|REGFILE|towrite[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|towrite\(0) = ( !\U|dec_i|locsel|Mux2~0_combout\ & ( (!\U|dec_i|locsel|Mux0~0_combout\ & (!\U|dec_i|locsel|Mux1~0_combout\ & \U|statemachine|write~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datab => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datac => \U|statemachine|ALT_INV_write~q\,
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|towrite\(0));

-- Location: FF_X88_Y6_N29
\U|DP|REGFILE|Rzero|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux15~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rzero|out\(0));

-- Location: MLABCELL_X87_Y3_N36
\U|DP|REGFILE|towrite[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|towrite\(1) = ( \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|statemachine|write~q\ & (!\U|dec_i|locsel|Mux0~0_combout\ & !\U|dec_i|locsel|Mux1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|statemachine|ALT_INV_write~q\,
	datac => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datad => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|towrite\(1));

-- Location: FF_X85_Y4_N34
\U|DP|REGFILE|Rone|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux15~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rone|out\(0));

-- Location: LABCELL_X88_Y3_N3
\U|DP|REGFILE|Rfour|out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rfour|out[0]~feeder_combout\ = ( \U|DP|U0|Mux15~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|U0|ALT_INV_Mux15~0_combout\,
	combout => \U|DP|REGFILE|Rfour|out[0]~feeder_combout\);

-- Location: MLABCELL_X87_Y5_N3
\U|DP|REGFILE|towrite[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|towrite\(4) = ( !\U|dec_i|locsel|Mux2~0_combout\ & ( (!\U|dec_i|locsel|Mux1~0_combout\ & (\U|dec_i|locsel|Mux0~0_combout\ & \U|statemachine|write~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datac => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datad => \U|statemachine|ALT_INV_write~q\,
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|towrite\(4));

-- Location: FF_X88_Y3_N4
\U|DP|REGFILE|Rfour|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rfour|out[0]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfour|out\(0));

-- Location: LABCELL_X88_Y6_N39
\U|DP|REGFILE|outp|b[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[0]~3_combout\ = ( !\U|dec_i|locsel|Mux0~0_combout\ & ( \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|DP|REGFILE|Rone|out\(0) & !\U|dec_i|locsel|Mux1~0_combout\) ) ) ) # ( \U|dec_i|locsel|Mux0~0_combout\ & ( !\U|dec_i|locsel|Mux2~0_combout\ 
-- & ( (\U|DP|REGFILE|Rfour|out\(0) & !\U|dec_i|locsel|Mux1~0_combout\) ) ) ) # ( !\U|dec_i|locsel|Mux0~0_combout\ & ( !\U|dec_i|locsel|Mux2~0_combout\ & ( (\U|DP|REGFILE|Rzero|out\(0) & !\U|dec_i|locsel|Mux1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110000000000110011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rzero|ALT_INV_out\(0),
	datab => \U|DP|REGFILE|Rone|ALT_INV_out\(0),
	datac => \U|DP|REGFILE|Rfour|ALT_INV_out\(0),
	datad => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datae => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|outp|b[0]~3_combout\);

-- Location: LABCELL_X88_Y5_N36
\U|DP|REGFILE|bot|ShiftLeft0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|bot|ShiftLeft0~0_combout\ = ( \U|dec_i|locsel|Mux2~0_combout\ & ( (!\U|dec_i|locsel|Mux0~0_combout\ & \U|dec_i|locsel|Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datad => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|bot|ShiftLeft0~0_combout\);

-- Location: LABCELL_X88_Y4_N18
\U|DP|REGFILE|towrite[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|towrite\(6) = ( \U|dec_i|locsel|Mux0~0_combout\ & ( (\U|statemachine|write~q\ & (!\U|dec_i|locsel|Mux2~0_combout\ & \U|dec_i|locsel|Mux1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|statemachine|ALT_INV_write~q\,
	datac => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datad => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	dataf => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|towrite\(6));

-- Location: FF_X88_Y4_N16
\U|DP|REGFILE|Rsix|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux15~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rsix|out\(0));

-- Location: MLABCELL_X87_Y4_N6
\U|DP|REGFILE|towrite[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|towrite\(2) = ( !\U|dec_i|locsel|Mux2~0_combout\ & ( (\U|statemachine|write~q\ & (!\U|dec_i|locsel|Mux0~0_combout\ & \U|dec_i|locsel|Mux1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_write~q\,
	datac => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datad => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|towrite\(2));

-- Location: FF_X88_Y3_N14
\U|DP|REGFILE|Rtwo|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux15~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rtwo|out\(0));

-- Location: LABCELL_X88_Y3_N12
\U|DP|REGFILE|outp|b[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[0]~4_combout\ = ( \U|DP|REGFILE|Rtwo|out\(0) & ( \U|dec_i|locsel|Mux0~0_combout\ & ( (\U|DP|REGFILE|Rsix|out\(0) & (!\U|dec_i|locsel|Mux2~0_combout\ & \U|dec_i|locsel|Mux1~0_combout\)) ) ) ) # ( !\U|DP|REGFILE|Rtwo|out\(0) & ( 
-- \U|dec_i|locsel|Mux0~0_combout\ & ( (\U|DP|REGFILE|Rsix|out\(0) & (!\U|dec_i|locsel|Mux2~0_combout\ & \U|dec_i|locsel|Mux1~0_combout\)) ) ) ) # ( \U|DP|REGFILE|Rtwo|out\(0) & ( !\U|dec_i|locsel|Mux0~0_combout\ & ( (!\U|dec_i|locsel|Mux2~0_combout\ & 
-- \U|dec_i|locsel|Mux1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Rsix|ALT_INV_out\(0),
	datac => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datad => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datae => \U|DP|REGFILE|Rtwo|ALT_INV_out\(0),
	dataf => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|outp|b[0]~4_combout\);

-- Location: LABCELL_X88_Y6_N30
\U|DP|REGFILE|outp|b[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b\(0) = ( \U|DP|REGFILE|bot|ShiftLeft0~0_combout\ & ( \U|DP|REGFILE|outp|b[0]~4_combout\ ) ) # ( !\U|DP|REGFILE|bot|ShiftLeft0~0_combout\ & ( \U|DP|REGFILE|outp|b[0]~4_combout\ ) ) # ( \U|DP|REGFILE|bot|ShiftLeft0~0_combout\ & ( 
-- !\U|DP|REGFILE|outp|b[0]~4_combout\ & ( ((\U|DP|REGFILE|outp|b[0]~3_combout\) # (\U|DP|REGFILE|Rthree|out\(0))) # (\U|DP|REGFILE|outp|b[0]~5_combout\) ) ) ) # ( !\U|DP|REGFILE|bot|ShiftLeft0~0_combout\ & ( !\U|DP|REGFILE|outp|b[0]~4_combout\ & ( 
-- (\U|DP|REGFILE|outp|b[0]~3_combout\) # (\U|DP|REGFILE|outp|b[0]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111011101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|outp|ALT_INV_b[0]~5_combout\,
	datab => \U|DP|REGFILE|Rthree|ALT_INV_out\(0),
	datad => \U|DP|REGFILE|outp|ALT_INV_b[0]~3_combout\,
	datae => \U|DP|REGFILE|bot|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \U|DP|REGFILE|outp|ALT_INV_b[0]~4_combout\,
	combout => \U|DP|REGFILE|outp|b\(0));

-- Location: FF_X87_Y8_N2
\U|DP|B|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(0),
	sload => VCC,
	ena => \U|statemachine|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|B|out\(0));

-- Location: MLABCELL_X87_Y8_N21
\rtl~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~67_combout\ = ( \U|DP|B|out[1]~DUPLICATE_q\ & ( (!\U|instruct|out\(3)) # (\U|DP|B|out\(0)) ) ) # ( !\U|DP|B|out[1]~DUPLICATE_q\ & ( (\U|instruct|out\(3) & \U|DP|B|out\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|instruct|ALT_INV_out\(3),
	datad => \U|DP|B|ALT_INV_out\(0),
	dataf => \U|DP|B|ALT_INV_out[1]~DUPLICATE_q\,
	combout => \rtl~67_combout\);

-- Location: FF_X88_Y6_N1
\U|DP|A|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(1),
	sload => VCC,
	ena => \U|statemachine|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|A|out\(1));

-- Location: MLABCELL_X87_Y8_N12
\rtl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = (\U|DP|B|out\(0) & !\U|instruct|out\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|B|ALT_INV_out\(0),
	datad => \U|instruct|ALT_INV_out\(3),
	combout => \rtl~0_combout\);

-- Location: FF_X88_Y6_N13
\U|DP|A|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(0),
	sload => VCC,
	ena => \U|statemachine|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|A|out\(0));

-- Location: LABCELL_X88_Y8_N30
\U|DP|U2|Add0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Add0~66_cout\ = CARRY(( \U|instruct|out\(11) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|instruct|ALT_INV_out\(11),
	cin => GND,
	cout => \U|DP|U2|Add0~66_cout\);

-- Location: LABCELL_X88_Y8_N33
\U|DP|U2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Add0~1_sumout\ = SUM(( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~0_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(1))))) ) + ( \U|DP|A|out\(0) ) + ( \U|DP|U2|Add0~66_cout\ ))
-- \U|DP|U2|Add0~2\ = CARRY(( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~0_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(1))))) ) + ( \U|DP|A|out\(0) ) + ( \U|DP|U2|Add0~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011011010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|instruct|ALT_INV_out\(11),
	datac => \U|DP|B|ALT_INV_out\(1),
	datad => \ALT_INV_rtl~0_combout\,
	dataf => \U|DP|A|ALT_INV_out\(0),
	cin => \U|DP|U2|Add0~66_cout\,
	sumout => \U|DP|U2|Add0~1_sumout\,
	cout => \U|DP|U2|Add0~2\);

-- Location: LABCELL_X88_Y8_N36
\U|DP|U2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Add0~5_sumout\ = SUM(( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~67_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(2))))) ) + ( \U|DP|A|out\(1) ) + ( \U|DP|U2|Add0~2\ ))
-- \U|DP|U2|Add0~6\ = CARRY(( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~67_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(2))))) ) + ( \U|DP|A|out\(1) ) + ( \U|DP|U2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011011010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|instruct|ALT_INV_out\(11),
	datac => \U|DP|B|ALT_INV_out\(2),
	datad => \ALT_INV_rtl~67_combout\,
	dataf => \U|DP|A|ALT_INV_out\(1),
	cin => \U|DP|U2|Add0~2\,
	sumout => \U|DP|U2|Add0~5_sumout\,
	cout => \U|DP|U2|Add0~6\);

-- Location: LABCELL_X88_Y8_N39
\U|DP|U2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Add0~9_sumout\ = SUM(( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~54_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(3))))) ) + ( \U|DP|A|out\(2) ) + ( \U|DP|U2|Add0~6\ ))
-- \U|DP|U2|Add0~10\ = CARRY(( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~54_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(3))))) ) + ( \U|DP|A|out\(2) ) + ( \U|DP|U2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011011010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|instruct|ALT_INV_out\(11),
	datac => \U|DP|B|ALT_INV_out\(3),
	datad => \ALT_INV_rtl~54_combout\,
	dataf => \U|DP|A|ALT_INV_out\(2),
	cin => \U|DP|U2|Add0~6\,
	sumout => \U|DP|U2|Add0~9_sumout\,
	cout => \U|DP|U2|Add0~10\);

-- Location: LABCELL_X88_Y8_N42
\U|DP|U2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Add0~13_sumout\ = SUM(( \U|DP|A|out\(3) ) + ( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~55_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(4))))) ) + ( \U|DP|U2|Add0~10\ ))
-- \U|DP|U2|Add0~14\ = CARRY(( \U|DP|A|out\(3) ) + ( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~55_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(4))))) ) + ( \U|DP|U2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010010110001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|instruct|ALT_INV_out\(11),
	datac => \U|DP|B|ALT_INV_out\(4),
	datad => \U|DP|A|ALT_INV_out\(3),
	dataf => \ALT_INV_rtl~55_combout\,
	cin => \U|DP|U2|Add0~10\,
	sumout => \U|DP|U2|Add0~13_sumout\,
	cout => \U|DP|U2|Add0~14\);

-- Location: LABCELL_X88_Y8_N45
\U|DP|U2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Add0~17_sumout\ = SUM(( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~56_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(5))))) ) + ( \U|DP|A|out\(4) ) + ( \U|DP|U2|Add0~14\ ))
-- \U|DP|U2|Add0~18\ = CARRY(( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~56_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(5))))) ) + ( \U|DP|A|out\(4) ) + ( \U|DP|U2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011011010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|instruct|ALT_INV_out\(11),
	datac => \U|DP|B|ALT_INV_out\(5),
	datad => \ALT_INV_rtl~56_combout\,
	dataf => \U|DP|A|ALT_INV_out\(4),
	cin => \U|DP|U2|Add0~14\,
	sumout => \U|DP|U2|Add0~17_sumout\,
	cout => \U|DP|U2|Add0~18\);

-- Location: LABCELL_X88_Y8_N48
\U|DP|U2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Add0~21_sumout\ = SUM(( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~57_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(6))))) ) + ( \U|DP|A|out\(5) ) + ( \U|DP|U2|Add0~18\ ))
-- \U|DP|U2|Add0~22\ = CARRY(( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~57_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(6))))) ) + ( \U|DP|A|out\(5) ) + ( \U|DP|U2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011011010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|instruct|ALT_INV_out\(11),
	datac => \U|DP|B|ALT_INV_out\(6),
	datad => \ALT_INV_rtl~57_combout\,
	dataf => \U|DP|A|ALT_INV_out\(5),
	cin => \U|DP|U2|Add0~18\,
	sumout => \U|DP|U2|Add0~21_sumout\,
	cout => \U|DP|U2|Add0~22\);

-- Location: LABCELL_X88_Y8_N51
\U|DP|U2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Add0~25_sumout\ = SUM(( \U|DP|A|out\(6) ) + ( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~68_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(7))))) ) + ( \U|DP|U2|Add0~22\ ))
-- \U|DP|U2|Add0~26\ = CARRY(( \U|DP|A|out\(6) ) + ( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~68_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(7))))) ) + ( \U|DP|U2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010010110001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|instruct|ALT_INV_out\(11),
	datac => \U|DP|B|ALT_INV_out\(7),
	datad => \U|DP|A|ALT_INV_out\(6),
	dataf => \ALT_INV_rtl~68_combout\,
	cin => \U|DP|U2|Add0~22\,
	sumout => \U|DP|U2|Add0~25_sumout\,
	cout => \U|DP|U2|Add0~26\);

-- Location: LABCELL_X88_Y8_N54
\U|DP|U2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Add0~29_sumout\ = SUM(( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~69_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(8))))) ) + ( \U|DP|A|out\(7) ) + ( \U|DP|U2|Add0~26\ ))
-- \U|DP|U2|Add0~30\ = CARRY(( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~69_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(8))))) ) + ( \U|DP|A|out\(7) ) + ( \U|DP|U2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011011010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|instruct|ALT_INV_out\(11),
	datac => \U|DP|B|ALT_INV_out\(8),
	datad => \ALT_INV_rtl~69_combout\,
	dataf => \U|DP|A|ALT_INV_out\(7),
	cin => \U|DP|U2|Add0~26\,
	sumout => \U|DP|U2|Add0~29_sumout\,
	cout => \U|DP|U2|Add0~30\);

-- Location: LABCELL_X88_Y8_N57
\U|DP|U2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Add0~33_sumout\ = SUM(( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~60_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out[9]~DUPLICATE_q\)))) ) + ( \U|DP|A|out\(8) ) + ( \U|DP|U2|Add0~30\ ))
-- \U|DP|U2|Add0~34\ = CARRY(( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~60_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out[9]~DUPLICATE_q\)))) ) + ( \U|DP|A|out\(8) ) + ( \U|DP|U2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011011010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|instruct|ALT_INV_out\(11),
	datac => \U|DP|B|ALT_INV_out[9]~DUPLICATE_q\,
	datad => \ALT_INV_rtl~60_combout\,
	dataf => \U|DP|A|ALT_INV_out\(8),
	cin => \U|DP|U2|Add0~30\,
	sumout => \U|DP|U2|Add0~33_sumout\,
	cout => \U|DP|U2|Add0~34\);

-- Location: LABCELL_X88_Y7_N30
\U|DP|U2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Add0~37_sumout\ = SUM(( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~61_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(10))))) ) + ( \U|DP|A|out\(9) ) + ( \U|DP|U2|Add0~34\ ))
-- \U|DP|U2|Add0~38\ = CARRY(( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~61_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(10))))) ) + ( \U|DP|A|out\(9) ) + ( \U|DP|U2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011011010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|instruct|ALT_INV_out\(11),
	datac => \U|DP|B|ALT_INV_out\(10),
	datad => \ALT_INV_rtl~61_combout\,
	dataf => \U|DP|A|ALT_INV_out\(9),
	cin => \U|DP|U2|Add0~34\,
	sumout => \U|DP|U2|Add0~37_sumout\,
	cout => \U|DP|U2|Add0~38\);

-- Location: LABCELL_X88_Y7_N33
\U|DP|U2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Add0~41_sumout\ = SUM(( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~62_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(11))))) ) + ( \U|DP|A|out\(10) ) + ( \U|DP|U2|Add0~38\ ))
-- \U|DP|U2|Add0~42\ = CARRY(( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~62_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(11))))) ) + ( \U|DP|A|out\(10) ) + ( \U|DP|U2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011011010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|instruct|ALT_INV_out\(11),
	datac => \U|DP|B|ALT_INV_out\(11),
	datad => \ALT_INV_rtl~62_combout\,
	dataf => \U|DP|A|ALT_INV_out\(10),
	cin => \U|DP|U2|Add0~38\,
	sumout => \U|DP|U2|Add0~41_sumout\,
	cout => \U|DP|U2|Add0~42\);

-- Location: LABCELL_X88_Y7_N36
\U|DP|U2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Add0~45_sumout\ = SUM(( \U|DP|A|out[11]~DUPLICATE_q\ ) + ( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~63_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(12))))) ) + ( \U|DP|U2|Add0~42\ ))
-- \U|DP|U2|Add0~46\ = CARRY(( \U|DP|A|out[11]~DUPLICATE_q\ ) + ( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~63_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(12))))) ) + ( \U|DP|U2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010010110001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|instruct|ALT_INV_out\(11),
	datac => \U|DP|B|ALT_INV_out\(12),
	datad => \U|DP|A|ALT_INV_out[11]~DUPLICATE_q\,
	dataf => \ALT_INV_rtl~63_combout\,
	cin => \U|DP|U2|Add0~42\,
	sumout => \U|DP|U2|Add0~45_sumout\,
	cout => \U|DP|U2|Add0~46\);

-- Location: LABCELL_X88_Y7_N39
\U|DP|U2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Add0~49_sumout\ = SUM(( \U|DP|A|out\(12) ) + ( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~64_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(13))))) ) + ( \U|DP|U2|Add0~46\ ))
-- \U|DP|U2|Add0~50\ = CARRY(( \U|DP|A|out\(12) ) + ( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~64_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(13))))) ) + ( \U|DP|U2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010010110001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|instruct|ALT_INV_out\(11),
	datac => \U|DP|B|ALT_INV_out\(13),
	datad => \U|DP|A|ALT_INV_out\(12),
	dataf => \ALT_INV_rtl~64_combout\,
	cin => \U|DP|U2|Add0~46\,
	sumout => \U|DP|U2|Add0~49_sumout\,
	cout => \U|DP|U2|Add0~50\);

-- Location: LABCELL_X88_Y7_N42
\U|DP|U2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Add0~53_sumout\ = SUM(( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~65_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(14))))) ) + ( \U|DP|A|out\(13) ) + ( \U|DP|U2|Add0~50\ ))
-- \U|DP|U2|Add0~54\ = CARRY(( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~65_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(14))))) ) + ( \U|DP|A|out\(13) ) + ( \U|DP|U2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011011010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|instruct|ALT_INV_out\(11),
	datac => \U|DP|B|ALT_INV_out\(14),
	datad => \ALT_INV_rtl~65_combout\,
	dataf => \U|DP|A|ALT_INV_out\(13),
	cin => \U|DP|U2|Add0~50\,
	sumout => \U|DP|U2|Add0~53_sumout\,
	cout => \U|DP|U2|Add0~54\);

-- Location: LABCELL_X88_Y7_N45
\U|DP|U2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Add0~57_sumout\ = SUM(( \U|DP|A|out\(14) ) + ( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~66_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(15))))) ) + ( \U|DP|U2|Add0~54\ ))
-- \U|DP|U2|Add0~58\ = CARRY(( \U|DP|A|out\(14) ) + ( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~66_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(15))))) ) + ( \U|DP|U2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010010110001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|instruct|ALT_INV_out\(11),
	datac => \U|DP|B|ALT_INV_out\(15),
	datad => \U|DP|A|ALT_INV_out\(14),
	dataf => \ALT_INV_rtl~66_combout\,
	cin => \U|DP|U2|Add0~54\,
	sumout => \U|DP|U2|Add0~57_sumout\,
	cout => \U|DP|U2|Add0~58\);

-- Location: LABCELL_X88_Y7_N48
\U|DP|U2|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Add0~61_sumout\ = SUM(( !\U|instruct|out\(11) $ (((!\rtl~31_combout\ & ((!\U|DP|B|out\(15)))) # (\rtl~31_combout\ & (!\rtl~30_combout\)))) ) + ( \U|DP|A|out\(15) ) + ( \U|DP|U2|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011110001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~30_combout\,
	datab => \U|instruct|ALT_INV_out\(11),
	datac => \U|DP|B|ALT_INV_out\(15),
	datad => \ALT_INV_rtl~31_combout\,
	dataf => \U|DP|A|ALT_INV_out\(15),
	cin => \U|DP|U2|Add0~58\,
	sumout => \U|DP|U2|Add0~61_sumout\);

-- Location: LABCELL_X88_Y9_N33
\U|DP|C|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|C|out[15]~feeder_combout\ = ( \U|DP|U2|Add0~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|U2|ALT_INV_Add0~61_sumout\,
	combout => \U|DP|C|out[15]~feeder_combout\);

-- Location: MLABCELL_X87_Y7_N51
\U|DP|U2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Mux0~0_combout\ = ( \U|DP|A|out\(15) & ( \U|instruct|out\(11) & ( (!\U|instruct|out\(3) & ((!\U|DP|B|out\(15)) # ((\U|instruct|out\(4))))) # (\U|instruct|out\(3) & ((!\U|instruct|out\(4) & ((!\U|DP|B|out\(14)))) # (\U|instruct|out\(4) & 
-- (!\U|DP|B|out\(15))))) ) ) ) # ( !\U|DP|A|out\(15) & ( \U|instruct|out\(11) & ( (!\U|instruct|out\(3) & ((!\U|DP|B|out\(15)) # ((\U|instruct|out\(4))))) # (\U|instruct|out\(3) & ((!\U|instruct|out\(4) & ((!\U|DP|B|out\(14)))) # (\U|instruct|out\(4) & 
-- (!\U|DP|B|out\(15))))) ) ) ) # ( \U|DP|A|out\(15) & ( !\U|instruct|out\(11) & ( (!\U|instruct|out\(3) & (\U|DP|B|out\(15) & ((!\U|instruct|out\(4))))) # (\U|instruct|out\(3) & ((!\U|instruct|out\(4) & ((\U|DP|B|out\(14)))) # (\U|instruct|out\(4) & 
-- (\U|DP|B|out\(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001001110001000111011000111011101101100011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(3),
	datab => \U|DP|B|ALT_INV_out\(15),
	datac => \U|DP|B|ALT_INV_out\(14),
	datad => \U|instruct|ALT_INV_out\(4),
	datae => \U|DP|A|ALT_INV_out\(15),
	dataf => \U|instruct|ALT_INV_out\(11),
	combout => \U|DP|U2|Mux0~0_combout\);

-- Location: FF_X85_Y5_N35
\U|statemachine|loadc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|statemachine|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|statemachine|loadc~q\);

-- Location: FF_X88_Y9_N35
\U|DP|C|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|C|out[15]~feeder_combout\,
	asdata => \U|DP|U2|Mux0~0_combout\,
	sload => \U|instruct|out\(12),
	ena => \U|statemachine|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|C|out\(15));

-- Location: MLABCELL_X87_Y9_N9
\rtl~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~78_combout\ = ( \U|DP|C|out\(15) & ( (\U|statemachine|vsel\(0) & ((\U|statemachine|vsel\(1)) # (\U|instruct|out\(7)))) ) ) # ( !\U|DP|C|out\(15) & ( (\U|instruct|out\(7) & (!\U|statemachine|vsel\(1) & \U|statemachine|vsel\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|instruct|ALT_INV_out\(7),
	datac => \U|statemachine|ALT_INV_vsel\(1),
	datad => \U|statemachine|ALT_INV_vsel\(0),
	dataf => \U|DP|C|ALT_INV_out\(15),
	combout => \rtl~78_combout\);

-- Location: FF_X84_Y5_N22
\U|DP|REGFILE|Rthree|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~78_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rthree|out\(15));

-- Location: MLABCELL_X84_Y7_N9
\U|DP|REGFILE|Rseven|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rseven|out[15]~feeder_combout\ = ( \rtl~78_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_rtl~78_combout\,
	combout => \U|DP|REGFILE|Rseven|out[15]~feeder_combout\);

-- Location: FF_X84_Y7_N10
\U|DP|REGFILE|Rseven|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rseven|out[15]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rseven|out\(15));

-- Location: FF_X85_Y7_N59
\U|DP|REGFILE|Rfive|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~78_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfive|out\(15));

-- Location: LABCELL_X85_Y7_N57
\U|DP|REGFILE|outp|b[15]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[15]~47_combout\ = ( \U|dec_i|locsel|Mux0~0_combout\ & ( (\U|dec_i|locsel|Mux2~0_combout\ & ((!\U|dec_i|locsel|Mux1~0_combout\ & ((\U|DP|REGFILE|Rfive|out\(15)))) # (\U|dec_i|locsel|Mux1~0_combout\ & (\U|DP|REGFILE|Rseven|out\(15))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datab => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datac => \U|DP|REGFILE|Rseven|ALT_INV_out\(15),
	datad => \U|DP|REGFILE|Rfive|ALT_INV_out\(15),
	dataf => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|outp|b[15]~47_combout\);

-- Location: FF_X84_Y5_N5
\U|DP|REGFILE|Rone|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~78_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rone|out\(15));

-- Location: LABCELL_X83_Y7_N24
\U|DP|REGFILE|Rfour|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rfour|out[15]~feeder_combout\ = ( \rtl~78_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_rtl~78_combout\,
	combout => \U|DP|REGFILE|Rfour|out[15]~feeder_combout\);

-- Location: FF_X83_Y7_N25
\U|DP|REGFILE|Rfour|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rfour|out[15]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfour|out\(15));

-- Location: FF_X85_Y7_N44
\U|DP|REGFILE|Rzero|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~78_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rzero|out\(15));

-- Location: LABCELL_X85_Y7_N42
\U|DP|REGFILE|outp|b[15]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[15]~45_combout\ = ( \U|DP|REGFILE|Rzero|out\(15) & ( \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|DP|REGFILE|Rone|out\(15) & (!\U|dec_i|locsel|Mux1~0_combout\ & !\U|dec_i|locsel|Mux0~0_combout\)) ) ) ) # ( !\U|DP|REGFILE|Rzero|out\(15) & ( 
-- \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|DP|REGFILE|Rone|out\(15) & (!\U|dec_i|locsel|Mux1~0_combout\ & !\U|dec_i|locsel|Mux0~0_combout\)) ) ) ) # ( \U|DP|REGFILE|Rzero|out\(15) & ( !\U|dec_i|locsel|Mux2~0_combout\ & ( (!\U|dec_i|locsel|Mux1~0_combout\ & 
-- ((!\U|dec_i|locsel|Mux0~0_combout\) # (\U|DP|REGFILE|Rfour|out\(15)))) ) ) ) # ( !\U|DP|REGFILE|Rzero|out\(15) & ( !\U|dec_i|locsel|Mux2~0_combout\ & ( (!\U|dec_i|locsel|Mux1~0_combout\ & (\U|DP|REGFILE|Rfour|out\(15) & \U|dec_i|locsel|Mux0~0_combout\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100110011000000110001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rone|ALT_INV_out\(15),
	datab => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datac => \U|DP|REGFILE|Rfour|ALT_INV_out\(15),
	datad => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datae => \U|DP|REGFILE|Rzero|ALT_INV_out\(15),
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|outp|b[15]~45_combout\);

-- Location: LABCELL_X85_Y6_N18
\U|DP|REGFILE|Rsix|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rsix|out[15]~feeder_combout\ = ( \rtl~78_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_rtl~78_combout\,
	combout => \U|DP|REGFILE|Rsix|out[15]~feeder_combout\);

-- Location: FF_X85_Y6_N20
\U|DP|REGFILE|Rsix|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rsix|out[15]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rsix|out\(15));

-- Location: FF_X85_Y6_N14
\U|DP|REGFILE|Rtwo|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~78_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rtwo|out\(15));

-- Location: LABCELL_X85_Y6_N12
\U|DP|REGFILE|outp|b[15]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[15]~46_combout\ = ( \U|DP|REGFILE|Rtwo|out\(15) & ( \U|dec_i|locsel|Mux0~0_combout\ & ( (\U|DP|REGFILE|Rsix|out\(15) & (!\U|dec_i|locsel|Mux2~0_combout\ & \U|dec_i|locsel|Mux1~0_combout\)) ) ) ) # ( !\U|DP|REGFILE|Rtwo|out\(15) & ( 
-- \U|dec_i|locsel|Mux0~0_combout\ & ( (\U|DP|REGFILE|Rsix|out\(15) & (!\U|dec_i|locsel|Mux2~0_combout\ & \U|dec_i|locsel|Mux1~0_combout\)) ) ) ) # ( \U|DP|REGFILE|Rtwo|out\(15) & ( !\U|dec_i|locsel|Mux0~0_combout\ & ( (!\U|dec_i|locsel|Mux2~0_combout\ & 
-- \U|dec_i|locsel|Mux1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rsix|ALT_INV_out\(15),
	datac => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datad => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datae => \U|DP|REGFILE|Rtwo|ALT_INV_out\(15),
	dataf => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|outp|b[15]~46_combout\);

-- Location: LABCELL_X85_Y7_N27
\U|DP|REGFILE|outp|b[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b\(15) = ( \U|DP|REGFILE|bot|ShiftLeft0~0_combout\ & ( \U|DP|REGFILE|outp|b[15]~46_combout\ ) ) # ( !\U|DP|REGFILE|bot|ShiftLeft0~0_combout\ & ( \U|DP|REGFILE|outp|b[15]~46_combout\ ) ) # ( \U|DP|REGFILE|bot|ShiftLeft0~0_combout\ & ( 
-- !\U|DP|REGFILE|outp|b[15]~46_combout\ & ( ((\U|DP|REGFILE|outp|b[15]~45_combout\) # (\U|DP|REGFILE|outp|b[15]~47_combout\)) # (\U|DP|REGFILE|Rthree|out\(15)) ) ) ) # ( !\U|DP|REGFILE|bot|ShiftLeft0~0_combout\ & ( !\U|DP|REGFILE|outp|b[15]~46_combout\ & ( 
-- (\U|DP|REGFILE|outp|b[15]~45_combout\) # (\U|DP|REGFILE|outp|b[15]~47_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111011111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rthree|ALT_INV_out\(15),
	datab => \U|DP|REGFILE|outp|ALT_INV_b[15]~47_combout\,
	datac => \U|DP|REGFILE|outp|ALT_INV_b[15]~45_combout\,
	datae => \U|DP|REGFILE|bot|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \U|DP|REGFILE|outp|ALT_INV_b[15]~46_combout\,
	combout => \U|DP|REGFILE|outp|b\(15));

-- Location: FF_X87_Y7_N59
\U|DP|B|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(15),
	sload => VCC,
	ena => \U|statemachine|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|B|out\(15));

-- Location: LABCELL_X88_Y9_N30
\U|DP|C|out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|C|out[14]~feeder_combout\ = ( \U|DP|U2|Add0~57_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|U2|ALT_INV_Add0~57_sumout\,
	combout => \U|DP|C|out[14]~feeder_combout\);

-- Location: MLABCELL_X87_Y7_N57
\U|DP|U2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Mux1~0_combout\ = ( \U|DP|B|out\(15) & ( \rtl~66_combout\ & ( (\U|DP|A|out\(14) & !\U|instruct|out\(11)) ) ) ) # ( !\U|DP|B|out\(15) & ( \rtl~66_combout\ & ( (!\U|instruct|out\(4) & (\U|DP|A|out\(14) & !\U|instruct|out\(11))) # 
-- (\U|instruct|out\(4) & ((\U|instruct|out\(11)))) ) ) ) # ( \U|DP|B|out\(15) & ( !\rtl~66_combout\ & ( (!\U|instruct|out\(4) & ((\U|instruct|out\(11)))) # (\U|instruct|out\(4) & (\U|DP|A|out\(14) & !\U|instruct|out\(11))) ) ) ) # ( !\U|DP|B|out\(15) & ( 
-- !\rtl~66_combout\ & ( \U|instruct|out\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000100011010101000100010010101010011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|DP|A|ALT_INV_out\(14),
	datad => \U|instruct|ALT_INV_out\(11),
	datae => \U|DP|B|ALT_INV_out\(15),
	dataf => \ALT_INV_rtl~66_combout\,
	combout => \U|DP|U2|Mux1~0_combout\);

-- Location: FF_X88_Y9_N32
\U|DP|C|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|C|out[14]~feeder_combout\,
	asdata => \U|DP|U2|Mux1~0_combout\,
	sload => \U|instruct|out\(12),
	ena => \U|statemachine|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|C|out\(14));

-- Location: MLABCELL_X87_Y9_N6
\rtl~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~77_combout\ = ( \U|DP|C|out\(14) & ( (\U|statemachine|vsel\(0) & ((\U|instruct|out\(7)) # (\U|statemachine|vsel\(1)))) ) ) # ( !\U|DP|C|out\(14) & ( (!\U|statemachine|vsel\(1) & (\U|instruct|out\(7) & \U|statemachine|vsel\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000011101110000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_vsel\(1),
	datab => \U|instruct|ALT_INV_out\(7),
	datad => \U|statemachine|ALT_INV_vsel\(0),
	dataf => \U|DP|C|ALT_INV_out\(14),
	combout => \rtl~77_combout\);

-- Location: LABCELL_X85_Y6_N39
\U|DP|REGFILE|Rthree|out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rthree|out[14]~feeder_combout\ = ( \rtl~77_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_rtl~77_combout\,
	combout => \U|DP|REGFILE|Rthree|out[14]~feeder_combout\);

-- Location: FF_X85_Y6_N40
\U|DP|REGFILE|Rthree|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rthree|out[14]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rthree|out\(14));

-- Location: MLABCELL_X84_Y5_N0
\U|DP|REGFILE|Rone|out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rone|out[14]~feeder_combout\ = ( \rtl~77_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_rtl~77_combout\,
	combout => \U|DP|REGFILE|Rone|out[14]~feeder_combout\);

-- Location: FF_X84_Y5_N1
\U|DP|REGFILE|Rone|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rone|out[14]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rone|out\(14));

-- Location: FF_X87_Y6_N50
\U|DP|REGFILE|Rfour|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~77_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfour|out\(14));

-- Location: FF_X87_Y6_N2
\U|DP|REGFILE|Rzero|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~77_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rzero|out\(14));

-- Location: MLABCELL_X87_Y6_N12
\U|DP|REGFILE|outp|b[14]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[14]~42_combout\ = ( \U|dec_i|locsel|Mux2~0_combout\ & ( !\U|dec_i|locsel|Mux1~0_combout\ & ( (!\U|dec_i|locsel|Mux0~0_combout\ & \U|DP|REGFILE|Rone|out\(14)) ) ) ) # ( !\U|dec_i|locsel|Mux2~0_combout\ & ( 
-- !\U|dec_i|locsel|Mux1~0_combout\ & ( (!\U|dec_i|locsel|Mux0~0_combout\ & ((\U|DP|REGFILE|Rzero|out\(14)))) # (\U|dec_i|locsel|Mux0~0_combout\ & (\U|DP|REGFILE|Rfour|out\(14))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111001000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datab => \U|DP|REGFILE|Rone|ALT_INV_out\(14),
	datac => \U|DP|REGFILE|Rfour|ALT_INV_out\(14),
	datad => \U|DP|REGFILE|Rzero|ALT_INV_out\(14),
	datae => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	dataf => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	combout => \U|DP|REGFILE|outp|b[14]~42_combout\);

-- Location: FF_X88_Y6_N52
\U|DP|REGFILE|Rfive|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~77_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfive|out\(14));

-- Location: MLABCELL_X84_Y6_N54
\U|DP|REGFILE|Rseven|out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rseven|out[14]~feeder_combout\ = ( \rtl~77_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_rtl~77_combout\,
	combout => \U|DP|REGFILE|Rseven|out[14]~feeder_combout\);

-- Location: FF_X84_Y6_N55
\U|DP|REGFILE|Rseven|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rseven|out[14]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rseven|out\(14));

-- Location: MLABCELL_X87_Y6_N27
\U|DP|REGFILE|outp|b[14]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[14]~44_combout\ = ( \U|dec_i|locsel|Mux1~0_combout\ & ( (\U|DP|REGFILE|Rseven|out\(14) & (\U|dec_i|locsel|Mux2~0_combout\ & \U|dec_i|locsel|Mux0~0_combout\)) ) ) # ( !\U|dec_i|locsel|Mux1~0_combout\ & ( (\U|DP|REGFILE|Rfive|out\(14) & 
-- (\U|dec_i|locsel|Mux2~0_combout\ & \U|dec_i|locsel|Mux0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000001100000000000001010000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rfive|ALT_INV_out\(14),
	datab => \U|DP|REGFILE|Rseven|ALT_INV_out\(14),
	datac => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datad => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datae => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	combout => \U|DP|REGFILE|outp|b[14]~44_combout\);

-- Location: MLABCELL_X84_Y6_N0
\U|DP|REGFILE|Rsix|out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rsix|out[14]~feeder_combout\ = ( \rtl~77_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_rtl~77_combout\,
	combout => \U|DP|REGFILE|Rsix|out[14]~feeder_combout\);

-- Location: FF_X84_Y6_N1
\U|DP|REGFILE|Rsix|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rsix|out[14]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rsix|out\(14));

-- Location: FF_X85_Y6_N11
\U|DP|REGFILE|Rtwo|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~77_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rtwo|out\(14));

-- Location: LABCELL_X85_Y6_N9
\U|DP|REGFILE|outp|b[14]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[14]~43_combout\ = ( \U|DP|REGFILE|Rtwo|out\(14) & ( \U|dec_i|locsel|Mux0~0_combout\ & ( (\U|DP|REGFILE|Rsix|out\(14) & (\U|dec_i|locsel|Mux1~0_combout\ & !\U|dec_i|locsel|Mux2~0_combout\)) ) ) ) # ( !\U|DP|REGFILE|Rtwo|out\(14) & ( 
-- \U|dec_i|locsel|Mux0~0_combout\ & ( (\U|DP|REGFILE|Rsix|out\(14) & (\U|dec_i|locsel|Mux1~0_combout\ & !\U|dec_i|locsel|Mux2~0_combout\)) ) ) ) # ( \U|DP|REGFILE|Rtwo|out\(14) & ( !\U|dec_i|locsel|Mux0~0_combout\ & ( (\U|dec_i|locsel|Mux1~0_combout\ & 
-- !\U|dec_i|locsel|Mux2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Rsix|ALT_INV_out\(14),
	datac => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datad => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datae => \U|DP|REGFILE|Rtwo|ALT_INV_out\(14),
	dataf => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|outp|b[14]~43_combout\);

-- Location: MLABCELL_X87_Y6_N21
\U|DP|REGFILE|outp|b[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b\(14) = ( \U|DP|REGFILE|outp|b[14]~43_combout\ & ( \U|DP|REGFILE|bot|ShiftLeft0~0_combout\ ) ) # ( !\U|DP|REGFILE|outp|b[14]~43_combout\ & ( \U|DP|REGFILE|bot|ShiftLeft0~0_combout\ & ( ((\U|DP|REGFILE|outp|b[14]~44_combout\) # 
-- (\U|DP|REGFILE|outp|b[14]~42_combout\)) # (\U|DP|REGFILE|Rthree|out\(14)) ) ) ) # ( \U|DP|REGFILE|outp|b[14]~43_combout\ & ( !\U|DP|REGFILE|bot|ShiftLeft0~0_combout\ ) ) # ( !\U|DP|REGFILE|outp|b[14]~43_combout\ & ( 
-- !\U|DP|REGFILE|bot|ShiftLeft0~0_combout\ & ( (\U|DP|REGFILE|outp|b[14]~44_combout\) # (\U|DP|REGFILE|outp|b[14]~42_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111111111111111111101011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rthree|ALT_INV_out\(14),
	datac => \U|DP|REGFILE|outp|ALT_INV_b[14]~42_combout\,
	datad => \U|DP|REGFILE|outp|ALT_INV_b[14]~44_combout\,
	datae => \U|DP|REGFILE|outp|ALT_INV_b[14]~43_combout\,
	dataf => \U|DP|REGFILE|bot|ALT_INV_ShiftLeft0~0_combout\,
	combout => \U|DP|REGFILE|outp|b\(14));

-- Location: FF_X88_Y7_N26
\U|DP|B|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(14),
	sload => VCC,
	ena => \U|statemachine|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|B|out\(14));

-- Location: LABCELL_X88_Y9_N24
\U|DP|C|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|C|out[13]~feeder_combout\ = ( \U|DP|U2|Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|U2|ALT_INV_Add0~53_sumout\,
	combout => \U|DP|C|out[13]~feeder_combout\);

-- Location: MLABCELL_X87_Y7_N24
\U|DP|U2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Mux2~0_combout\ = ( \rtl~65_combout\ & ( (!\U|instruct|out\(11) & (\U|DP|A|out\(13) & ((!\U|instruct|out\(4)) # (\U|DP|B|out\(14))))) # (\U|instruct|out\(11) & (\U|instruct|out\(4) & (!\U|DP|B|out\(14)))) ) ) # ( !\rtl~65_combout\ & ( 
-- (!\U|instruct|out\(4) & (((\U|instruct|out\(11))))) # (\U|instruct|out\(4) & ((!\U|DP|B|out\(14) & ((\U|instruct|out\(11)))) # (\U|DP|B|out\(14) & (\U|DP|A|out\(13) & !\U|instruct|out\(11))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101110000000011110111000001011010001000000101101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|DP|B|ALT_INV_out\(14),
	datac => \U|DP|A|ALT_INV_out\(13),
	datad => \U|instruct|ALT_INV_out\(11),
	dataf => \ALT_INV_rtl~65_combout\,
	combout => \U|DP|U2|Mux2~0_combout\);

-- Location: FF_X88_Y9_N25
\U|DP|C|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|C|out[13]~feeder_combout\,
	asdata => \U|DP|U2|Mux2~0_combout\,
	sload => \U|instruct|out\(12),
	ena => \U|statemachine|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|C|out\(13));

-- Location: MLABCELL_X87_Y9_N3
\rtl~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~76_combout\ = ( \U|instruct|out\(7) & ( \U|DP|C|out\(13) & ( \U|statemachine|vsel\(0) ) ) ) # ( !\U|instruct|out\(7) & ( \U|DP|C|out\(13) & ( (\U|statemachine|vsel\(0) & \U|statemachine|vsel\(1)) ) ) ) # ( \U|instruct|out\(7) & ( !\U|DP|C|out\(13) & 
-- ( (\U|statemachine|vsel\(0) & !\U|statemachine|vsel\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000101000001010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_vsel\(0),
	datac => \U|statemachine|ALT_INV_vsel\(1),
	datae => \U|instruct|ALT_INV_out\(7),
	dataf => \U|DP|C|ALT_INV_out\(13),
	combout => \rtl~76_combout\);

-- Location: LABCELL_X83_Y7_N15
\U|DP|REGFILE|Rthree|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rthree|out[13]~feeder_combout\ = ( \rtl~76_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_rtl~76_combout\,
	combout => \U|DP|REGFILE|Rthree|out[13]~feeder_combout\);

-- Location: FF_X83_Y7_N16
\U|DP|REGFILE|Rthree|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rthree|out[13]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rthree|out\(13));

-- Location: FF_X87_Y9_N4
\U|DP|REGFILE|Rseven|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \rtl~76_combout\,
	ena => \U|DP|REGFILE|towrite\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rseven|out\(13));

-- Location: FF_X85_Y7_N32
\U|DP|REGFILE|Rfive|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~76_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfive|out\(13));

-- Location: LABCELL_X85_Y7_N30
\U|DP|REGFILE|outp|b[13]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[13]~41_combout\ = ( \U|dec_i|locsel|Mux0~0_combout\ & ( (\U|dec_i|locsel|Mux2~0_combout\ & ((!\U|dec_i|locsel|Mux1~0_combout\ & ((\U|DP|REGFILE|Rfive|out\(13)))) # (\U|dec_i|locsel|Mux1~0_combout\ & (\U|DP|REGFILE|Rseven|out\(13))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datab => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datac => \U|DP|REGFILE|Rseven|ALT_INV_out\(13),
	datad => \U|DP|REGFILE|Rfive|ALT_INV_out\(13),
	dataf => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|outp|b[13]~41_combout\);

-- Location: FF_X87_Y3_N37
\U|DP|REGFILE|Rone|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~76_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rone|out\(13));

-- Location: LABCELL_X83_Y7_N18
\U|DP|REGFILE|Rfour|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rfour|out[13]~feeder_combout\ = ( \rtl~76_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_rtl~76_combout\,
	combout => \U|DP|REGFILE|Rfour|out[13]~feeder_combout\);

-- Location: FF_X83_Y7_N20
\U|DP|REGFILE|Rfour|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rfour|out[13]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfour|out\(13));

-- Location: FF_X85_Y7_N2
\U|DP|REGFILE|Rzero|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~76_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rzero|out\(13));

-- Location: LABCELL_X85_Y7_N0
\U|DP|REGFILE|outp|b[13]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[13]~39_combout\ = ( \U|DP|REGFILE|Rzero|out\(13) & ( \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|DP|REGFILE|Rone|out\(13) & (!\U|dec_i|locsel|Mux0~0_combout\ & !\U|dec_i|locsel|Mux1~0_combout\)) ) ) ) # ( !\U|DP|REGFILE|Rzero|out\(13) & ( 
-- \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|DP|REGFILE|Rone|out\(13) & (!\U|dec_i|locsel|Mux0~0_combout\ & !\U|dec_i|locsel|Mux1~0_combout\)) ) ) ) # ( \U|DP|REGFILE|Rzero|out\(13) & ( !\U|dec_i|locsel|Mux2~0_combout\ & ( (!\U|dec_i|locsel|Mux1~0_combout\ & 
-- ((!\U|dec_i|locsel|Mux0~0_combout\) # (\U|DP|REGFILE|Rfour|out\(13)))) ) ) ) # ( !\U|DP|REGFILE|Rzero|out\(13) & ( !\U|dec_i|locsel|Mux2~0_combout\ & ( (\U|dec_i|locsel|Mux0~0_combout\ & (\U|DP|REGFILE|Rfour|out\(13) & !\U|dec_i|locsel|Mux1~0_combout\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000110011110000000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rone|ALT_INV_out\(13),
	datab => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datac => \U|DP|REGFILE|Rfour|ALT_INV_out\(13),
	datad => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datae => \U|DP|REGFILE|Rzero|ALT_INV_out\(13),
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|outp|b[13]~39_combout\);

-- Location: FF_X83_Y5_N46
\U|DP|REGFILE|Rsix|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~76_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rsix|out\(13));

-- Location: FF_X84_Y5_N56
\U|DP|REGFILE|Rtwo|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~76_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rtwo|out\(13));

-- Location: MLABCELL_X84_Y5_N54
\U|DP|REGFILE|outp|b[13]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[13]~40_combout\ = ( \U|DP|REGFILE|Rtwo|out\(13) & ( !\U|dec_i|locsel|Mux2~0_combout\ & ( (\U|dec_i|locsel|Mux1~0_combout\ & ((!\U|dec_i|locsel|Mux0~0_combout\) # (\U|DP|REGFILE|Rsix|out\(13)))) ) ) ) # ( !\U|DP|REGFILE|Rtwo|out\(13) & 
-- ( !\U|dec_i|locsel|Mux2~0_combout\ & ( (\U|DP|REGFILE|Rsix|out\(13) & (\U|dec_i|locsel|Mux0~0_combout\ & \U|dec_i|locsel|Mux1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000001111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rsix|ALT_INV_out\(13),
	datac => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datad => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datae => \U|DP|REGFILE|Rtwo|ALT_INV_out\(13),
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|outp|b[13]~40_combout\);

-- Location: LABCELL_X85_Y7_N21
\U|DP|REGFILE|outp|b[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b\(13) = ( \U|DP|REGFILE|bot|ShiftLeft0~0_combout\ & ( \U|DP|REGFILE|outp|b[13]~40_combout\ ) ) # ( !\U|DP|REGFILE|bot|ShiftLeft0~0_combout\ & ( \U|DP|REGFILE|outp|b[13]~40_combout\ ) ) # ( \U|DP|REGFILE|bot|ShiftLeft0~0_combout\ & ( 
-- !\U|DP|REGFILE|outp|b[13]~40_combout\ & ( ((\U|DP|REGFILE|outp|b[13]~39_combout\) # (\U|DP|REGFILE|outp|b[13]~41_combout\)) # (\U|DP|REGFILE|Rthree|out\(13)) ) ) ) # ( !\U|DP|REGFILE|bot|ShiftLeft0~0_combout\ & ( !\U|DP|REGFILE|outp|b[13]~40_combout\ & ( 
-- (\U|DP|REGFILE|outp|b[13]~39_combout\) # (\U|DP|REGFILE|outp|b[13]~41_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111010111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rthree|ALT_INV_out\(13),
	datac => \U|DP|REGFILE|outp|ALT_INV_b[13]~41_combout\,
	datad => \U|DP|REGFILE|outp|ALT_INV_b[13]~39_combout\,
	datae => \U|DP|REGFILE|bot|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \U|DP|REGFILE|outp|ALT_INV_b[13]~40_combout\,
	combout => \U|DP|REGFILE|outp|b\(13));

-- Location: FF_X87_Y7_N20
\U|DP|B|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(13),
	sload => VCC,
	ena => \U|statemachine|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|B|out\(13));

-- Location: LABCELL_X88_Y9_N27
\U|DP|C|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|C|out[12]~feeder_combout\ = ( \U|DP|U2|Add0~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|U2|ALT_INV_Add0~49_sumout\,
	combout => \U|DP|C|out[12]~feeder_combout\);

-- Location: MLABCELL_X87_Y7_N39
\U|DP|U2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Mux3~0_combout\ = ( \rtl~64_combout\ & ( \U|DP|B|out\(13) & ( (!\U|instruct|out\(11) & \U|DP|A|out\(12)) ) ) ) # ( !\rtl~64_combout\ & ( \U|DP|B|out\(13) & ( (!\U|instruct|out\(4) & (\U|instruct|out\(11))) # (\U|instruct|out\(4) & 
-- (!\U|instruct|out\(11) & \U|DP|A|out\(12))) ) ) ) # ( \rtl~64_combout\ & ( !\U|DP|B|out\(13) & ( (!\U|instruct|out\(4) & (!\U|instruct|out\(11) & \U|DP|A|out\(12))) # (\U|instruct|out\(4) & (\U|instruct|out\(11))) ) ) ) # ( !\rtl~64_combout\ & ( 
-- !\U|DP|B|out\(13) & ( \U|instruct|out\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000001011010010100001010010110100000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datac => \U|instruct|ALT_INV_out\(11),
	datad => \U|DP|A|ALT_INV_out\(12),
	datae => \ALT_INV_rtl~64_combout\,
	dataf => \U|DP|B|ALT_INV_out\(13),
	combout => \U|DP|U2|Mux3~0_combout\);

-- Location: FF_X88_Y9_N29
\U|DP|C|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|C|out[12]~feeder_combout\,
	asdata => \U|DP|U2|Mux3~0_combout\,
	sload => \U|instruct|out\(12),
	ena => \U|statemachine|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|C|out\(12));

-- Location: MLABCELL_X87_Y9_N51
\rtl~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~75_combout\ = ( \U|statemachine|vsel\(1) & ( (\U|DP|C|out\(12) & \U|statemachine|vsel\(0)) ) ) # ( !\U|statemachine|vsel\(1) & ( (\U|instruct|out\(7) & \U|statemachine|vsel\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|C|ALT_INV_out\(12),
	datac => \U|instruct|ALT_INV_out\(7),
	datad => \U|statemachine|ALT_INV_vsel\(0),
	dataf => \U|statemachine|ALT_INV_vsel\(1),
	combout => \rtl~75_combout\);

-- Location: FF_X87_Y9_N1
\U|DP|REGFILE|Rseven|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~75_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rseven|out\(12));

-- Location: FF_X85_Y7_N11
\U|DP|REGFILE|Rfive|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~75_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfive|out\(12));

-- Location: LABCELL_X85_Y7_N9
\U|DP|REGFILE|outp|b[12]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[12]~38_combout\ = ( \U|DP|REGFILE|Rfive|out\(12) & ( \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|dec_i|locsel|Mux0~0_combout\ & ((!\U|dec_i|locsel|Mux1~0_combout\) # (\U|DP|REGFILE|Rseven|out\(12)))) ) ) ) # ( 
-- !\U|DP|REGFILE|Rfive|out\(12) & ( \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|DP|REGFILE|Rseven|out\(12) & (\U|dec_i|locsel|Mux1~0_combout\ & \U|dec_i|locsel|Mux0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rseven|ALT_INV_out\(12),
	datab => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datac => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datae => \U|DP|REGFILE|Rfive|ALT_INV_out\(12),
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|outp|b[12]~38_combout\);

-- Location: MLABCELL_X82_Y7_N6
\U|DP|REGFILE|Rthree|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rthree|out[12]~feeder_combout\ = ( \rtl~75_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_rtl~75_combout\,
	combout => \U|DP|REGFILE|Rthree|out[12]~feeder_combout\);

-- Location: FF_X82_Y7_N7
\U|DP|REGFILE|Rthree|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rthree|out[12]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rthree|out\(12));

-- Location: LABCELL_X88_Y4_N48
\U|DP|REGFILE|Rsix|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rsix|out[12]~feeder_combout\ = \rtl~75_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~75_combout\,
	combout => \U|DP|REGFILE|Rsix|out[12]~feeder_combout\);

-- Location: FF_X88_Y4_N50
\U|DP|REGFILE|Rsix|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rsix|out[12]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rsix|out\(12));

-- Location: FF_X88_Y3_N59
\U|DP|REGFILE|Rtwo|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~75_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rtwo|out\(12));

-- Location: LABCELL_X88_Y3_N57
\U|DP|REGFILE|outp|b[12]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[12]~37_combout\ = ( \U|DP|REGFILE|Rtwo|out\(12) & ( \U|dec_i|locsel|Mux1~0_combout\ & ( (!\U|dec_i|locsel|Mux2~0_combout\ & ((!\U|dec_i|locsel|Mux0~0_combout\) # (\U|DP|REGFILE|Rsix|out\(12)))) ) ) ) # ( !\U|DP|REGFILE|Rtwo|out\(12) & 
-- ( \U|dec_i|locsel|Mux1~0_combout\ & ( (\U|DP|REGFILE|Rsix|out\(12) & (\U|dec_i|locsel|Mux0~0_combout\ & !\U|dec_i|locsel|Mux2~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rsix|ALT_INV_out\(12),
	datac => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datad => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datae => \U|DP|REGFILE|Rtwo|ALT_INV_out\(12),
	dataf => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	combout => \U|DP|REGFILE|outp|b[12]~37_combout\);

-- Location: MLABCELL_X82_Y7_N51
\U|DP|REGFILE|Rfour|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rfour|out[12]~feeder_combout\ = ( \rtl~75_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_rtl~75_combout\,
	combout => \U|DP|REGFILE|Rfour|out[12]~feeder_combout\);

-- Location: FF_X82_Y7_N52
\U|DP|REGFILE|Rfour|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rfour|out[12]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfour|out\(12));

-- Location: LABCELL_X88_Y3_N42
\U|DP|REGFILE|Rone|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rone|out[12]~feeder_combout\ = \rtl~75_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~75_combout\,
	combout => \U|DP|REGFILE|Rone|out[12]~feeder_combout\);

-- Location: FF_X88_Y3_N44
\U|DP|REGFILE|Rone|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rone|out[12]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rone|out\(12));

-- Location: FF_X85_Y7_N14
\U|DP|REGFILE|Rzero|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~75_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rzero|out\(12));

-- Location: LABCELL_X85_Y7_N12
\U|DP|REGFILE|outp|b[12]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[12]~36_combout\ = ( \U|DP|REGFILE|Rzero|out\(12) & ( \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|DP|REGFILE|Rone|out\(12) & (!\U|dec_i|locsel|Mux0~0_combout\ & !\U|dec_i|locsel|Mux1~0_combout\)) ) ) ) # ( !\U|DP|REGFILE|Rzero|out\(12) & ( 
-- \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|DP|REGFILE|Rone|out\(12) & (!\U|dec_i|locsel|Mux0~0_combout\ & !\U|dec_i|locsel|Mux1~0_combout\)) ) ) ) # ( \U|DP|REGFILE|Rzero|out\(12) & ( !\U|dec_i|locsel|Mux2~0_combout\ & ( (!\U|dec_i|locsel|Mux1~0_combout\ & 
-- ((!\U|dec_i|locsel|Mux0~0_combout\) # (\U|DP|REGFILE|Rfour|out\(12)))) ) ) ) # ( !\U|DP|REGFILE|Rzero|out\(12) & ( !\U|dec_i|locsel|Mux2~0_combout\ & ( (\U|DP|REGFILE|Rfour|out\(12) & (\U|dec_i|locsel|Mux0~0_combout\ & !\U|dec_i|locsel|Mux1~0_combout\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000111101010000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rfour|ALT_INV_out\(12),
	datab => \U|DP|REGFILE|Rone|ALT_INV_out\(12),
	datac => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datad => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datae => \U|DP|REGFILE|Rzero|ALT_INV_out\(12),
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|outp|b[12]~36_combout\);

-- Location: LABCELL_X88_Y7_N6
\U|DP|REGFILE|outp|b[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b\(12) = ( \U|DP|REGFILE|outp|b[12]~36_combout\ ) # ( !\U|DP|REGFILE|outp|b[12]~36_combout\ & ( (((\U|DP|REGFILE|bot|ShiftLeft0~0_combout\ & \U|DP|REGFILE|Rthree|out\(12))) # (\U|DP|REGFILE|outp|b[12]~37_combout\)) # 
-- (\U|DP|REGFILE|outp|b[12]~38_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011111111111010101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|outp|ALT_INV_b[12]~38_combout\,
	datab => \U|DP|REGFILE|bot|ALT_INV_ShiftLeft0~0_combout\,
	datac => \U|DP|REGFILE|Rthree|ALT_INV_out\(12),
	datad => \U|DP|REGFILE|outp|ALT_INV_b[12]~37_combout\,
	dataf => \U|DP|REGFILE|outp|ALT_INV_b[12]~36_combout\,
	combout => \U|DP|REGFILE|outp|b\(12));

-- Location: FF_X88_Y7_N17
\U|DP|B|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(12),
	sload => VCC,
	ena => \U|statemachine|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|B|out\(12));

-- Location: LABCELL_X88_Y9_N18
\U|DP|C|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|C|out[11]~feeder_combout\ = ( \U|DP|U2|Add0~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|U2|ALT_INV_Add0~45_sumout\,
	combout => \U|DP|C|out[11]~feeder_combout\);

-- Location: FF_X88_Y7_N4
\U|DP|A|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(11),
	sload => VCC,
	ena => \U|statemachine|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|A|out\(11));

-- Location: MLABCELL_X87_Y7_N9
\U|DP|U2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Mux4~0_combout\ = ( \U|DP|B|out\(12) & ( \rtl~63_combout\ & ( (\U|DP|A|out\(11) & !\U|instruct|out\(11)) ) ) ) # ( !\U|DP|B|out\(12) & ( \rtl~63_combout\ & ( (!\U|instruct|out\(4) & (\U|DP|A|out\(11) & !\U|instruct|out\(11))) # 
-- (\U|instruct|out\(4) & ((\U|instruct|out\(11)))) ) ) ) # ( \U|DP|B|out\(12) & ( !\rtl~63_combout\ & ( (!\U|instruct|out\(4) & ((\U|instruct|out\(11)))) # (\U|instruct|out\(4) & (\U|DP|A|out\(11) & !\U|instruct|out\(11))) ) ) ) # ( !\U|DP|B|out\(12) & ( 
-- !\rtl~63_combout\ & ( \U|instruct|out\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000100011010101000100010010101010011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|DP|A|ALT_INV_out\(11),
	datad => \U|instruct|ALT_INV_out\(11),
	datae => \U|DP|B|ALT_INV_out\(12),
	dataf => \ALT_INV_rtl~63_combout\,
	combout => \U|DP|U2|Mux4~0_combout\);

-- Location: FF_X88_Y9_N20
\U|DP|C|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|C|out[11]~feeder_combout\,
	asdata => \U|DP|U2|Mux4~0_combout\,
	sload => \U|instruct|out\(12),
	ena => \U|statemachine|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|C|out\(11));

-- Location: MLABCELL_X87_Y9_N27
\rtl~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~74_combout\ = ( \U|DP|C|out\(11) & ( (\U|statemachine|vsel\(0) & ((\U|instruct|out\(7)) # (\U|statemachine|vsel\(1)))) ) ) # ( !\U|DP|C|out\(11) & ( (\U|statemachine|vsel\(0) & (!\U|statemachine|vsel\(1) & \U|instruct|out\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_vsel\(0),
	datac => \U|statemachine|ALT_INV_vsel\(1),
	datad => \U|instruct|ALT_INV_out\(7),
	dataf => \U|DP|C|ALT_INV_out\(11),
	combout => \rtl~74_combout\);

-- Location: FF_X88_Y7_N53
\U|DP|REGFILE|Rthree|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~74_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rthree|out\(11));

-- Location: FF_X88_Y4_N23
\U|DP|REGFILE|Rsix|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~74_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rsix|out\(11));

-- Location: FF_X88_Y3_N55
\U|DP|REGFILE|Rtwo|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~74_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rtwo|out\(11));

-- Location: LABCELL_X88_Y4_N30
\U|DP|REGFILE|outp|b[11]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[11]~34_combout\ = ( \U|dec_i|locsel|Mux1~0_combout\ & ( \U|dec_i|locsel|Mux0~0_combout\ & ( (\U|DP|REGFILE|Rsix|out\(11) & !\U|dec_i|locsel|Mux2~0_combout\) ) ) ) # ( \U|dec_i|locsel|Mux1~0_combout\ & ( 
-- !\U|dec_i|locsel|Mux0~0_combout\ & ( (\U|DP|REGFILE|Rtwo|out\(11) & !\U|dec_i|locsel|Mux2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rsix|ALT_INV_out\(11),
	datab => \U|DP|REGFILE|Rtwo|ALT_INV_out\(11),
	datac => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datae => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	dataf => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|outp|b[11]~34_combout\);

-- Location: MLABCELL_X82_Y7_N12
\U|DP|REGFILE|Rfour|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rfour|out[11]~feeder_combout\ = ( \rtl~74_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_rtl~74_combout\,
	combout => \U|DP|REGFILE|Rfour|out[11]~feeder_combout\);

-- Location: FF_X82_Y7_N13
\U|DP|REGFILE|Rfour|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rfour|out[11]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfour|out\(11));

-- Location: MLABCELL_X87_Y3_N51
\U|DP|REGFILE|Rone|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rone|out[11]~feeder_combout\ = ( \rtl~74_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_rtl~74_combout\,
	combout => \U|DP|REGFILE|Rone|out[11]~feeder_combout\);

-- Location: FF_X87_Y3_N52
\U|DP|REGFILE|Rone|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rone|out[11]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rone|out\(11));

-- Location: FF_X85_Y7_N50
\U|DP|REGFILE|Rzero|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~74_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rzero|out\(11));

-- Location: LABCELL_X85_Y7_N48
\U|DP|REGFILE|outp|b[11]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[11]~33_combout\ = ( \U|DP|REGFILE|Rzero|out\(11) & ( \U|dec_i|locsel|Mux2~0_combout\ & ( (!\U|dec_i|locsel|Mux1~0_combout\ & (\U|DP|REGFILE|Rone|out\(11) & !\U|dec_i|locsel|Mux0~0_combout\)) ) ) ) # ( !\U|DP|REGFILE|Rzero|out\(11) & ( 
-- \U|dec_i|locsel|Mux2~0_combout\ & ( (!\U|dec_i|locsel|Mux1~0_combout\ & (\U|DP|REGFILE|Rone|out\(11) & !\U|dec_i|locsel|Mux0~0_combout\)) ) ) ) # ( \U|DP|REGFILE|Rzero|out\(11) & ( !\U|dec_i|locsel|Mux2~0_combout\ & ( (!\U|dec_i|locsel|Mux1~0_combout\ & 
-- ((!\U|dec_i|locsel|Mux0~0_combout\) # (\U|DP|REGFILE|Rfour|out\(11)))) ) ) ) # ( !\U|DP|REGFILE|Rzero|out\(11) & ( !\U|dec_i|locsel|Mux2~0_combout\ & ( (\U|DP|REGFILE|Rfour|out\(11) & (!\U|dec_i|locsel|Mux1~0_combout\ & \U|dec_i|locsel|Mux0~0_combout\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100110011000100010000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rfour|ALT_INV_out\(11),
	datab => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datac => \U|DP|REGFILE|Rone|ALT_INV_out\(11),
	datad => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datae => \U|DP|REGFILE|Rzero|ALT_INV_out\(11),
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|outp|b[11]~33_combout\);

-- Location: MLABCELL_X84_Y7_N36
\U|DP|REGFILE|Rseven|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rseven|out[11]~feeder_combout\ = ( \rtl~74_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_rtl~74_combout\,
	combout => \U|DP|REGFILE|Rseven|out[11]~feeder_combout\);

-- Location: FF_X84_Y7_N37
\U|DP|REGFILE|Rseven|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rseven|out[11]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rseven|out\(11));

-- Location: FF_X85_Y7_N56
\U|DP|REGFILE|Rfive|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~74_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfive|out\(11));

-- Location: LABCELL_X85_Y7_N54
\U|DP|REGFILE|outp|b[11]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[11]~35_combout\ = ( \U|dec_i|locsel|Mux0~0_combout\ & ( (\U|dec_i|locsel|Mux2~0_combout\ & ((!\U|dec_i|locsel|Mux1~0_combout\ & ((\U|DP|REGFILE|Rfive|out\(11)))) # (\U|dec_i|locsel|Mux1~0_combout\ & (\U|DP|REGFILE|Rseven|out\(11))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datab => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datac => \U|DP|REGFILE|Rseven|ALT_INV_out\(11),
	datad => \U|DP|REGFILE|Rfive|ALT_INV_out\(11),
	dataf => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|outp|b[11]~35_combout\);

-- Location: LABCELL_X88_Y7_N57
\U|DP|REGFILE|outp|b[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b\(11) = ( \U|DP|REGFILE|outp|b[11]~35_combout\ ) # ( !\U|DP|REGFILE|outp|b[11]~35_combout\ & ( (((\U|DP|REGFILE|Rthree|out\(11) & \U|DP|REGFILE|bot|ShiftLeft0~0_combout\)) # (\U|DP|REGFILE|outp|b[11]~33_combout\)) # 
-- (\U|DP|REGFILE|outp|b[11]~34_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111111111111000111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rthree|ALT_INV_out\(11),
	datab => \U|DP|REGFILE|bot|ALT_INV_ShiftLeft0~0_combout\,
	datac => \U|DP|REGFILE|outp|ALT_INV_b[11]~34_combout\,
	datad => \U|DP|REGFILE|outp|ALT_INV_b[11]~33_combout\,
	dataf => \U|DP|REGFILE|outp|ALT_INV_b[11]~35_combout\,
	combout => \U|DP|REGFILE|outp|b\(11));

-- Location: FF_X88_Y7_N14
\U|DP|B|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(11),
	sload => VCC,
	ena => \U|statemachine|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|B|out\(11));

-- Location: LABCELL_X88_Y9_N15
\U|DP|C|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|C|out[10]~feeder_combout\ = ( \U|DP|U2|Add0~41_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|U2|ALT_INV_Add0~41_sumout\,
	combout => \U|DP|C|out[10]~feeder_combout\);

-- Location: MLABCELL_X87_Y7_N33
\U|DP|U2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Mux5~0_combout\ = ( \U|DP|B|out\(11) & ( (!\U|instruct|out\(11) & (\U|DP|A|out\(10) & ((\rtl~62_combout\) # (\U|instruct|out\(4))))) # (\U|instruct|out\(11) & (!\U|instruct|out\(4) & ((!\rtl~62_combout\)))) ) ) # ( !\U|DP|B|out\(11) & ( 
-- (!\U|instruct|out\(4) & ((!\U|instruct|out\(11) & (\U|DP|A|out\(10) & \rtl~62_combout\)) # (\U|instruct|out\(11) & ((!\rtl~62_combout\))))) # (\U|instruct|out\(4) & (\U|instruct|out\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100011001001100110001100100100110000011000010011000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|instruct|ALT_INV_out\(11),
	datac => \U|DP|A|ALT_INV_out\(10),
	datad => \ALT_INV_rtl~62_combout\,
	dataf => \U|DP|B|ALT_INV_out\(11),
	combout => \U|DP|U2|Mux5~0_combout\);

-- Location: FF_X88_Y9_N17
\U|DP|C|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|C|out[10]~feeder_combout\,
	asdata => \U|DP|U2|Mux5~0_combout\,
	sload => \U|instruct|out\(12),
	ena => \U|statemachine|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|C|out\(10));

-- Location: MLABCELL_X87_Y9_N24
\rtl~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~73_combout\ = ( \U|statemachine|vsel\(1) & ( (\U|statemachine|vsel\(0) & \U|DP|C|out\(10)) ) ) # ( !\U|statemachine|vsel\(1) & ( (\U|statemachine|vsel\(0) & \U|instruct|out\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_vsel\(0),
	datac => \U|DP|C|ALT_INV_out\(10),
	datad => \U|instruct|ALT_INV_out\(7),
	dataf => \U|statemachine|ALT_INV_vsel\(1),
	combout => \rtl~73_combout\);

-- Location: FF_X85_Y7_N35
\U|DP|REGFILE|Rfive|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~73_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfive|out\(10));

-- Location: MLABCELL_X84_Y7_N30
\U|DP|REGFILE|Rseven|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rseven|out[10]~feeder_combout\ = ( \rtl~73_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_rtl~73_combout\,
	combout => \U|DP|REGFILE|Rseven|out[10]~feeder_combout\);

-- Location: FF_X84_Y7_N31
\U|DP|REGFILE|Rseven|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rseven|out[10]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rseven|out\(10));

-- Location: LABCELL_X85_Y7_N33
\U|DP|REGFILE|outp|b[10]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[10]~32_combout\ = ( \U|DP|REGFILE|Rseven|out\(10) & ( (\U|dec_i|locsel|Mux2~0_combout\ & (\U|dec_i|locsel|Mux0~0_combout\ & ((\U|DP|REGFILE|Rfive|out\(10)) # (\U|dec_i|locsel|Mux1~0_combout\)))) ) ) # ( !\U|DP|REGFILE|Rseven|out\(10) 
-- & ( (\U|dec_i|locsel|Mux2~0_combout\ & (!\U|dec_i|locsel|Mux1~0_combout\ & (\U|dec_i|locsel|Mux0~0_combout\ & \U|DP|REGFILE|Rfive|out\(10)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000001000001010000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datab => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datac => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datad => \U|DP|REGFILE|Rfive|ALT_INV_out\(10),
	dataf => \U|DP|REGFILE|Rseven|ALT_INV_out\(10),
	combout => \U|DP|REGFILE|outp|b[10]~32_combout\);

-- Location: MLABCELL_X87_Y3_N30
\U|DP|REGFILE|Rfour|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rfour|out[10]~feeder_combout\ = ( \rtl~73_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_rtl~73_combout\,
	combout => \U|DP|REGFILE|Rfour|out[10]~feeder_combout\);

-- Location: FF_X87_Y3_N32
\U|DP|REGFILE|Rfour|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rfour|out[10]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfour|out\(10));

-- Location: FF_X85_Y7_N37
\U|DP|REGFILE|Rzero|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~73_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rzero|out\(10));

-- Location: LABCELL_X83_Y5_N27
\U|DP|REGFILE|Rone|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rone|out[10]~feeder_combout\ = ( \rtl~73_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_rtl~73_combout\,
	combout => \U|DP|REGFILE|Rone|out[10]~feeder_combout\);

-- Location: FF_X83_Y5_N28
\U|DP|REGFILE|Rone|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rone|out[10]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rone|out\(10));

-- Location: MLABCELL_X84_Y7_N3
\U|DP|REGFILE|outp|b[10]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[10]~30_combout\ = ( \U|dec_i|locsel|Mux2~0_combout\ & ( !\U|dec_i|locsel|Mux1~0_combout\ & ( (!\U|dec_i|locsel|Mux0~0_combout\ & \U|DP|REGFILE|Rone|out\(10)) ) ) ) # ( !\U|dec_i|locsel|Mux2~0_combout\ & ( 
-- !\U|dec_i|locsel|Mux1~0_combout\ & ( (!\U|dec_i|locsel|Mux0~0_combout\ & ((\U|DP|REGFILE|Rzero|out\(10)))) # (\U|dec_i|locsel|Mux0~0_combout\ & (\U|DP|REGFILE|Rfour|out\(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rfour|ALT_INV_out\(10),
	datab => \U|DP|REGFILE|Rzero|ALT_INV_out\(10),
	datac => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datad => \U|DP|REGFILE|Rone|ALT_INV_out\(10),
	datae => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	dataf => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	combout => \U|DP|REGFILE|outp|b[10]~30_combout\);

-- Location: FF_X88_Y4_N43
\U|DP|REGFILE|Rsix|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~73_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rsix|out\(10));

-- Location: FF_X88_Y3_N23
\U|DP|REGFILE|Rtwo|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~73_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rtwo|out\(10));

-- Location: LABCELL_X88_Y3_N21
\U|DP|REGFILE|outp|b[10]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[10]~31_combout\ = ( \U|DP|REGFILE|Rtwo|out\(10) & ( (\U|dec_i|locsel|Mux1~0_combout\ & (!\U|dec_i|locsel|Mux2~0_combout\ & ((!\U|dec_i|locsel|Mux0~0_combout\) # (\U|DP|REGFILE|Rsix|out\(10))))) ) ) # ( !\U|DP|REGFILE|Rtwo|out\(10) & ( 
-- (\U|DP|REGFILE|Rsix|out\(10) & (\U|dec_i|locsel|Mux0~0_combout\ & (\U|dec_i|locsel|Mux1~0_combout\ & !\U|dec_i|locsel|Mux2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000011010000000000000001000000000000110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rsix|ALT_INV_out\(10),
	datab => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datac => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datad => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datae => \U|DP|REGFILE|Rtwo|ALT_INV_out\(10),
	combout => \U|DP|REGFILE|outp|b[10]~31_combout\);

-- Location: FF_X88_Y7_N56
\U|DP|REGFILE|Rthree|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~73_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rthree|out\(10));

-- Location: LABCELL_X88_Y7_N18
\U|DP|REGFILE|outp|b[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b\(10) = ( \U|DP|REGFILE|Rthree|out\(10) & ( (((\U|DP|REGFILE|bot|ShiftLeft0~0_combout\) # (\U|DP|REGFILE|outp|b[10]~31_combout\)) # (\U|DP|REGFILE|outp|b[10]~30_combout\)) # (\U|DP|REGFILE|outp|b[10]~32_combout\) ) ) # ( 
-- !\U|DP|REGFILE|Rthree|out\(10) & ( ((\U|DP|REGFILE|outp|b[10]~31_combout\) # (\U|DP|REGFILE|outp|b[10]~30_combout\)) # (\U|DP|REGFILE|outp|b[10]~32_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|outp|ALT_INV_b[10]~32_combout\,
	datab => \U|DP|REGFILE|outp|ALT_INV_b[10]~30_combout\,
	datac => \U|DP|REGFILE|outp|ALT_INV_b[10]~31_combout\,
	datad => \U|DP|REGFILE|bot|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \U|DP|REGFILE|Rthree|ALT_INV_out\(10),
	combout => \U|DP|REGFILE|outp|b\(10));

-- Location: FF_X88_Y7_N29
\U|DP|B|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(10),
	sload => VCC,
	ena => \U|statemachine|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|B|out\(10));

-- Location: LABCELL_X88_Y9_N12
\U|DP|C|out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|C|out[9]~feeder_combout\ = ( \U|DP|U2|Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|U2|ALT_INV_Add0~37_sumout\,
	combout => \U|DP|C|out[9]~feeder_combout\);

-- Location: FF_X87_Y7_N38
\U|DP|A|out[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(9),
	sload => VCC,
	ena => \U|statemachine|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|A|out[9]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y7_N12
\U|DP|U2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Mux6~0_combout\ = ( \U|DP|B|out\(10) & ( (!\U|instruct|out\(11) & (\U|DP|A|out[9]~DUPLICATE_q\ & ((\rtl~61_combout\) # (\U|instruct|out\(4))))) # (\U|instruct|out\(11) & (!\U|instruct|out\(4) & (!\rtl~61_combout\))) ) ) # ( !\U|DP|B|out\(10) & ( 
-- (!\U|instruct|out\(4) & ((!\U|instruct|out\(11) & (\rtl~61_combout\ & \U|DP|A|out[9]~DUPLICATE_q\)) # (\U|instruct|out\(11) & (!\rtl~61_combout\)))) # (\U|instruct|out\(4) & (\U|instruct|out\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100111001001100010011100100100000011011000010000001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|instruct|ALT_INV_out\(11),
	datac => \ALT_INV_rtl~61_combout\,
	datad => \U|DP|A|ALT_INV_out[9]~DUPLICATE_q\,
	dataf => \U|DP|B|ALT_INV_out\(10),
	combout => \U|DP|U2|Mux6~0_combout\);

-- Location: FF_X88_Y9_N14
\U|DP|C|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|C|out[9]~feeder_combout\,
	asdata => \U|DP|U2|Mux6~0_combout\,
	sload => \U|instruct|out\(12),
	ena => \U|statemachine|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|C|out\(9));

-- Location: MLABCELL_X87_Y9_N57
\rtl~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~72_combout\ = ( \U|DP|C|out\(9) & ( (\U|statemachine|vsel\(0) & ((\U|statemachine|vsel\(1)) # (\U|instruct|out\(7)))) ) ) # ( !\U|DP|C|out\(9) & ( (\U|statemachine|vsel\(0) & (\U|instruct|out\(7) & !\U|statemachine|vsel\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_vsel\(0),
	datab => \U|instruct|ALT_INV_out\(7),
	datac => \U|statemachine|ALT_INV_vsel\(1),
	dataf => \U|DP|C|ALT_INV_out\(9),
	combout => \rtl~72_combout\);

-- Location: FF_X87_Y3_N40
\U|DP|REGFILE|Rone|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~72_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rone|out\(9));

-- Location: LABCELL_X80_Y7_N15
\U|DP|REGFILE|Rfour|out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rfour|out[9]~feeder_combout\ = ( \rtl~72_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_rtl~72_combout\,
	combout => \U|DP|REGFILE|Rfour|out[9]~feeder_combout\);

-- Location: FF_X80_Y7_N16
\U|DP|REGFILE|Rfour|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rfour|out[9]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfour|out\(9));

-- Location: FF_X84_Y7_N56
\U|DP|REGFILE|Rzero|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~72_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rzero|out\(9));

-- Location: MLABCELL_X84_Y7_N54
\U|DP|REGFILE|outp|b[9]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[9]~27_combout\ = ( \U|DP|REGFILE|Rzero|out\(9) & ( \U|dec_i|locsel|Mux0~0_combout\ & ( (!\U|dec_i|locsel|Mux1~0_combout\ & (\U|DP|REGFILE|Rfour|out\(9) & !\U|dec_i|locsel|Mux2~0_combout\)) ) ) ) # ( !\U|DP|REGFILE|Rzero|out\(9) & ( 
-- \U|dec_i|locsel|Mux0~0_combout\ & ( (!\U|dec_i|locsel|Mux1~0_combout\ & (\U|DP|REGFILE|Rfour|out\(9) & !\U|dec_i|locsel|Mux2~0_combout\)) ) ) ) # ( \U|DP|REGFILE|Rzero|out\(9) & ( !\U|dec_i|locsel|Mux0~0_combout\ & ( (!\U|dec_i|locsel|Mux1~0_combout\ & 
-- ((!\U|dec_i|locsel|Mux2~0_combout\) # (\U|DP|REGFILE|Rone|out\(9)))) ) ) ) # ( !\U|DP|REGFILE|Rzero|out\(9) & ( !\U|dec_i|locsel|Mux0~0_combout\ & ( (!\U|dec_i|locsel|Mux1~0_combout\ & (\U|DP|REGFILE|Rone|out\(9) & \U|dec_i|locsel|Mux2~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010101010100010001000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datab => \U|DP|REGFILE|Rone|ALT_INV_out\(9),
	datac => \U|DP|REGFILE|Rfour|ALT_INV_out\(9),
	datad => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datae => \U|DP|REGFILE|Rzero|ALT_INV_out\(9),
	dataf => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|outp|b[9]~27_combout\);

-- Location: FF_X87_Y7_N47
\U|DP|REGFILE|Rthree|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~72_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rthree|out\(9));

-- Location: FF_X84_Y6_N8
\U|DP|REGFILE|Rseven|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~72_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rseven|out\(9));

-- Location: FF_X88_Y6_N59
\U|DP|REGFILE|Rfive|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~72_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfive|out\(9));

-- Location: LABCELL_X88_Y6_N57
\U|DP|REGFILE|outp|b[9]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[9]~29_combout\ = ( \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|dec_i|locsel|Mux0~0_combout\ & ((!\U|dec_i|locsel|Mux1~0_combout\ & ((\U|DP|REGFILE|Rfive|out\(9)))) # (\U|dec_i|locsel|Mux1~0_combout\ & (\U|DP|REGFILE|Rseven|out\(9))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001001000110000000100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datab => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datac => \U|DP|REGFILE|Rseven|ALT_INV_out\(9),
	datad => \U|DP|REGFILE|Rfive|ALT_INV_out\(9),
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|outp|b[9]~29_combout\);

-- Location: FF_X88_Y4_N34
\U|DP|REGFILE|Rsix|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~72_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rsix|out\(9));

-- Location: FF_X88_Y3_N25
\U|DP|REGFILE|Rtwo|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~72_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rtwo|out\(9));

-- Location: LABCELL_X88_Y3_N9
\U|DP|REGFILE|outp|b[9]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[9]~28_combout\ = ( \U|dec_i|locsel|Mux1~0_combout\ & ( \U|dec_i|locsel|Mux0~0_combout\ & ( (\U|DP|REGFILE|Rsix|out\(9) & !\U|dec_i|locsel|Mux2~0_combout\) ) ) ) # ( \U|dec_i|locsel|Mux1~0_combout\ & ( !\U|dec_i|locsel|Mux0~0_combout\ 
-- & ( (\U|DP|REGFILE|Rtwo|out\(9) & !\U|dec_i|locsel|Mux2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rsix|ALT_INV_out\(9),
	datac => \U|DP|REGFILE|Rtwo|ALT_INV_out\(9),
	datad => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datae => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	dataf => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|outp|b[9]~28_combout\);

-- Location: MLABCELL_X87_Y7_N42
\U|DP|REGFILE|outp|b[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b\(9) = ( \U|DP|REGFILE|outp|b[9]~28_combout\ ) # ( !\U|DP|REGFILE|outp|b[9]~28_combout\ & ( (((\U|DP|REGFILE|Rthree|out\(9) & \U|DP|REGFILE|bot|ShiftLeft0~0_combout\)) # (\U|DP|REGFILE|outp|b[9]~29_combout\)) # 
-- (\U|DP|REGFILE|outp|b[9]~27_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011111111111010101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|outp|ALT_INV_b[9]~27_combout\,
	datab => \U|DP|REGFILE|Rthree|ALT_INV_out\(9),
	datac => \U|DP|REGFILE|bot|ALT_INV_ShiftLeft0~0_combout\,
	datad => \U|DP|REGFILE|outp|ALT_INV_b[9]~29_combout\,
	dataf => \U|DP|REGFILE|outp|ALT_INV_b[9]~28_combout\,
	combout => \U|DP|REGFILE|outp|b\(9));

-- Location: FF_X87_Y7_N56
\U|DP|B|out[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(9),
	sload => VCC,
	ena => \U|statemachine|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|B|out[9]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y9_N9
\U|DP|C|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|C|out[8]~feeder_combout\ = ( \U|DP|U2|Add0~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|U2|ALT_INV_Add0~33_sumout\,
	combout => \U|DP|C|out[8]~feeder_combout\);

-- Location: LABCELL_X85_Y7_N39
\U|DP|U2|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Mux7~0_combout\ = ( \rtl~60_combout\ & ( (!\U|instruct|out\(11) & (\U|DP|A|out\(8) & ((!\U|instruct|out\(4)) # (\U|DP|B|out\(9))))) # (\U|instruct|out\(11) & (!\U|DP|B|out\(9) & (\U|instruct|out\(4)))) ) ) # ( !\rtl~60_combout\ & ( 
-- (!\U|instruct|out\(11) & (\U|DP|B|out\(9) & (\U|instruct|out\(4) & \U|DP|A|out\(8)))) # (\U|instruct|out\(11) & ((!\U|DP|B|out\(9)) # ((!\U|instruct|out\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010110010101000101011000000100101001100000010010100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(11),
	datab => \U|DP|B|ALT_INV_out\(9),
	datac => \U|instruct|ALT_INV_out\(4),
	datad => \U|DP|A|ALT_INV_out\(8),
	dataf => \ALT_INV_rtl~60_combout\,
	combout => \U|DP|U2|Mux7~0_combout\);

-- Location: FF_X88_Y9_N11
\U|DP|C|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|C|out[8]~feeder_combout\,
	asdata => \U|DP|U2|Mux7~0_combout\,
	sload => \U|instruct|out\(12),
	ena => \U|statemachine|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|C|out\(8));

-- Location: MLABCELL_X87_Y9_N54
\rtl~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~71_combout\ = ( \U|statemachine|vsel\(1) & ( (\U|statemachine|vsel\(0) & \U|DP|C|out\(8)) ) ) # ( !\U|statemachine|vsel\(1) & ( (\U|statemachine|vsel\(0) & \U|instruct|out\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_vsel\(0),
	datac => \U|DP|C|ALT_INV_out\(8),
	datad => \U|instruct|ALT_INV_out\(7),
	dataf => \U|statemachine|ALT_INV_vsel\(1),
	combout => \rtl~71_combout\);

-- Location: FF_X87_Y7_N44
\U|DP|REGFILE|Rthree|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~71_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rthree|out\(8));

-- Location: MLABCELL_X84_Y6_N39
\U|DP|REGFILE|Rseven|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rseven|out[8]~feeder_combout\ = ( \rtl~71_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_rtl~71_combout\,
	combout => \U|DP|REGFILE|Rseven|out[8]~feeder_combout\);

-- Location: FF_X84_Y6_N41
\U|DP|REGFILE|Rseven|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rseven|out[8]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rseven|out\(8));

-- Location: FF_X88_Y6_N56
\U|DP|REGFILE|Rfive|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~71_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfive|out\(8));

-- Location: LABCELL_X88_Y6_N54
\U|DP|REGFILE|outp|b[8]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[8]~26_combout\ = ( \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|dec_i|locsel|Mux0~0_combout\ & ((!\U|dec_i|locsel|Mux1~0_combout\ & ((\U|DP|REGFILE|Rfive|out\(8)))) # (\U|dec_i|locsel|Mux1~0_combout\ & (\U|DP|REGFILE|Rseven|out\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001001000110000000100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datab => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datac => \U|DP|REGFILE|Rseven|ALT_INV_out\(8),
	datad => \U|DP|REGFILE|Rfive|ALT_INV_out\(8),
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|outp|b[8]~26_combout\);

-- Location: FF_X88_Y4_N32
\U|DP|REGFILE|Rsix|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~71_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rsix|out\(8));

-- Location: FF_X88_Y3_N29
\U|DP|REGFILE|Rtwo|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~71_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rtwo|out\(8));

-- Location: LABCELL_X88_Y3_N27
\U|DP|REGFILE|outp|b[8]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[8]~25_combout\ = ( \U|DP|REGFILE|Rtwo|out\(8) & ( \U|dec_i|locsel|Mux0~0_combout\ & ( (\U|DP|REGFILE|Rsix|out\(8) & (\U|dec_i|locsel|Mux1~0_combout\ & !\U|dec_i|locsel|Mux2~0_combout\)) ) ) ) # ( !\U|DP|REGFILE|Rtwo|out\(8) & ( 
-- \U|dec_i|locsel|Mux0~0_combout\ & ( (\U|DP|REGFILE|Rsix|out\(8) & (\U|dec_i|locsel|Mux1~0_combout\ & !\U|dec_i|locsel|Mux2~0_combout\)) ) ) ) # ( \U|DP|REGFILE|Rtwo|out\(8) & ( !\U|dec_i|locsel|Mux0~0_combout\ & ( (\U|dec_i|locsel|Mux1~0_combout\ & 
-- !\U|dec_i|locsel|Mux2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Rsix|ALT_INV_out\(8),
	datac => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datad => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datae => \U|DP|REGFILE|Rtwo|ALT_INV_out\(8),
	dataf => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|outp|b[8]~25_combout\);

-- Location: FF_X87_Y6_N32
\U|DP|REGFILE|Rfour|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~71_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfour|out\(8));

-- Location: FF_X88_Y6_N32
\U|DP|REGFILE|Rzero|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~71_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rzero|out\(8));

-- Location: FF_X84_Y5_N49
\U|DP|REGFILE|Rone|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~71_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rone|out\(8));

-- Location: LABCELL_X88_Y6_N15
\U|DP|REGFILE|outp|b[8]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[8]~24_combout\ = ( !\U|dec_i|locsel|Mux0~0_combout\ & ( \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|DP|REGFILE|Rone|out\(8) & !\U|dec_i|locsel|Mux1~0_combout\) ) ) ) # ( \U|dec_i|locsel|Mux0~0_combout\ & ( !\U|dec_i|locsel|Mux2~0_combout\ 
-- & ( (\U|DP|REGFILE|Rfour|out\(8) & !\U|dec_i|locsel|Mux1~0_combout\) ) ) ) # ( !\U|dec_i|locsel|Mux0~0_combout\ & ( !\U|dec_i|locsel|Mux2~0_combout\ & ( (\U|DP|REGFILE|Rzero|out\(8) & !\U|dec_i|locsel|Mux1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000010101010000000000001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rfour|ALT_INV_out\(8),
	datab => \U|DP|REGFILE|Rzero|ALT_INV_out\(8),
	datac => \U|DP|REGFILE|Rone|ALT_INV_out\(8),
	datad => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datae => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|outp|b[8]~24_combout\);

-- Location: MLABCELL_X87_Y7_N3
\U|DP|REGFILE|outp|b[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b\(8) = ( \U|DP|REGFILE|outp|b[8]~25_combout\ & ( \U|DP|REGFILE|outp|b[8]~24_combout\ ) ) # ( !\U|DP|REGFILE|outp|b[8]~25_combout\ & ( \U|DP|REGFILE|outp|b[8]~24_combout\ ) ) # ( \U|DP|REGFILE|outp|b[8]~25_combout\ & ( 
-- !\U|DP|REGFILE|outp|b[8]~24_combout\ ) ) # ( !\U|DP|REGFILE|outp|b[8]~25_combout\ & ( !\U|DP|REGFILE|outp|b[8]~24_combout\ & ( ((\U|DP|REGFILE|Rthree|out\(8) & \U|DP|REGFILE|bot|ShiftLeft0~0_combout\)) # (\U|DP|REGFILE|outp|b[8]~26_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Rthree|ALT_INV_out\(8),
	datac => \U|DP|REGFILE|outp|ALT_INV_b[8]~26_combout\,
	datad => \U|DP|REGFILE|bot|ALT_INV_ShiftLeft0~0_combout\,
	datae => \U|DP|REGFILE|outp|ALT_INV_b[8]~25_combout\,
	dataf => \U|DP|REGFILE|outp|ALT_INV_b[8]~24_combout\,
	combout => \U|DP|REGFILE|outp|b\(8));

-- Location: FF_X87_Y7_N29
\U|DP|B|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(8),
	sload => VCC,
	ena => \U|statemachine|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|B|out\(8));

-- Location: MLABCELL_X84_Y8_N48
\U|DP|C|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|C|out[7]~feeder_combout\ = ( \U|DP|U2|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|U2|ALT_INV_Add0~29_sumout\,
	combout => \U|DP|C|out[7]~feeder_combout\);

-- Location: MLABCELL_X87_Y8_N3
\rtl~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~59_combout\ = ( \U|DP|B|out\(8) & ( ((!\U|instruct|out\(3) & (\U|DP|B|out\(7))) # (\U|instruct|out\(3) & ((\U|DP|B|out\(6))))) # (\U|instruct|out\(4)) ) ) # ( !\U|DP|B|out\(8) & ( (!\U|instruct|out\(4) & ((!\U|instruct|out\(3) & (\U|DP|B|out\(7))) # 
-- (\U|instruct|out\(3) & ((\U|DP|B|out\(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|instruct|ALT_INV_out\(3),
	datac => \U|DP|B|ALT_INV_out\(7),
	datad => \U|DP|B|ALT_INV_out\(6),
	dataf => \U|DP|B|ALT_INV_out\(8),
	combout => \rtl~59_combout\);

-- Location: LABCELL_X85_Y8_N6
\U|DP|U2|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Mux8~0_combout\ = ( \rtl~59_combout\ & ( (\U|DP|A|out\(7) & !\U|instruct|out\(11)) ) ) # ( !\rtl~59_combout\ & ( \U|instruct|out\(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|A|ALT_INV_out\(7),
	datac => \U|instruct|ALT_INV_out\(11),
	dataf => \ALT_INV_rtl~59_combout\,
	combout => \U|DP|U2|Mux8~0_combout\);

-- Location: FF_X84_Y8_N49
\U|DP|C|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|C|out[7]~feeder_combout\,
	asdata => \U|DP|U2|Mux8~0_combout\,
	sload => \U|instruct|out\(12),
	ena => \U|statemachine|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|C|out\(7));

-- Location: MLABCELL_X87_Y5_N15
\rtl~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~70_combout\ = ( \IN|REG|Q\(7) & ( (!\U|statemachine|vsel\(1) & (\U|instruct|out\(7) & (\U|statemachine|vsel\(0)))) # (\U|statemachine|vsel\(1) & (((!\U|statemachine|vsel\(0)) # (\U|DP|C|out\(7))))) ) ) # ( !\IN|REG|Q\(7) & ( (\U|statemachine|vsel\(0) 
-- & ((!\U|statemachine|vsel\(1) & (\U|instruct|out\(7))) # (\U|statemachine|vsel\(1) & ((\U|DP|C|out\(7)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111000001000000011100110100001101110011010000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(7),
	datab => \U|statemachine|ALT_INV_vsel\(1),
	datac => \U|statemachine|ALT_INV_vsel\(0),
	datad => \U|DP|C|ALT_INV_out\(7),
	dataf => \IN|REG|ALT_INV_Q\(7),
	combout => \rtl~70_combout\);

-- Location: FF_X88_Y4_N49
\U|DP|REGFILE|Rsix|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~70_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rsix|out\(7));

-- Location: FF_X88_Y3_N35
\U|DP|REGFILE|Rtwo|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~70_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rtwo|out\(7));

-- Location: LABCELL_X88_Y3_N33
\U|DP|REGFILE|outp|b[7]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[7]~22_combout\ = ( \U|DP|REGFILE|Rtwo|out\(7) & ( \U|dec_i|locsel|Mux0~0_combout\ & ( (\U|DP|REGFILE|Rsix|out\(7) & (\U|dec_i|locsel|Mux1~0_combout\ & !\U|dec_i|locsel|Mux2~0_combout\)) ) ) ) # ( !\U|DP|REGFILE|Rtwo|out\(7) & ( 
-- \U|dec_i|locsel|Mux0~0_combout\ & ( (\U|DP|REGFILE|Rsix|out\(7) & (\U|dec_i|locsel|Mux1~0_combout\ & !\U|dec_i|locsel|Mux2~0_combout\)) ) ) ) # ( \U|DP|REGFILE|Rtwo|out\(7) & ( !\U|dec_i|locsel|Mux0~0_combout\ & ( (\U|dec_i|locsel|Mux1~0_combout\ & 
-- !\U|dec_i|locsel|Mux2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rsix|ALT_INV_out\(7),
	datac => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datad => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datae => \U|DP|REGFILE|Rtwo|ALT_INV_out\(7),
	dataf => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|outp|b[7]~22_combout\);

-- Location: FF_X88_Y5_N56
\U|DP|REGFILE|Rseven|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~70_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rseven|out\(7));

-- Location: FF_X88_Y5_N20
\U|DP|REGFILE|Rfive|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~70_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfive|out\(7));

-- Location: LABCELL_X88_Y5_N3
\U|DP|REGFILE|outp|b[7]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[7]~23_combout\ = ( \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|dec_i|locsel|Mux0~0_combout\ & ((!\U|dec_i|locsel|Mux1~0_combout\ & ((\U|DP|REGFILE|Rfive|out\(7)))) # (\U|dec_i|locsel|Mux1~0_combout\ & (\U|DP|REGFILE|Rseven|out\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001001100010000000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rseven|ALT_INV_out\(7),
	datab => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datac => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datad => \U|DP|REGFILE|Rfive|ALT_INV_out\(7),
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|outp|b[7]~23_combout\);

-- Location: MLABCELL_X87_Y4_N54
\U|DP|REGFILE|Rthree|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rthree|out[7]~feeder_combout\ = ( \rtl~70_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_rtl~70_combout\,
	combout => \U|DP|REGFILE|Rthree|out[7]~feeder_combout\);

-- Location: FF_X87_Y4_N56
\U|DP|REGFILE|Rthree|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rthree|out[7]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rthree|out\(7));

-- Location: FF_X87_Y3_N2
\U|DP|REGFILE|Rone|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~70_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rone|out\(7));

-- Location: FF_X87_Y3_N8
\U|DP|REGFILE|Rfour|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~70_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfour|out\(7));

-- Location: FF_X87_Y3_N26
\U|DP|REGFILE|Rzero|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \rtl~70_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rzero|out\(7));

-- Location: MLABCELL_X87_Y3_N24
\U|DP|REGFILE|outp|b[7]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[7]~21_combout\ = ( \U|DP|REGFILE|Rzero|out\(7) & ( \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|DP|REGFILE|Rone|out\(7) & (!\U|dec_i|locsel|Mux0~0_combout\ & !\U|dec_i|locsel|Mux1~0_combout\)) ) ) ) # ( !\U|DP|REGFILE|Rzero|out\(7) & ( 
-- \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|DP|REGFILE|Rone|out\(7) & (!\U|dec_i|locsel|Mux0~0_combout\ & !\U|dec_i|locsel|Mux1~0_combout\)) ) ) ) # ( \U|DP|REGFILE|Rzero|out\(7) & ( !\U|dec_i|locsel|Mux2~0_combout\ & ( (!\U|dec_i|locsel|Mux1~0_combout\ & 
-- ((!\U|dec_i|locsel|Mux0~0_combout\) # (\U|DP|REGFILE|Rfour|out\(7)))) ) ) ) # ( !\U|DP|REGFILE|Rzero|out\(7) & ( !\U|dec_i|locsel|Mux2~0_combout\ & ( (\U|DP|REGFILE|Rfour|out\(7) & (\U|dec_i|locsel|Mux0~0_combout\ & !\U|dec_i|locsel|Mux1~0_combout\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000111100110000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rone|ALT_INV_out\(7),
	datab => \U|DP|REGFILE|Rfour|ALT_INV_out\(7),
	datac => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datad => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datae => \U|DP|REGFILE|Rzero|ALT_INV_out\(7),
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|outp|b[7]~21_combout\);

-- Location: MLABCELL_X87_Y7_N21
\U|DP|REGFILE|outp|b[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b\(7) = ( \U|DP|REGFILE|Rthree|out\(7) & ( \U|DP|REGFILE|outp|b[7]~21_combout\ ) ) # ( !\U|DP|REGFILE|Rthree|out\(7) & ( \U|DP|REGFILE|outp|b[7]~21_combout\ ) ) # ( \U|DP|REGFILE|Rthree|out\(7) & ( !\U|DP|REGFILE|outp|b[7]~21_combout\ & 
-- ( ((\U|DP|REGFILE|bot|ShiftLeft0~0_combout\) # (\U|DP|REGFILE|outp|b[7]~23_combout\)) # (\U|DP|REGFILE|outp|b[7]~22_combout\) ) ) ) # ( !\U|DP|REGFILE|Rthree|out\(7) & ( !\U|DP|REGFILE|outp|b[7]~21_combout\ & ( (\U|DP|REGFILE|outp|b[7]~23_combout\) # 
-- (\U|DP|REGFILE|outp|b[7]~22_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|outp|ALT_INV_b[7]~22_combout\,
	datac => \U|DP|REGFILE|outp|ALT_INV_b[7]~23_combout\,
	datad => \U|DP|REGFILE|bot|ALT_INV_ShiftLeft0~0_combout\,
	datae => \U|DP|REGFILE|Rthree|ALT_INV_out\(7),
	dataf => \U|DP|REGFILE|outp|ALT_INV_b[7]~21_combout\,
	combout => \U|DP|REGFILE|outp|b\(7));

-- Location: FF_X87_Y7_N2
\U|DP|B|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(7),
	sload => VCC,
	ena => \U|statemachine|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|B|out\(7));

-- Location: LABCELL_X85_Y8_N27
\U|DP|C|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|C|out[6]~feeder_combout\ = ( \U|DP|U2|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|U2|ALT_INV_Add0~25_sumout\,
	combout => \U|DP|C|out[6]~feeder_combout\);

-- Location: MLABCELL_X87_Y8_N39
\rtl~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~58_combout\ = ( \U|instruct|out\(4) & ( \U|DP|B|out\(7) ) ) # ( !\U|instruct|out\(4) & ( (!\U|instruct|out\(3) & (\U|DP|B|out\(6))) # (\U|instruct|out\(3) & ((\U|DP|B|out\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|B|ALT_INV_out\(6),
	datab => \U|DP|B|ALT_INV_out\(5),
	datac => \U|DP|B|ALT_INV_out\(7),
	datad => \U|instruct|ALT_INV_out\(3),
	dataf => \U|instruct|ALT_INV_out\(4),
	combout => \rtl~58_combout\);

-- Location: MLABCELL_X84_Y8_N18
\U|DP|U2|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Mux9~0_combout\ = ( !\U|instruct|out\(11) & ( \rtl~58_combout\ & ( \U|DP|A|out\(6) ) ) ) # ( \U|instruct|out\(11) & ( !\rtl~58_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|A|ALT_INV_out\(6),
	datae => \U|instruct|ALT_INV_out\(11),
	dataf => \ALT_INV_rtl~58_combout\,
	combout => \U|DP|U2|Mux9~0_combout\);

-- Location: FF_X85_Y8_N28
\U|DP|C|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|C|out[6]~feeder_combout\,
	asdata => \U|DP|U2|Mux9~0_combout\,
	sload => \U|instruct|out\(12),
	ena => \U|statemachine|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|C|out\(6));

-- Location: LABCELL_X88_Y5_N24
\U|DP|U0|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U0|Mux9~0_combout\ = ( \U|statemachine|vsel\(1) & ( \U|statemachine|vsel\(0) & ( \U|DP|C|out\(6) ) ) ) # ( !\U|statemachine|vsel\(1) & ( \U|statemachine|vsel\(0) & ( \U|instruct|out\(6) ) ) ) # ( \U|statemachine|vsel\(1) & ( 
-- !\U|statemachine|vsel\(0) & ( \IN|REG|Q\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IN|REG|ALT_INV_Q\(6),
	datab => \U|instruct|ALT_INV_out\(6),
	datac => \U|DP|C|ALT_INV_out\(6),
	datae => \U|statemachine|ALT_INV_vsel\(1),
	dataf => \U|statemachine|ALT_INV_vsel\(0),
	combout => \U|DP|U0|Mux9~0_combout\);

-- Location: FF_X88_Y4_N25
\U|DP|REGFILE|Rthree|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux9~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rthree|out\(6));

-- Location: FF_X88_Y4_N4
\U|DP|REGFILE|Rsix|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux9~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rsix|out\(6));

-- Location: FF_X88_Y3_N16
\U|DP|REGFILE|Rtwo|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux9~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rtwo|out\(6));

-- Location: MLABCELL_X87_Y6_N57
\U|DP|REGFILE|outp|b[6]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[6]~19_combout\ = ( !\U|dec_i|locsel|Mux2~0_combout\ & ( \U|dec_i|locsel|Mux1~0_combout\ & ( (!\U|dec_i|locsel|Mux0~0_combout\ & ((\U|DP|REGFILE|Rtwo|out\(6)))) # (\U|dec_i|locsel|Mux0~0_combout\ & (\U|DP|REGFILE|Rsix|out\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Rsix|ALT_INV_out\(6),
	datac => \U|DP|REGFILE|Rtwo|ALT_INV_out\(6),
	datad => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datae => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	dataf => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	combout => \U|DP|REGFILE|outp|b[6]~19_combout\);

-- Location: FF_X88_Y5_N10
\U|DP|REGFILE|Rseven|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux9~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rseven|out\(6));

-- Location: FF_X88_Y5_N29
\U|DP|REGFILE|Rfive|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux9~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfive|out\(6));

-- Location: MLABCELL_X87_Y6_N45
\U|DP|REGFILE|outp|b[6]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[6]~20_combout\ = ( \U|DP|REGFILE|Rfive|out\(6) & ( \U|dec_i|locsel|Mux1~0_combout\ & ( (\U|dec_i|locsel|Mux0~0_combout\ & (\U|DP|REGFILE|Rseven|out\(6) & \U|dec_i|locsel|Mux2~0_combout\)) ) ) ) # ( !\U|DP|REGFILE|Rfive|out\(6) & ( 
-- \U|dec_i|locsel|Mux1~0_combout\ & ( (\U|dec_i|locsel|Mux0~0_combout\ & (\U|DP|REGFILE|Rseven|out\(6) & \U|dec_i|locsel|Mux2~0_combout\)) ) ) ) # ( \U|DP|REGFILE|Rfive|out\(6) & ( !\U|dec_i|locsel|Mux1~0_combout\ & ( (\U|dec_i|locsel|Mux0~0_combout\ & 
-- \U|dec_i|locsel|Mux2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datab => \U|DP|REGFILE|Rseven|ALT_INV_out\(6),
	datad => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datae => \U|DP|REGFILE|Rfive|ALT_INV_out\(6),
	dataf => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	combout => \U|DP|REGFILE|outp|b[6]~20_combout\);

-- Location: FF_X87_Y6_N44
\U|DP|REGFILE|Rzero|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux9~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rzero|out\(6));

-- Location: MLABCELL_X87_Y3_N3
\U|DP|REGFILE|Rone|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rone|out[6]~feeder_combout\ = \U|DP|U0|Mux9~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|U0|ALT_INV_Mux9~0_combout\,
	combout => \U|DP|REGFILE|Rone|out[6]~feeder_combout\);

-- Location: FF_X87_Y3_N4
\U|DP|REGFILE|Rone|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rone|out[6]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rone|out\(6));

-- Location: MLABCELL_X87_Y3_N54
\U|DP|REGFILE|Rfour|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rfour|out[6]~feeder_combout\ = \U|DP|U0|Mux9~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|U0|ALT_INV_Mux9~0_combout\,
	combout => \U|DP|REGFILE|Rfour|out[6]~feeder_combout\);

-- Location: FF_X87_Y3_N56
\U|DP|REGFILE|Rfour|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rfour|out[6]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfour|out\(6));

-- Location: MLABCELL_X87_Y6_N36
\U|DP|REGFILE|outp|b[6]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[6]~18_combout\ = ( \U|DP|REGFILE|Rfour|out\(6) & ( \U|dec_i|locsel|Mux2~0_combout\ & ( (!\U|dec_i|locsel|Mux1~0_combout\ & (!\U|dec_i|locsel|Mux0~0_combout\ & \U|DP|REGFILE|Rone|out\(6))) ) ) ) # ( !\U|DP|REGFILE|Rfour|out\(6) & ( 
-- \U|dec_i|locsel|Mux2~0_combout\ & ( (!\U|dec_i|locsel|Mux1~0_combout\ & (!\U|dec_i|locsel|Mux0~0_combout\ & \U|DP|REGFILE|Rone|out\(6))) ) ) ) # ( \U|DP|REGFILE|Rfour|out\(6) & ( !\U|dec_i|locsel|Mux2~0_combout\ & ( (!\U|dec_i|locsel|Mux1~0_combout\ & 
-- ((\U|dec_i|locsel|Mux0~0_combout\) # (\U|DP|REGFILE|Rzero|out\(6)))) ) ) ) # ( !\U|DP|REGFILE|Rfour|out\(6) & ( !\U|dec_i|locsel|Mux2~0_combout\ & ( (!\U|dec_i|locsel|Mux1~0_combout\ & (\U|DP|REGFILE|Rzero|out\(6) & !\U|dec_i|locsel|Mux0~0_combout\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001010100010101000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datab => \U|DP|REGFILE|Rzero|ALT_INV_out\(6),
	datac => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datad => \U|DP|REGFILE|Rone|ALT_INV_out\(6),
	datae => \U|DP|REGFILE|Rfour|ALT_INV_out\(6),
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|outp|b[6]~18_combout\);

-- Location: MLABCELL_X87_Y6_N9
\U|DP|REGFILE|outp|b[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b\(6) = ( \U|DP|REGFILE|outp|b[6]~18_combout\ & ( \U|DP|REGFILE|bot|ShiftLeft0~0_combout\ ) ) # ( !\U|DP|REGFILE|outp|b[6]~18_combout\ & ( \U|DP|REGFILE|bot|ShiftLeft0~0_combout\ & ( ((\U|DP|REGFILE|outp|b[6]~20_combout\) # 
-- (\U|DP|REGFILE|outp|b[6]~19_combout\)) # (\U|DP|REGFILE|Rthree|out\(6)) ) ) ) # ( \U|DP|REGFILE|outp|b[6]~18_combout\ & ( !\U|DP|REGFILE|bot|ShiftLeft0~0_combout\ ) ) # ( !\U|DP|REGFILE|outp|b[6]~18_combout\ & ( !\U|DP|REGFILE|bot|ShiftLeft0~0_combout\ & 
-- ( (\U|DP|REGFILE|outp|b[6]~20_combout\) # (\U|DP|REGFILE|outp|b[6]~19_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111111111111111111101111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rthree|ALT_INV_out\(6),
	datab => \U|DP|REGFILE|outp|ALT_INV_b[6]~19_combout\,
	datac => \U|DP|REGFILE|outp|ALT_INV_b[6]~20_combout\,
	datae => \U|DP|REGFILE|outp|ALT_INV_b[6]~18_combout\,
	dataf => \U|DP|REGFILE|bot|ALT_INV_ShiftLeft0~0_combout\,
	combout => \U|DP|REGFILE|outp|b\(6));

-- Location: FF_X87_Y8_N5
\U|DP|B|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(6),
	sload => VCC,
	ena => \U|statemachine|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|B|out\(6));

-- Location: LABCELL_X88_Y8_N3
\U|DP|C|out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|C|out[5]~feeder_combout\ = ( \U|DP|U2|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|U2|ALT_INV_Add0~21_sumout\,
	combout => \U|DP|C|out[5]~feeder_combout\);

-- Location: LABCELL_X88_Y8_N21
\U|DP|U2|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Mux10~0_combout\ = ( \U|DP|A|out\(5) & ( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & (!\rtl~57_combout\)) # (\U|instruct|out\(4) & ((!\U|DP|B|out\(6)))))) ) ) # ( !\U|DP|A|out\(5) & ( (\U|instruct|out\(11) & ((!\U|instruct|out\(4) & 
-- (!\rtl~57_combout\)) # (\U|instruct|out\(4) & ((!\U|DP|B|out\(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100100000001100010010000000111001011011000011100101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|instruct|ALT_INV_out\(11),
	datac => \ALT_INV_rtl~57_combout\,
	datad => \U|DP|B|ALT_INV_out\(6),
	dataf => \U|DP|A|ALT_INV_out\(5),
	combout => \U|DP|U2|Mux10~0_combout\);

-- Location: FF_X88_Y8_N4
\U|DP|C|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|C|out[5]~feeder_combout\,
	asdata => \U|DP|U2|Mux10~0_combout\,
	sload => \U|instruct|out\(12),
	ena => \U|statemachine|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|C|out\(5));

-- Location: LABCELL_X88_Y4_N15
\U|DP|U0|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U0|Mux10~0_combout\ = ( \IN|REG|Q\(5) & ( (!\U|statemachine|vsel\(0) & (((\U|statemachine|vsel\(1))))) # (\U|statemachine|vsel\(0) & ((!\U|statemachine|vsel\(1) & ((\U|instruct|out\(5)))) # (\U|statemachine|vsel\(1) & (\U|DP|C|out\(5))))) ) ) # ( 
-- !\IN|REG|Q\(5) & ( (\U|statemachine|vsel\(0) & ((!\U|statemachine|vsel\(1) & ((\U|instruct|out\(5)))) # (\U|statemachine|vsel\(1) & (\U|DP|C|out\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001010001000100000101101110110000010110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_vsel\(0),
	datab => \U|DP|C|ALT_INV_out\(5),
	datac => \U|instruct|ALT_INV_out\(5),
	datad => \U|statemachine|ALT_INV_vsel\(1),
	dataf => \IN|REG|ALT_INV_Q\(5),
	combout => \U|DP|U0|Mux10~0_combout\);

-- Location: FF_X88_Y4_N10
\U|DP|REGFILE|Rthree|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux10~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rthree|out\(5));

-- Location: FF_X88_Y6_N44
\U|DP|REGFILE|Rfive|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux10~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfive|out\(5));

-- Location: FF_X88_Y5_N58
\U|DP|REGFILE|Rseven|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux10~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rseven|out\(5));

-- Location: LABCELL_X88_Y6_N42
\U|DP|REGFILE|outp|b[5]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[5]~17_combout\ = ( \U|DP|REGFILE|Rseven|out\(5) & ( (\U|dec_i|locsel|Mux0~0_combout\ & (\U|dec_i|locsel|Mux2~0_combout\ & ((\U|DP|REGFILE|Rfive|out\(5)) # (\U|dec_i|locsel|Mux1~0_combout\)))) ) ) # ( !\U|DP|REGFILE|Rseven|out\(5) & ( 
-- (!\U|dec_i|locsel|Mux1~0_combout\ & (\U|dec_i|locsel|Mux0~0_combout\ & (\U|dec_i|locsel|Mux2~0_combout\ & \U|DP|REGFILE|Rfive|out\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000001000000110000000100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datab => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datac => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datad => \U|DP|REGFILE|Rfive|ALT_INV_out\(5),
	dataf => \U|DP|REGFILE|Rseven|ALT_INV_out\(5),
	combout => \U|DP|REGFILE|outp|b[5]~17_combout\);

-- Location: FF_X87_Y4_N31
\U|DP|REGFILE|Rzero|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux10~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rzero|out\(5));

-- Location: FF_X87_Y3_N22
\U|DP|REGFILE|Rfour|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux10~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfour|out\(5));

-- Location: FF_X88_Y3_N43
\U|DP|REGFILE|Rone|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux10~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rone|out\(5));

-- Location: LABCELL_X88_Y4_N27
\U|DP|REGFILE|outp|b[5]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[5]~15_combout\ = ( !\U|dec_i|locsel|Mux1~0_combout\ & ( \U|dec_i|locsel|Mux0~0_combout\ & ( (\U|DP|REGFILE|Rfour|out\(5) & !\U|dec_i|locsel|Mux2~0_combout\) ) ) ) # ( !\U|dec_i|locsel|Mux1~0_combout\ & ( 
-- !\U|dec_i|locsel|Mux0~0_combout\ & ( (!\U|dec_i|locsel|Mux2~0_combout\ & (\U|DP|REGFILE|Rzero|out\(5))) # (\U|dec_i|locsel|Mux2~0_combout\ & ((\U|DP|REGFILE|Rone|out\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111000000000000000000110011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rzero|ALT_INV_out\(5),
	datab => \U|DP|REGFILE|Rfour|ALT_INV_out\(5),
	datac => \U|DP|REGFILE|Rone|ALT_INV_out\(5),
	datad => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datae => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	dataf => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|outp|b[5]~15_combout\);

-- Location: FF_X88_Y4_N14
\U|DP|REGFILE|Rsix|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux10~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rsix|out\(5));

-- Location: FF_X88_Y3_N41
\U|DP|REGFILE|Rtwo|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux10~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rtwo|out\(5));

-- Location: LABCELL_X88_Y3_N39
\U|DP|REGFILE|outp|b[5]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[5]~16_combout\ = ( \U|DP|REGFILE|Rtwo|out\(5) & ( \U|dec_i|locsel|Mux0~0_combout\ & ( (\U|DP|REGFILE|Rsix|out\(5) & (\U|dec_i|locsel|Mux1~0_combout\ & !\U|dec_i|locsel|Mux2~0_combout\)) ) ) ) # ( !\U|DP|REGFILE|Rtwo|out\(5) & ( 
-- \U|dec_i|locsel|Mux0~0_combout\ & ( (\U|DP|REGFILE|Rsix|out\(5) & (\U|dec_i|locsel|Mux1~0_combout\ & !\U|dec_i|locsel|Mux2~0_combout\)) ) ) ) # ( \U|DP|REGFILE|Rtwo|out\(5) & ( !\U|dec_i|locsel|Mux0~0_combout\ & ( (\U|dec_i|locsel|Mux1~0_combout\ & 
-- !\U|dec_i|locsel|Mux2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Rsix|ALT_INV_out\(5),
	datac => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datad => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datae => \U|DP|REGFILE|Rtwo|ALT_INV_out\(5),
	dataf => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|outp|b[5]~16_combout\);

-- Location: LABCELL_X88_Y6_N48
\U|DP|REGFILE|outp|b[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b\(5) = ( \U|DP|REGFILE|outp|b[5]~15_combout\ & ( \U|DP|REGFILE|outp|b[5]~16_combout\ ) ) # ( !\U|DP|REGFILE|outp|b[5]~15_combout\ & ( \U|DP|REGFILE|outp|b[5]~16_combout\ ) ) # ( \U|DP|REGFILE|outp|b[5]~15_combout\ & ( 
-- !\U|DP|REGFILE|outp|b[5]~16_combout\ ) ) # ( !\U|DP|REGFILE|outp|b[5]~15_combout\ & ( !\U|DP|REGFILE|outp|b[5]~16_combout\ & ( ((\U|DP|REGFILE|Rthree|out\(5) & \U|DP|REGFILE|bot|ShiftLeft0~0_combout\)) # (\U|DP|REGFILE|outp|b[5]~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rthree|ALT_INV_out\(5),
	datab => \U|DP|REGFILE|outp|ALT_INV_b[5]~17_combout\,
	datac => \U|DP|REGFILE|bot|ALT_INV_ShiftLeft0~0_combout\,
	datae => \U|DP|REGFILE|outp|ALT_INV_b[5]~15_combout\,
	dataf => \U|DP|REGFILE|outp|ALT_INV_b[5]~16_combout\,
	combout => \U|DP|REGFILE|outp|b\(5));

-- Location: FF_X87_Y8_N17
\U|DP|B|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(5),
	sload => VCC,
	ena => \U|statemachine|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|B|out\(5));

-- Location: LABCELL_X85_Y8_N54
\U|DP|C|out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|C|out[4]~feeder_combout\ = ( \U|DP|U2|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|U2|ALT_INV_Add0~17_sumout\,
	combout => \U|DP|C|out[4]~feeder_combout\);

-- Location: LABCELL_X88_Y8_N18
\U|DP|U2|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Mux11~0_combout\ = ( \U|DP|A|out\(4) & ( !\U|instruct|out\(11) $ (((!\U|instruct|out\(4) & ((!\rtl~56_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(5))))) ) ) # ( !\U|DP|A|out\(4) & ( (\U|instruct|out\(11) & ((!\U|instruct|out\(4) & 
-- ((!\rtl~56_combout\))) # (\U|instruct|out\(4) & (!\U|DP|B|out\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110110100111000011011010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|instruct|ALT_INV_out\(11),
	datac => \U|DP|B|ALT_INV_out\(5),
	datad => \ALT_INV_rtl~56_combout\,
	dataf => \U|DP|A|ALT_INV_out\(4),
	combout => \U|DP|U2|Mux11~0_combout\);

-- Location: FF_X85_Y8_N55
\U|DP|C|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|C|out[4]~feeder_combout\,
	asdata => \U|DP|U2|Mux11~0_combout\,
	sload => \U|instruct|out\(12),
	ena => \U|statemachine|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|C|out\(4));

-- Location: MLABCELL_X87_Y4_N57
\U|DP|U0|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U0|Mux11~0_combout\ = ( \IN|REG|Q\(4) & ( (!\U|statemachine|vsel\(1) & (\U|statemachine|vsel\(0) & ((\U|instruct|out\(4))))) # (\U|statemachine|vsel\(1) & ((!\U|statemachine|vsel\(0)) # ((\U|DP|C|out\(4))))) ) ) # ( !\IN|REG|Q\(4) & ( 
-- (\U|statemachine|vsel\(0) & ((!\U|statemachine|vsel\(1) & ((\U|instruct|out\(4)))) # (\U|statemachine|vsel\(1) & (\U|DP|C|out\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001101000101011001110100010101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_vsel\(1),
	datab => \U|statemachine|ALT_INV_vsel\(0),
	datac => \U|DP|C|ALT_INV_out\(4),
	datad => \U|instruct|ALT_INV_out\(4),
	dataf => \IN|REG|ALT_INV_Q\(4),
	combout => \U|DP|U0|Mux11~0_combout\);

-- Location: FF_X87_Y4_N55
\U|DP|REGFILE|Rthree|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux11~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rthree|out\(4));

-- Location: LABCELL_X88_Y5_N6
\U|DP|REGFILE|Rseven|out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rseven|out[4]~feeder_combout\ = \U|DP|U0|Mux11~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|U0|ALT_INV_Mux11~0_combout\,
	combout => \U|DP|REGFILE|Rseven|out[4]~feeder_combout\);

-- Location: FF_X88_Y5_N8
\U|DP|REGFILE|Rseven|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rseven|out[4]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rseven|out\(4));

-- Location: FF_X88_Y5_N26
\U|DP|REGFILE|Rfive|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux11~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfive|out\(4));

-- Location: LABCELL_X88_Y5_N39
\U|DP|REGFILE|outp|b[4]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[4]~14_combout\ = ( \U|DP|REGFILE|Rfive|out\(4) & ( (\U|dec_i|locsel|Mux2~0_combout\ & (\U|dec_i|locsel|Mux0~0_combout\ & ((!\U|dec_i|locsel|Mux1~0_combout\) # (\U|DP|REGFILE|Rseven|out\(4))))) ) ) # ( !\U|DP|REGFILE|Rfive|out\(4) & ( 
-- (\U|dec_i|locsel|Mux2~0_combout\ & (\U|dec_i|locsel|Mux0~0_combout\ & (\U|DP|REGFILE|Rseven|out\(4) & \U|dec_i|locsel|Mux1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100010001000000010001000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datab => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datac => \U|DP|REGFILE|Rseven|ALT_INV_out\(4),
	datad => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	dataf => \U|DP|REGFILE|Rfive|ALT_INV_out\(4),
	combout => \U|DP|REGFILE|outp|b[4]~14_combout\);

-- Location: FF_X88_Y3_N49
\U|DP|REGFILE|Rtwo|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux11~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rtwo|out\(4));

-- Location: FF_X88_Y4_N20
\U|DP|REGFILE|Rsix|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux11~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rsix|out\(4));

-- Location: MLABCELL_X87_Y4_N39
\U|DP|REGFILE|outp|b[4]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[4]~13_combout\ = ( \U|dec_i|locsel|Mux1~0_combout\ & ( \U|dec_i|locsel|Mux0~0_combout\ & ( (\U|DP|REGFILE|Rsix|out\(4) & !\U|dec_i|locsel|Mux2~0_combout\) ) ) ) # ( \U|dec_i|locsel|Mux1~0_combout\ & ( !\U|dec_i|locsel|Mux0~0_combout\ 
-- & ( (\U|DP|REGFILE|Rtwo|out\(4) & !\U|dec_i|locsel|Mux2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Rtwo|ALT_INV_out\(4),
	datac => \U|DP|REGFILE|Rsix|ALT_INV_out\(4),
	datad => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datae => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	dataf => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|outp|b[4]~13_combout\);

-- Location: LABCELL_X85_Y4_N12
\U|DP|REGFILE|Rone|out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rone|out[4]~feeder_combout\ = ( \U|DP|U0|Mux11~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|U0|ALT_INV_Mux11~0_combout\,
	combout => \U|DP|REGFILE|Rone|out[4]~feeder_combout\);

-- Location: FF_X85_Y4_N13
\U|DP|REGFILE|Rone|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rone|out[4]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rone|out\(4));

-- Location: FF_X88_Y3_N7
\U|DP|REGFILE|Rfour|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux11~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfour|out\(4));

-- Location: FF_X87_Y4_N2
\U|DP|REGFILE|Rzero|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux11~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rzero|out\(4));

-- Location: MLABCELL_X87_Y4_N0
\U|DP|REGFILE|outp|b[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[4]~12_combout\ = ( \U|DP|REGFILE|Rzero|out\(4) & ( \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|DP|REGFILE|Rone|out\(4) & (!\U|dec_i|locsel|Mux1~0_combout\ & !\U|dec_i|locsel|Mux0~0_combout\)) ) ) ) # ( !\U|DP|REGFILE|Rzero|out\(4) & ( 
-- \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|DP|REGFILE|Rone|out\(4) & (!\U|dec_i|locsel|Mux1~0_combout\ & !\U|dec_i|locsel|Mux0~0_combout\)) ) ) ) # ( \U|DP|REGFILE|Rzero|out\(4) & ( !\U|dec_i|locsel|Mux2~0_combout\ & ( (!\U|dec_i|locsel|Mux1~0_combout\ & 
-- ((!\U|dec_i|locsel|Mux0~0_combout\) # (\U|DP|REGFILE|Rfour|out\(4)))) ) ) ) # ( !\U|DP|REGFILE|Rzero|out\(4) & ( !\U|dec_i|locsel|Mux2~0_combout\ & ( (!\U|dec_i|locsel|Mux1~0_combout\ & (\U|dec_i|locsel|Mux0~0_combout\ & \U|DP|REGFILE|Rfour|out\(4))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100110000001100110001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rone|ALT_INV_out\(4),
	datab => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datac => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datad => \U|DP|REGFILE|Rfour|ALT_INV_out\(4),
	datae => \U|DP|REGFILE|Rzero|ALT_INV_out\(4),
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|outp|b[4]~12_combout\);

-- Location: MLABCELL_X87_Y6_N51
\U|DP|REGFILE|outp|b[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b\(4) = ( \U|DP|REGFILE|outp|b[4]~13_combout\ & ( \U|DP|REGFILE|outp|b[4]~12_combout\ ) ) # ( !\U|DP|REGFILE|outp|b[4]~13_combout\ & ( \U|DP|REGFILE|outp|b[4]~12_combout\ ) ) # ( \U|DP|REGFILE|outp|b[4]~13_combout\ & ( 
-- !\U|DP|REGFILE|outp|b[4]~12_combout\ ) ) # ( !\U|DP|REGFILE|outp|b[4]~13_combout\ & ( !\U|DP|REGFILE|outp|b[4]~12_combout\ & ( ((\U|DP|REGFILE|Rthree|out\(4) & \U|DP|REGFILE|bot|ShiftLeft0~0_combout\)) # (\U|DP|REGFILE|outp|b[4]~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rthree|ALT_INV_out\(4),
	datac => \U|DP|REGFILE|bot|ALT_INV_ShiftLeft0~0_combout\,
	datad => \U|DP|REGFILE|outp|ALT_INV_b[4]~14_combout\,
	datae => \U|DP|REGFILE|outp|ALT_INV_b[4]~13_combout\,
	dataf => \U|DP|REGFILE|outp|ALT_INV_b[4]~12_combout\,
	combout => \U|DP|REGFILE|outp|b\(4));

-- Location: FF_X87_Y8_N26
\U|DP|B|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(4),
	sload => VCC,
	ena => \U|statemachine|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|B|out\(4));

-- Location: LABCELL_X88_Y8_N9
\U|DP|C|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|C|out[3]~feeder_combout\ = ( \U|DP|U2|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|U2|ALT_INV_Add0~13_sumout\,
	combout => \U|DP|C|out[3]~feeder_combout\);

-- Location: LABCELL_X88_Y8_N27
\U|DP|U2|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Mux12~0_combout\ = ( \rtl~55_combout\ & ( (!\U|instruct|out\(11) & (\U|DP|A|out\(3) & ((!\U|instruct|out\(4)) # (\U|DP|B|out\(4))))) # (\U|instruct|out\(11) & (\U|instruct|out\(4) & (!\U|DP|B|out\(4)))) ) ) # ( !\rtl~55_combout\ & ( 
-- (!\U|instruct|out\(4) & (\U|instruct|out\(11))) # (\U|instruct|out\(4) & ((!\U|instruct|out\(11) & (\U|DP|B|out\(4) & \U|DP|A|out\(3))) # (\U|instruct|out\(11) & (!\U|DP|B|out\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110110001100100011011000010000100111000001000010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|instruct|ALT_INV_out\(11),
	datac => \U|DP|B|ALT_INV_out\(4),
	datad => \U|DP|A|ALT_INV_out\(3),
	dataf => \ALT_INV_rtl~55_combout\,
	combout => \U|DP|U2|Mux12~0_combout\);

-- Location: FF_X88_Y8_N10
\U|DP|C|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|C|out[3]~feeder_combout\,
	asdata => \U|DP|U2|Mux12~0_combout\,
	sload => \U|instruct|out\(12),
	ena => \U|statemachine|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|C|out\(3));

-- Location: LABCELL_X85_Y4_N21
\U|DP|U0|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U0|Mux12~0_combout\ = ( \U|DP|C|out\(3) & ( \IN|REG|Q\(3) & ( ((\U|statemachine|vsel\(0) & \U|instruct|out\(3))) # (\U|statemachine|vsel\(1)) ) ) ) # ( !\U|DP|C|out\(3) & ( \IN|REG|Q\(3) & ( (!\U|statemachine|vsel\(0) & (\U|statemachine|vsel\(1))) # 
-- (\U|statemachine|vsel\(0) & (!\U|statemachine|vsel\(1) & \U|instruct|out\(3))) ) ) ) # ( \U|DP|C|out\(3) & ( !\IN|REG|Q\(3) & ( (\U|statemachine|vsel\(0) & ((\U|instruct|out\(3)) # (\U|statemachine|vsel\(1)))) ) ) ) # ( !\U|DP|C|out\(3) & ( !\IN|REG|Q\(3) 
-- & ( (\U|statemachine|vsel\(0) & (!\U|statemachine|vsel\(1) & \U|instruct|out\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000001010101010100001010010110100000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_vsel\(0),
	datac => \U|statemachine|ALT_INV_vsel\(1),
	datad => \U|instruct|ALT_INV_out\(3),
	datae => \U|DP|C|ALT_INV_out\(3),
	dataf => \IN|REG|ALT_INV_Q\(3),
	combout => \U|DP|U0|Mux12~0_combout\);

-- Location: MLABCELL_X87_Y4_N45
\U|DP|REGFILE|Rthree|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rthree|out[3]~feeder_combout\ = \U|DP|U0|Mux12~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|U0|ALT_INV_Mux12~0_combout\,
	combout => \U|DP|REGFILE|Rthree|out[3]~feeder_combout\);

-- Location: FF_X87_Y4_N47
\U|DP|REGFILE|Rthree|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rthree|out[3]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rthree|out\(3));

-- Location: FF_X85_Y4_N43
\U|DP|REGFILE|Rfive|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux12~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfive|out\(3));

-- Location: FF_X84_Y4_N16
\U|DP|REGFILE|Rseven|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux12~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rseven|out\(3));

-- Location: MLABCELL_X87_Y6_N0
\U|DP|REGFILE|outp|b[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[3]~11_combout\ = ( \U|dec_i|locsel|Mux1~0_combout\ & ( \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|DP|REGFILE|Rseven|out\(3) & \U|dec_i|locsel|Mux0~0_combout\) ) ) ) # ( !\U|dec_i|locsel|Mux1~0_combout\ & ( \U|dec_i|locsel|Mux2~0_combout\ 
-- & ( (\U|DP|REGFILE|Rfive|out\(3) & \U|dec_i|locsel|Mux0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rfive|ALT_INV_out\(3),
	datab => \U|DP|REGFILE|Rseven|ALT_INV_out\(3),
	datac => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datae => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|outp|b[3]~11_combout\);

-- Location: FF_X83_Y4_N13
\U|DP|REGFILE|Rfour|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux12~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfour|out\(3));

-- Location: FF_X85_Y4_N40
\U|DP|REGFILE|Rone|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux12~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rone|out\(3));

-- Location: FF_X87_Y4_N4
\U|DP|REGFILE|Rzero|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux12~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rzero|out\(3));

-- Location: LABCELL_X88_Y4_N6
\U|DP|REGFILE|outp|b[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[3]~9_combout\ = ( !\U|dec_i|locsel|Mux1~0_combout\ & ( \U|dec_i|locsel|Mux0~0_combout\ & ( (\U|DP|REGFILE|Rfour|out\(3) & !\U|dec_i|locsel|Mux2~0_combout\) ) ) ) # ( !\U|dec_i|locsel|Mux1~0_combout\ & ( 
-- !\U|dec_i|locsel|Mux0~0_combout\ & ( (!\U|dec_i|locsel|Mux2~0_combout\ & ((\U|DP|REGFILE|Rzero|out\(3)))) # (\U|dec_i|locsel|Mux2~0_combout\ & (\U|DP|REGFILE|Rone|out\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000000000000001010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rfour|ALT_INV_out\(3),
	datab => \U|DP|REGFILE|Rone|ALT_INV_out\(3),
	datac => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datad => \U|DP|REGFILE|Rzero|ALT_INV_out\(3),
	datae => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	dataf => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|outp|b[3]~9_combout\);

-- Location: FF_X88_Y4_N47
\U|DP|REGFILE|Rsix|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux12~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rsix|out\(3));

-- Location: FF_X85_Y3_N41
\U|DP|REGFILE|Rtwo|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux12~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rtwo|out\(3));

-- Location: LABCELL_X85_Y3_N39
\U|DP|REGFILE|outp|b[3]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[3]~10_combout\ = ( \U|DP|REGFILE|Rtwo|out\(3) & ( \U|dec_i|locsel|Mux1~0_combout\ & ( (!\U|dec_i|locsel|Mux2~0_combout\ & ((!\U|dec_i|locsel|Mux0~0_combout\) # (\U|DP|REGFILE|Rsix|out\(3)))) ) ) ) # ( !\U|DP|REGFILE|Rtwo|out\(3) & ( 
-- \U|dec_i|locsel|Mux1~0_combout\ & ( (\U|DP|REGFILE|Rsix|out\(3) & (!\U|dec_i|locsel|Mux2~0_combout\ & \U|dec_i|locsel|Mux0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Rsix|ALT_INV_out\(3),
	datac => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datad => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datae => \U|DP|REGFILE|Rtwo|ALT_INV_out\(3),
	dataf => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	combout => \U|DP|REGFILE|outp|b[3]~10_combout\);

-- Location: MLABCELL_X87_Y6_N30
\U|DP|REGFILE|outp|b[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b\(3) = ( \U|DP|REGFILE|outp|b[3]~9_combout\ & ( \U|DP|REGFILE|outp|b[3]~10_combout\ ) ) # ( !\U|DP|REGFILE|outp|b[3]~9_combout\ & ( \U|DP|REGFILE|outp|b[3]~10_combout\ ) ) # ( \U|DP|REGFILE|outp|b[3]~9_combout\ & ( 
-- !\U|DP|REGFILE|outp|b[3]~10_combout\ ) ) # ( !\U|DP|REGFILE|outp|b[3]~9_combout\ & ( !\U|DP|REGFILE|outp|b[3]~10_combout\ & ( ((\U|DP|REGFILE|Rthree|out\(3) & \U|DP|REGFILE|bot|ShiftLeft0~0_combout\)) # (\U|DP|REGFILE|outp|b[3]~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Rthree|ALT_INV_out\(3),
	datac => \U|DP|REGFILE|outp|ALT_INV_b[3]~11_combout\,
	datad => \U|DP|REGFILE|bot|ALT_INV_ShiftLeft0~0_combout\,
	datae => \U|DP|REGFILE|outp|ALT_INV_b[3]~9_combout\,
	dataf => \U|DP|REGFILE|outp|ALT_INV_b[3]~10_combout\,
	combout => \U|DP|REGFILE|outp|b\(3));

-- Location: FF_X87_Y8_N8
\U|DP|B|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(3),
	sload => VCC,
	ena => \U|statemachine|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|B|out\(3));

-- Location: LABCELL_X88_Y9_N48
\U|DP|C|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|C|out[2]~feeder_combout\ = ( \U|DP|U2|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|U2|ALT_INV_Add0~9_sumout\,
	combout => \U|DP|C|out[2]~feeder_combout\);

-- Location: FF_X88_Y6_N20
\U|DP|A|out[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(2),
	sload => VCC,
	ena => \U|statemachine|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|A|out[2]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y8_N24
\U|DP|U2|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Mux13~0_combout\ = ( \U|DP|B|out\(3) & ( (!\U|instruct|out\(11) & (\U|DP|A|out[2]~DUPLICATE_q\ & ((\rtl~54_combout\) # (\U|instruct|out\(4))))) # (\U|instruct|out\(11) & (!\U|instruct|out\(4) & ((!\rtl~54_combout\)))) ) ) # ( !\U|DP|B|out\(3) & ( 
-- (!\U|instruct|out\(4) & ((!\U|instruct|out\(11) & (\U|DP|A|out[2]~DUPLICATE_q\ & \rtl~54_combout\)) # (\U|instruct|out\(11) & ((!\rtl~54_combout\))))) # (\U|instruct|out\(4) & (\U|instruct|out\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100011001001100110001100100100110000011000010011000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|instruct|ALT_INV_out\(11),
	datac => \U|DP|A|ALT_INV_out[2]~DUPLICATE_q\,
	datad => \ALT_INV_rtl~54_combout\,
	dataf => \U|DP|B|ALT_INV_out\(3),
	combout => \U|DP|U2|Mux13~0_combout\);

-- Location: FF_X88_Y9_N49
\U|DP|C|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|C|out[2]~feeder_combout\,
	asdata => \U|DP|U2|Mux13~0_combout\,
	sload => \U|instruct|out\(12),
	ena => \U|statemachine|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|C|out\(2));

-- Location: LABCELL_X88_Y5_N15
\U|DP|U0|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U0|Mux13~0_combout\ = ( \U|statemachine|vsel\(1) & ( \IN|REG|Q\(2) & ( (!\U|statemachine|vsel\(0)) # (\U|DP|C|out\(2)) ) ) ) # ( !\U|statemachine|vsel\(1) & ( \IN|REG|Q\(2) & ( (\U|instruct|out\(2) & \U|statemachine|vsel\(0)) ) ) ) # ( 
-- \U|statemachine|vsel\(1) & ( !\IN|REG|Q\(2) & ( (\U|DP|C|out\(2) & \U|statemachine|vsel\(0)) ) ) ) # ( !\U|statemachine|vsel\(1) & ( !\IN|REG|Q\(2) & ( (\U|instruct|out\(2) & \U|statemachine|vsel\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000000111100000000010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(2),
	datac => \U|DP|C|ALT_INV_out\(2),
	datad => \U|statemachine|ALT_INV_vsel\(0),
	datae => \U|statemachine|ALT_INV_vsel\(1),
	dataf => \IN|REG|ALT_INV_Q\(2),
	combout => \U|DP|U0|Mux13~0_combout\);

-- Location: MLABCELL_X87_Y4_N42
\U|DP|REGFILE|Rthree|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rthree|out[2]~feeder_combout\ = \U|DP|U0|Mux13~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|U0|ALT_INV_Mux13~0_combout\,
	combout => \U|DP|REGFILE|Rthree|out[2]~feeder_combout\);

-- Location: FF_X87_Y4_N44
\U|DP|REGFILE|Rthree|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rthree|out[2]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rthree|out\(2));

-- Location: FF_X88_Y5_N13
\U|DP|REGFILE|Rseven|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux13~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rseven|out\(2));

-- Location: FF_X88_Y6_N47
\U|DP|REGFILE|Rfive|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux13~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfive|out\(2));

-- Location: LABCELL_X88_Y6_N45
\U|DP|REGFILE|outp|b[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[2]~8_combout\ = ( \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|dec_i|locsel|Mux0~0_combout\ & ((!\U|dec_i|locsel|Mux1~0_combout\ & ((\U|DP|REGFILE|Rfive|out\(2)))) # (\U|dec_i|locsel|Mux1~0_combout\ & (\U|DP|REGFILE|Rseven|out\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001001000110000000100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datab => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datac => \U|DP|REGFILE|Rseven|ALT_INV_out\(2),
	datad => \U|DP|REGFILE|Rfive|ALT_INV_out\(2),
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|outp|b[2]~8_combout\);

-- Location: FF_X88_Y4_N1
\U|DP|REGFILE|Rsix|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux13~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rsix|out\(2));

-- Location: FF_X88_Y3_N53
\U|DP|REGFILE|Rtwo|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux13~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rtwo|out\(2));

-- Location: LABCELL_X88_Y3_N51
\U|DP|REGFILE|outp|b[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[2]~7_combout\ = ( \U|DP|REGFILE|Rtwo|out\(2) & ( \U|dec_i|locsel|Mux0~0_combout\ & ( (\U|DP|REGFILE|Rsix|out\(2) & (\U|dec_i|locsel|Mux1~0_combout\ & !\U|dec_i|locsel|Mux2~0_combout\)) ) ) ) # ( !\U|DP|REGFILE|Rtwo|out\(2) & ( 
-- \U|dec_i|locsel|Mux0~0_combout\ & ( (\U|DP|REGFILE|Rsix|out\(2) & (\U|dec_i|locsel|Mux1~0_combout\ & !\U|dec_i|locsel|Mux2~0_combout\)) ) ) ) # ( \U|DP|REGFILE|Rtwo|out\(2) & ( !\U|dec_i|locsel|Mux0~0_combout\ & ( (\U|dec_i|locsel|Mux1~0_combout\ & 
-- !\U|dec_i|locsel|Mux2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rsix|ALT_INV_out\(2),
	datac => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datad => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datae => \U|DP|REGFILE|Rtwo|ALT_INV_out\(2),
	dataf => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|outp|b[2]~7_combout\);

-- Location: FF_X88_Y3_N47
\U|DP|REGFILE|Rone|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux13~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rone|out\(2));

-- Location: FF_X87_Y3_N17
\U|DP|REGFILE|Rfour|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux13~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfour|out\(2));

-- Location: FF_X87_Y3_N44
\U|DP|REGFILE|Rzero|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux13~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rzero|out\(2));

-- Location: MLABCELL_X87_Y3_N42
\U|DP|REGFILE|outp|b[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[2]~6_combout\ = ( \U|DP|REGFILE|Rzero|out\(2) & ( \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|DP|REGFILE|Rone|out\(2) & (!\U|dec_i|locsel|Mux0~0_combout\ & !\U|dec_i|locsel|Mux1~0_combout\)) ) ) ) # ( !\U|DP|REGFILE|Rzero|out\(2) & ( 
-- \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|DP|REGFILE|Rone|out\(2) & (!\U|dec_i|locsel|Mux0~0_combout\ & !\U|dec_i|locsel|Mux1~0_combout\)) ) ) ) # ( \U|DP|REGFILE|Rzero|out\(2) & ( !\U|dec_i|locsel|Mux2~0_combout\ & ( (!\U|dec_i|locsel|Mux1~0_combout\ & 
-- ((!\U|dec_i|locsel|Mux0~0_combout\) # (\U|DP|REGFILE|Rfour|out\(2)))) ) ) ) # ( !\U|DP|REGFILE|Rzero|out\(2) & ( !\U|dec_i|locsel|Mux2~0_combout\ & ( (\U|DP|REGFILE|Rfour|out\(2) & (\U|dec_i|locsel|Mux0~0_combout\ & !\U|dec_i|locsel|Mux1~0_combout\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000111100110000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rone|ALT_INV_out\(2),
	datab => \U|DP|REGFILE|Rfour|ALT_INV_out\(2),
	datac => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datad => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datae => \U|DP|REGFILE|Rzero|ALT_INV_out\(2),
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|outp|b[2]~6_combout\);

-- Location: LABCELL_X88_Y6_N27
\U|DP|REGFILE|outp|b[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b\(2) = ( \U|DP|REGFILE|outp|b[2]~7_combout\ & ( \U|DP|REGFILE|outp|b[2]~6_combout\ ) ) # ( !\U|DP|REGFILE|outp|b[2]~7_combout\ & ( \U|DP|REGFILE|outp|b[2]~6_combout\ ) ) # ( \U|DP|REGFILE|outp|b[2]~7_combout\ & ( 
-- !\U|DP|REGFILE|outp|b[2]~6_combout\ ) ) # ( !\U|DP|REGFILE|outp|b[2]~7_combout\ & ( !\U|DP|REGFILE|outp|b[2]~6_combout\ & ( ((\U|DP|REGFILE|Rthree|out\(2) & \U|DP|REGFILE|bot|ShiftLeft0~0_combout\)) # (\U|DP|REGFILE|outp|b[2]~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Rthree|ALT_INV_out\(2),
	datac => \U|DP|REGFILE|outp|ALT_INV_b[2]~8_combout\,
	datad => \U|DP|REGFILE|bot|ALT_INV_ShiftLeft0~0_combout\,
	datae => \U|DP|REGFILE|outp|ALT_INV_b[2]~7_combout\,
	dataf => \U|DP|REGFILE|outp|ALT_INV_b[2]~6_combout\,
	combout => \U|DP|REGFILE|outp|b\(2));

-- Location: FF_X87_Y8_N10
\U|DP|B|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(2),
	sload => VCC,
	ena => \U|statemachine|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|B|out\(2));

-- Location: MLABCELL_X84_Y8_N57
\U|DP|C|out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|C|out[1]~feeder_combout\ = ( \U|DP|U2|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|U2|ALT_INV_Add0~5_sumout\,
	combout => \U|DP|C|out[1]~feeder_combout\);

-- Location: MLABCELL_X87_Y8_N0
\rtl~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~53_combout\ = ( \U|DP|B|out[2]~DUPLICATE_q\ & ( ((!\U|instruct|out\(3) & (\U|DP|B|out[1]~DUPLICATE_q\)) # (\U|instruct|out\(3) & ((\U|DP|B|out\(0))))) # (\U|instruct|out\(4)) ) ) # ( !\U|DP|B|out[2]~DUPLICATE_q\ & ( (!\U|instruct|out\(4) & 
-- ((!\U|instruct|out\(3) & (\U|DP|B|out[1]~DUPLICATE_q\)) # (\U|instruct|out\(3) & ((\U|DP|B|out\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|instruct|ALT_INV_out\(3),
	datac => \U|DP|B|ALT_INV_out[1]~DUPLICATE_q\,
	datad => \U|DP|B|ALT_INV_out\(0),
	dataf => \U|DP|B|ALT_INV_out[2]~DUPLICATE_q\,
	combout => \rtl~53_combout\);

-- Location: LABCELL_X85_Y8_N45
\U|DP|U2|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Mux14~0_combout\ = ( \U|DP|A|out\(1) & ( \rtl~53_combout\ & ( !\U|instruct|out\(11) ) ) ) # ( \U|DP|A|out\(1) & ( !\rtl~53_combout\ & ( \U|instruct|out\(11) ) ) ) # ( !\U|DP|A|out\(1) & ( !\rtl~53_combout\ & ( \U|instruct|out\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(11),
	datae => \U|DP|A|ALT_INV_out\(1),
	dataf => \ALT_INV_rtl~53_combout\,
	combout => \U|DP|U2|Mux14~0_combout\);

-- Location: FF_X84_Y8_N59
\U|DP|C|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|C|out[1]~feeder_combout\,
	asdata => \U|DP|U2|Mux14~0_combout\,
	sload => \U|instruct|out\(12),
	ena => \U|statemachine|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|C|out\(1));

-- Location: LABCELL_X88_Y5_N9
\U|DP|U0|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U0|Mux14~0_combout\ = ( \IN|REG|Q\(1) & ( (!\U|statemachine|vsel\(0) & (((\U|statemachine|vsel\(1))))) # (\U|statemachine|vsel\(0) & ((!\U|statemachine|vsel\(1) & (\U|instruct|out\(1))) # (\U|statemachine|vsel\(1) & ((\U|DP|C|out\(1)))))) ) ) # ( 
-- !\IN|REG|Q\(1) & ( (\U|statemachine|vsel\(0) & ((!\U|statemachine|vsel\(1) & (\U|instruct|out\(1))) # (\U|statemachine|vsel\(1) & ((\U|DP|C|out\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100010000001100010001110011110001000111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(1),
	datab => \U|statemachine|ALT_INV_vsel\(0),
	datac => \U|DP|C|ALT_INV_out\(1),
	datad => \U|statemachine|ALT_INV_vsel\(1),
	dataf => \IN|REG|ALT_INV_Q\(1),
	combout => \U|DP|U0|Mux14~0_combout\);

-- Location: FF_X87_Y4_N46
\U|DP|REGFILE|Rthree|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux14~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rthree|out\(1));

-- Location: FF_X88_Y5_N17
\U|DP|REGFILE|Rseven|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux14~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rseven|out\(1));

-- Location: FF_X88_Y5_N23
\U|DP|REGFILE|Rfive|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux14~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfive|out\(1));

-- Location: LABCELL_X88_Y5_N21
\U|DP|REGFILE|outp|b[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[1]~2_combout\ = ( \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|dec_i|locsel|Mux0~0_combout\ & ((!\U|dec_i|locsel|Mux1~0_combout\ & ((\U|DP|REGFILE|Rfive|out\(1)))) # (\U|dec_i|locsel|Mux1~0_combout\ & (\U|DP|REGFILE|Rseven|out\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	datab => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datac => \U|DP|REGFILE|Rseven|ALT_INV_out\(1),
	datad => \U|DP|REGFILE|Rfive|ALT_INV_out\(1),
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|outp|b[1]~2_combout\);

-- Location: LABCELL_X88_Y3_N0
\U|DP|REGFILE|Rfour|out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rfour|out[1]~feeder_combout\ = ( \U|DP|U0|Mux14~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|U0|ALT_INV_Mux14~0_combout\,
	combout => \U|DP|REGFILE|Rfour|out[1]~feeder_combout\);

-- Location: FF_X88_Y3_N1
\U|DP|REGFILE|Rfour|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rfour|out[1]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rfour|out\(1));

-- Location: FF_X88_Y6_N8
\U|DP|REGFILE|Rzero|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux14~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rzero|out\(1));

-- Location: MLABCELL_X87_Y3_N48
\U|DP|REGFILE|Rone|out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Rone|out[1]~feeder_combout\ = ( \U|DP|U0|Mux14~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|U0|ALT_INV_Mux14~0_combout\,
	combout => \U|DP|REGFILE|Rone|out[1]~feeder_combout\);

-- Location: FF_X87_Y3_N49
\U|DP|REGFILE|Rone|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Rone|out[1]~feeder_combout\,
	ena => \U|DP|REGFILE|towrite\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rone|out\(1));

-- Location: LABCELL_X88_Y6_N3
\U|DP|REGFILE|outp|b[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[1]~0_combout\ = ( !\U|dec_i|locsel|Mux0~0_combout\ & ( \U|dec_i|locsel|Mux2~0_combout\ & ( (\U|DP|REGFILE|Rone|out\(1) & !\U|dec_i|locsel|Mux1~0_combout\) ) ) ) # ( \U|dec_i|locsel|Mux0~0_combout\ & ( !\U|dec_i|locsel|Mux2~0_combout\ 
-- & ( (\U|DP|REGFILE|Rfour|out\(1) & !\U|dec_i|locsel|Mux1~0_combout\) ) ) ) # ( !\U|dec_i|locsel|Mux0~0_combout\ & ( !\U|dec_i|locsel|Mux2~0_combout\ & ( (\U|DP|REGFILE|Rzero|out\(1) & !\U|dec_i|locsel|Mux1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000010101010000000000001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rfour|ALT_INV_out\(1),
	datab => \U|DP|REGFILE|Rzero|ALT_INV_out\(1),
	datac => \U|DP|REGFILE|Rone|ALT_INV_out\(1),
	datad => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datae => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	dataf => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|outp|b[1]~0_combout\);

-- Location: FF_X88_Y3_N20
\U|DP|REGFILE|Rtwo|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux14~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rtwo|out\(1));

-- Location: FF_X88_Y4_N53
\U|DP|REGFILE|Rsix|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|U0|Mux14~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|towrite\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Rsix|out\(1));

-- Location: LABCELL_X88_Y4_N51
\U|DP|REGFILE|outp|b[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b[1]~1_combout\ = ( \U|dec_i|locsel|Mux0~0_combout\ & ( (!\U|dec_i|locsel|Mux2~0_combout\ & (\U|dec_i|locsel|Mux1~0_combout\ & \U|DP|REGFILE|Rsix|out\(1))) ) ) # ( !\U|dec_i|locsel|Mux0~0_combout\ & ( (!\U|dec_i|locsel|Mux2~0_combout\ & 
-- (\U|DP|REGFILE|Rtwo|out\(1) & \U|dec_i|locsel|Mux1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|dec_i|locsel|ALT_INV_Mux2~0_combout\,
	datab => \U|DP|REGFILE|Rtwo|ALT_INV_out\(1),
	datac => \U|dec_i|locsel|ALT_INV_Mux1~0_combout\,
	datad => \U|DP|REGFILE|Rsix|ALT_INV_out\(1),
	dataf => \U|dec_i|locsel|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|outp|b[1]~1_combout\);

-- Location: LABCELL_X88_Y6_N9
\U|DP|REGFILE|outp|b[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|outp|b\(1) = ( \U|DP|REGFILE|bot|ShiftLeft0~0_combout\ & ( \U|DP|REGFILE|outp|b[1]~1_combout\ ) ) # ( !\U|DP|REGFILE|bot|ShiftLeft0~0_combout\ & ( \U|DP|REGFILE|outp|b[1]~1_combout\ ) ) # ( \U|DP|REGFILE|bot|ShiftLeft0~0_combout\ & ( 
-- !\U|DP|REGFILE|outp|b[1]~1_combout\ & ( ((\U|DP|REGFILE|outp|b[1]~0_combout\) # (\U|DP|REGFILE|outp|b[1]~2_combout\)) # (\U|DP|REGFILE|Rthree|out\(1)) ) ) ) # ( !\U|DP|REGFILE|bot|ShiftLeft0~0_combout\ & ( !\U|DP|REGFILE|outp|b[1]~1_combout\ & ( 
-- (\U|DP|REGFILE|outp|b[1]~0_combout\) # (\U|DP|REGFILE|outp|b[1]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111010111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Rthree|ALT_INV_out\(1),
	datac => \U|DP|REGFILE|outp|ALT_INV_b[1]~2_combout\,
	datad => \U|DP|REGFILE|outp|ALT_INV_b[1]~0_combout\,
	datae => \U|DP|REGFILE|bot|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \U|DP|REGFILE|outp|ALT_INV_b[1]~1_combout\,
	combout => \U|DP|REGFILE|outp|b\(1));

-- Location: FF_X87_Y8_N43
\U|DP|B|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(1),
	sload => VCC,
	ena => \U|statemachine|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|B|out\(1));

-- Location: MLABCELL_X84_Y8_N27
\U|DP|C|out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|C|out[0]~feeder_combout\ = ( \U|DP|U2|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|U2|ALT_INV_Add0~1_sumout\,
	combout => \U|DP|C|out[0]~feeder_combout\);

-- Location: MLABCELL_X87_Y8_N6
\U|DP|U2|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Mux15~0_combout\ = ( \U|DP|B|out\(0) & ( \U|instruct|out\(3) & ( (!\U|instruct|out\(4) & (((\U|instruct|out\(11))))) # (\U|instruct|out\(4) & ((!\U|DP|B|out\(1) & (\U|instruct|out\(11))) # (\U|DP|B|out\(1) & (!\U|instruct|out\(11) & 
-- \U|DP|A|out\(0))))) ) ) ) # ( !\U|DP|B|out\(0) & ( \U|instruct|out\(3) & ( (!\U|instruct|out\(4) & (((\U|instruct|out\(11))))) # (\U|instruct|out\(4) & ((!\U|DP|B|out\(1) & (\U|instruct|out\(11))) # (\U|DP|B|out\(1) & (!\U|instruct|out\(11) & 
-- \U|DP|A|out\(0))))) ) ) ) # ( \U|DP|B|out\(0) & ( !\U|instruct|out\(3) & ( (!\U|instruct|out\(11) & (\U|DP|A|out\(0) & ((!\U|instruct|out\(4)) # (\U|DP|B|out\(1))))) # (\U|instruct|out\(11) & (\U|instruct|out\(4) & (!\U|DP|B|out\(1)))) ) ) ) # ( 
-- !\U|DP|B|out\(0) & ( !\U|instruct|out\(3) & ( (!\U|instruct|out\(4) & (((\U|instruct|out\(11))))) # (\U|instruct|out\(4) & ((!\U|DP|B|out\(1) & (\U|instruct|out\(11))) # (\U|DP|B|out\(1) & (!\U|instruct|out\(11) & \U|DP|A|out\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011110000001001011010000001110000111100000111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(4),
	datab => \U|DP|B|ALT_INV_out\(1),
	datac => \U|instruct|ALT_INV_out\(11),
	datad => \U|DP|A|ALT_INV_out\(0),
	datae => \U|DP|B|ALT_INV_out\(0),
	dataf => \U|instruct|ALT_INV_out\(3),
	combout => \U|DP|U2|Mux15~0_combout\);

-- Location: FF_X84_Y8_N28
\U|DP|C|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|C|out[0]~feeder_combout\,
	asdata => \U|DP|U2|Mux15~0_combout\,
	sload => \U|instruct|out\(12),
	ena => \U|statemachine|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|C|out\(0));

-- Location: FF_X84_Y8_N58
\U|DP|C|out[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|C|out[1]~feeder_combout\,
	asdata => \U|DP|U2|Mux14~0_combout\,
	sload => \U|instruct|out\(12),
	ena => \U|statemachine|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|C|out[1]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y9_N21
\H0|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr6~0_combout\ = (!\U|DP|C|out\(2) & (\U|DP|C|out\(0) & (!\U|DP|C|out[1]~DUPLICATE_q\ $ (\U|DP|C|out\(3))))) # (\U|DP|C|out\(2) & (!\U|DP|C|out[1]~DUPLICATE_q\ & (!\U|DP|C|out\(0) $ (\U|DP|C|out\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000010100011000000001010001100000000101000110000000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|C|ALT_INV_out\(0),
	datab => \U|DP|C|ALT_INV_out\(2),
	datac => \U|DP|C|ALT_INV_out[1]~DUPLICATE_q\,
	datad => \U|DP|C|ALT_INV_out\(3),
	combout => \H0|WideOr6~0_combout\);

-- Location: LABCELL_X88_Y9_N54
\H0|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr5~0_combout\ = ( \U|DP|C|out\(0) & ( (!\U|DP|C|out[1]~DUPLICATE_q\ & (\U|DP|C|out\(2) & !\U|DP|C|out\(3))) # (\U|DP|C|out[1]~DUPLICATE_q\ & ((\U|DP|C|out\(3)))) ) ) # ( !\U|DP|C|out\(0) & ( (\U|DP|C|out\(2) & ((\U|DP|C|out\(3)) # 
-- (\U|DP|C|out[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010101000011010000110100001101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|C|ALT_INV_out\(2),
	datab => \U|DP|C|ALT_INV_out[1]~DUPLICATE_q\,
	datac => \U|DP|C|ALT_INV_out\(3),
	dataf => \U|DP|C|ALT_INV_out\(0),
	combout => \H0|WideOr5~0_combout\);

-- Location: LABCELL_X88_Y9_N57
\H0|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr4~0_combout\ = ( \U|DP|C|out\(0) & ( (\U|DP|C|out\(2) & (\U|DP|C|out[1]~DUPLICATE_q\ & \U|DP|C|out\(3))) ) ) # ( !\U|DP|C|out\(0) & ( (!\U|DP|C|out\(2) & (\U|DP|C|out[1]~DUPLICATE_q\ & !\U|DP|C|out\(3))) # (\U|DP|C|out\(2) & ((\U|DP|C|out\(3)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010101000010100101010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|C|ALT_INV_out\(2),
	datac => \U|DP|C|ALT_INV_out[1]~DUPLICATE_q\,
	datad => \U|DP|C|ALT_INV_out\(3),
	dataf => \U|DP|C|ALT_INV_out\(0),
	combout => \H0|WideOr4~0_combout\);

-- Location: LABCELL_X88_Y4_N54
\H0|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr3~0_combout\ = ( \U|DP|C|out[1]~DUPLICATE_q\ & ( (!\U|DP|C|out\(0) & (\U|DP|C|out\(3) & !\U|DP|C|out\(2))) # (\U|DP|C|out\(0) & ((\U|DP|C|out\(2)))) ) ) # ( !\U|DP|C|out[1]~DUPLICATE_q\ & ( (!\U|DP|C|out\(0) & (!\U|DP|C|out\(3) & 
-- \U|DP|C|out\(2))) # (\U|DP|C|out\(0) & ((!\U|DP|C|out\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100000111000001110000011100001000011010000110100001101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|C|ALT_INV_out\(3),
	datab => \U|DP|C|ALT_INV_out\(0),
	datac => \U|DP|C|ALT_INV_out\(2),
	dataf => \U|DP|C|ALT_INV_out[1]~DUPLICATE_q\,
	combout => \H0|WideOr3~0_combout\);

-- Location: LABCELL_X85_Y9_N39
\H0|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr2~0_combout\ = ( \U|DP|C|out\(0) & ( \U|DP|C|out\(3) & ( (!\U|DP|C|out[1]~DUPLICATE_q\ & !\U|DP|C|out\(2)) ) ) ) # ( \U|DP|C|out\(0) & ( !\U|DP|C|out\(3) ) ) # ( !\U|DP|C|out\(0) & ( !\U|DP|C|out\(3) & ( (!\U|DP|C|out[1]~DUPLICATE_q\ & 
-- \U|DP|C|out\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010111111111111111100000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|C|ALT_INV_out[1]~DUPLICATE_q\,
	datac => \U|DP|C|ALT_INV_out\(2),
	datae => \U|DP|C|ALT_INV_out\(0),
	dataf => \U|DP|C|ALT_INV_out\(3),
	combout => \H0|WideOr2~0_combout\);

-- Location: MLABCELL_X84_Y5_N24
\H0|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr1~0_combout\ = ( \U|DP|C|out\(2) & ( (\U|DP|C|out\(0) & (!\U|DP|C|out[1]~DUPLICATE_q\ $ (!\U|DP|C|out\(3)))) ) ) # ( !\U|DP|C|out\(2) & ( (!\U|DP|C|out\(3) & ((\U|DP|C|out\(0)) # (\U|DP|C|out[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100010011000100110000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|C|ALT_INV_out[1]~DUPLICATE_q\,
	datab => \U|DP|C|ALT_INV_out\(3),
	datac => \U|DP|C|ALT_INV_out\(0),
	dataf => \U|DP|C|ALT_INV_out\(2),
	combout => \H0|WideOr1~0_combout\);

-- Location: MLABCELL_X84_Y5_N6
\H0|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr0~0_combout\ = ( \U|DP|C|out\(2) & ( (!\U|DP|C|out[1]~DUPLICATE_q\ & ((!\U|DP|C|out\(3)) # (\U|DP|C|out\(0)))) # (\U|DP|C|out[1]~DUPLICATE_q\ & ((!\U|DP|C|out\(0)) # (\U|DP|C|out\(3)))) ) ) # ( !\U|DP|C|out\(2) & ( (\U|DP|C|out\(3)) # 
-- (\U|DP|C|out[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011111011011110110111101101111011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|C|ALT_INV_out[1]~DUPLICATE_q\,
	datab => \U|DP|C|ALT_INV_out\(3),
	datac => \U|DP|C|ALT_INV_out\(0),
	dataf => \U|DP|C|ALT_INV_out\(2),
	combout => \H0|WideOr0~0_combout\);

-- Location: MLABCELL_X84_Y5_N39
\H1|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr6~0_combout\ = ( \U|DP|C|out\(4) & ( (!\U|DP|C|out\(5) & (!\U|DP|C|out\(7) $ (\U|DP|C|out\(6)))) # (\U|DP|C|out\(5) & (\U|DP|C|out\(7) & !\U|DP|C|out\(6))) ) ) # ( !\U|DP|C|out\(4) & ( (!\U|DP|C|out\(5) & (!\U|DP|C|out\(7) & \U|DP|C|out\(6))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010010010100100101001001010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|C|ALT_INV_out\(5),
	datab => \U|DP|C|ALT_INV_out\(7),
	datac => \U|DP|C|ALT_INV_out\(6),
	dataf => \U|DP|C|ALT_INV_out\(4),
	combout => \H1|WideOr6~0_combout\);

-- Location: MLABCELL_X84_Y5_N45
\H1|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr5~0_combout\ = ( \U|DP|C|out\(4) & ( (!\U|DP|C|out\(5) & (!\U|DP|C|out\(7) & \U|DP|C|out\(6))) # (\U|DP|C|out\(5) & (\U|DP|C|out\(7))) ) ) # ( !\U|DP|C|out\(4) & ( (\U|DP|C|out\(6) & ((\U|DP|C|out\(7)) # (\U|DP|C|out\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|C|ALT_INV_out\(5),
	datab => \U|DP|C|ALT_INV_out\(7),
	datac => \U|DP|C|ALT_INV_out\(6),
	dataf => \U|DP|C|ALT_INV_out\(4),
	combout => \H1|WideOr5~0_combout\);

-- Location: MLABCELL_X84_Y5_N51
\H1|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr4~0_combout\ = ( \U|DP|C|out\(4) & ( (\U|DP|C|out\(5) & (\U|DP|C|out\(7) & \U|DP|C|out\(6))) ) ) # ( !\U|DP|C|out\(4) & ( (!\U|DP|C|out\(7) & (\U|DP|C|out\(5) & !\U|DP|C|out\(6))) # (\U|DP|C|out\(7) & ((\U|DP|C|out\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001101000011010000110100001100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|C|ALT_INV_out\(5),
	datab => \U|DP|C|ALT_INV_out\(7),
	datac => \U|DP|C|ALT_INV_out\(6),
	dataf => \U|DP|C|ALT_INV_out\(4),
	combout => \H1|WideOr4~0_combout\);

-- Location: MLABCELL_X84_Y5_N30
\H1|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr3~0_combout\ = ( \U|DP|C|out\(4) & ( !\U|DP|C|out\(5) $ (\U|DP|C|out\(6)) ) ) # ( !\U|DP|C|out\(4) & ( (!\U|DP|C|out\(7) & (!\U|DP|C|out\(5) & \U|DP|C|out\(6))) # (\U|DP|C|out\(7) & (\U|DP|C|out\(5) & !\U|DP|C|out\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110001000000100011000100011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|C|ALT_INV_out\(7),
	datab => \U|DP|C|ALT_INV_out\(5),
	datad => \U|DP|C|ALT_INV_out\(6),
	dataf => \U|DP|C|ALT_INV_out\(4),
	combout => \H1|WideOr3~0_combout\);

-- Location: MLABCELL_X84_Y5_N12
\H1|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr2~0_combout\ = ( \U|DP|C|out\(4) & ( (!\U|DP|C|out\(7)) # ((!\U|DP|C|out\(5) & !\U|DP|C|out\(6))) ) ) # ( !\U|DP|C|out\(4) & ( (!\U|DP|C|out\(5) & (!\U|DP|C|out\(7) & \U|DP|C|out\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011111100111100001111110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|C|ALT_INV_out\(5),
	datac => \U|DP|C|ALT_INV_out\(7),
	datad => \U|DP|C|ALT_INV_out\(6),
	dataf => \U|DP|C|ALT_INV_out\(4),
	combout => \H1|WideOr2~0_combout\);

-- Location: MLABCELL_X84_Y5_N15
\H1|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr1~0_combout\ = ( \U|DP|C|out\(4) & ( !\U|DP|C|out\(7) $ (((!\U|DP|C|out\(5) & \U|DP|C|out\(6)))) ) ) # ( !\U|DP|C|out\(4) & ( (!\U|DP|C|out\(7) & (\U|DP|C|out\(5) & !\U|DP|C|out\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000010100110101001101010011010100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|C|ALT_INV_out\(7),
	datab => \U|DP|C|ALT_INV_out\(5),
	datac => \U|DP|C|ALT_INV_out\(6),
	dataf => \U|DP|C|ALT_INV_out\(4),
	combout => \H1|WideOr1~0_combout\);

-- Location: MLABCELL_X84_Y5_N33
\H1|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr0~0_combout\ = ( \U|DP|C|out\(4) & ( (!\U|DP|C|out\(5) $ (!\U|DP|C|out\(6))) # (\U|DP|C|out\(7)) ) ) # ( !\U|DP|C|out\(4) & ( (!\U|DP|C|out\(7) $ (!\U|DP|C|out\(6))) # (\U|DP|C|out\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101101111011011110110111101101111101011111010111110101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|C|ALT_INV_out\(7),
	datab => \U|DP|C|ALT_INV_out\(5),
	datac => \U|DP|C|ALT_INV_out\(6),
	dataf => \U|DP|C|ALT_INV_out\(4),
	combout => \H1|WideOr0~0_combout\);

-- Location: MLABCELL_X87_Y9_N48
\H2|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr6~0_combout\ = ( \U|DP|C|out\(9) & ( (\U|DP|C|out\(11) & (!\U|DP|C|out\(10) & \U|DP|C|out\(8))) ) ) # ( !\U|DP|C|out\(9) & ( (!\U|DP|C|out\(11) & (!\U|DP|C|out\(10) $ (!\U|DP|C|out\(8)))) # (\U|DP|C|out\(11) & (\U|DP|C|out\(10) & 
-- \U|DP|C|out\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000011000011001100001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|C|ALT_INV_out\(11),
	datac => \U|DP|C|ALT_INV_out\(10),
	datad => \U|DP|C|ALT_INV_out\(8),
	dataf => \U|DP|C|ALT_INV_out\(9),
	combout => \H2|WideOr6~0_combout\);

-- Location: LABCELL_X88_Y9_N39
\H2|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr5~0_combout\ = ( \U|DP|C|out\(8) & ( (!\U|DP|C|out\(11) & (\U|DP|C|out\(10) & !\U|DP|C|out\(9))) # (\U|DP|C|out\(11) & ((\U|DP|C|out\(9)))) ) ) # ( !\U|DP|C|out\(8) & ( (\U|DP|C|out\(10) & ((\U|DP|C|out\(9)) # (\U|DP|C|out\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100100101001001010010010100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|C|ALT_INV_out\(11),
	datab => \U|DP|C|ALT_INV_out\(10),
	datac => \U|DP|C|ALT_INV_out\(9),
	dataf => \U|DP|C|ALT_INV_out\(8),
	combout => \H2|WideOr5~0_combout\);

-- Location: MLABCELL_X87_Y9_N18
\H2|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr4~0_combout\ = ( \U|DP|C|out\(9) & ( (!\U|DP|C|out\(11) & (!\U|DP|C|out\(8) & !\U|DP|C|out\(10))) # (\U|DP|C|out\(11) & ((\U|DP|C|out\(10)))) ) ) # ( !\U|DP|C|out\(9) & ( (\U|DP|C|out\(11) & (!\U|DP|C|out\(8) & \U|DP|C|out\(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|C|ALT_INV_out\(11),
	datac => \U|DP|C|ALT_INV_out\(8),
	datad => \U|DP|C|ALT_INV_out\(10),
	dataf => \U|DP|C|ALT_INV_out\(9),
	combout => \H2|WideOr4~0_combout\);

-- Location: MLABCELL_X87_Y9_N21
\H2|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr3~0_combout\ = ( \U|DP|C|out\(9) & ( (!\U|DP|C|out\(8) & (\U|DP|C|out\(11) & !\U|DP|C|out\(10))) # (\U|DP|C|out\(8) & ((\U|DP|C|out\(10)))) ) ) # ( !\U|DP|C|out\(9) & ( (!\U|DP|C|out\(8) & (!\U|DP|C|out\(11) & \U|DP|C|out\(10))) # 
-- (\U|DP|C|out\(8) & ((!\U|DP|C|out\(10)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110100000010101011010000000001010010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|C|ALT_INV_out\(8),
	datac => \U|DP|C|ALT_INV_out\(11),
	datad => \U|DP|C|ALT_INV_out\(10),
	dataf => \U|DP|C|ALT_INV_out\(9),
	combout => \H2|WideOr3~0_combout\);

-- Location: MLABCELL_X87_Y9_N36
\H2|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr2~0_combout\ = ( \U|DP|C|out\(11) & ( (\U|DP|C|out\(8) & (!\U|DP|C|out\(9) & !\U|DP|C|out\(10))) ) ) # ( !\U|DP|C|out\(11) & ( ((!\U|DP|C|out\(9) & \U|DP|C|out\(10))) # (\U|DP|C|out\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110101000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|C|ALT_INV_out\(8),
	datab => \U|DP|C|ALT_INV_out\(9),
	datac => \U|DP|C|ALT_INV_out\(10),
	dataf => \U|DP|C|ALT_INV_out\(11),
	combout => \H2|WideOr2~0_combout\);

-- Location: MLABCELL_X87_Y9_N39
\H2|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr1~0_combout\ = (!\U|DP|C|out\(8) & (\U|DP|C|out\(9) & (!\U|DP|C|out\(11) & !\U|DP|C|out\(10)))) # (\U|DP|C|out\(8) & (!\U|DP|C|out\(11) $ (((!\U|DP|C|out\(9) & \U|DP|C|out\(10))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000010100011100000001010001110000000101000111000000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|C|ALT_INV_out\(8),
	datab => \U|DP|C|ALT_INV_out\(9),
	datac => \U|DP|C|ALT_INV_out\(11),
	datad => \U|DP|C|ALT_INV_out\(10),
	combout => \H2|WideOr1~0_combout\);

-- Location: MLABCELL_X87_Y9_N30
\H2|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr0~0_combout\ = ( \U|DP|C|out\(11) & ( ((!\U|DP|C|out\(10)) # (\U|DP|C|out\(8))) # (\U|DP|C|out\(9)) ) ) # ( !\U|DP|C|out\(11) & ( (!\U|DP|C|out\(9) & ((\U|DP|C|out\(10)))) # (\U|DP|C|out\(9) & ((!\U|DP|C|out\(8)) # (!\U|DP|C|out\(10)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111100001100111111110011111111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|C|ALT_INV_out\(9),
	datac => \U|DP|C|ALT_INV_out\(8),
	datad => \U|DP|C|ALT_INV_out\(10),
	dataf => \U|DP|C|ALT_INV_out\(11),
	combout => \H2|WideOr0~0_combout\);

-- Location: MLABCELL_X87_Y9_N33
\H3|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr6~0_combout\ = ( \U|DP|C|out\(15) & ( (\U|DP|C|out\(12) & (!\U|DP|C|out\(14) $ (!\U|DP|C|out\(13)))) ) ) # ( !\U|DP|C|out\(15) & ( (!\U|DP|C|out\(13) & (!\U|DP|C|out\(14) $ (!\U|DP|C|out\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|C|ALT_INV_out\(14),
	datac => \U|DP|C|ALT_INV_out\(13),
	datad => \U|DP|C|ALT_INV_out\(12),
	dataf => \U|DP|C|ALT_INV_out\(15),
	combout => \H3|WideOr6~0_combout\);

-- Location: MLABCELL_X87_Y9_N12
\H3|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr5~0_combout\ = ( \U|DP|C|out\(15) & ( (!\U|DP|C|out\(12) & (\U|DP|C|out\(14))) # (\U|DP|C|out\(12) & ((\U|DP|C|out\(13)))) ) ) # ( !\U|DP|C|out\(15) & ( (\U|DP|C|out\(14) & (!\U|DP|C|out\(13) $ (!\U|DP|C|out\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010001010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|C|ALT_INV_out\(14),
	datab => \U|DP|C|ALT_INV_out\(13),
	datad => \U|DP|C|ALT_INV_out\(12),
	dataf => \U|DP|C|ALT_INV_out\(15),
	combout => \H3|WideOr5~0_combout\);

-- Location: MLABCELL_X87_Y9_N15
\H3|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr4~0_combout\ = ( \U|DP|C|out\(15) & ( (\U|DP|C|out\(14) & ((!\U|DP|C|out\(12)) # (\U|DP|C|out\(13)))) ) ) # ( !\U|DP|C|out\(15) & ( (!\U|DP|C|out\(14) & (\U|DP|C|out\(13) & !\U|DP|C|out\(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000001010101000100010101010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|C|ALT_INV_out\(14),
	datab => \U|DP|C|ALT_INV_out\(13),
	datad => \U|DP|C|ALT_INV_out\(12),
	dataf => \U|DP|C|ALT_INV_out\(15),
	combout => \H3|WideOr4~0_combout\);

-- Location: MLABCELL_X87_Y9_N42
\H3|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr3~0_combout\ = ( \U|DP|C|out\(15) & ( (!\U|DP|C|out\(13) & (!\U|DP|C|out\(14) & \U|DP|C|out\(12))) # (\U|DP|C|out\(13) & (!\U|DP|C|out\(14) $ (\U|DP|C|out\(12)))) ) ) # ( !\U|DP|C|out\(15) & ( (!\U|DP|C|out\(13) & (!\U|DP|C|out\(14) $ 
-- (!\U|DP|C|out\(12)))) # (\U|DP|C|out\(13) & (\U|DP|C|out\(14) & \U|DP|C|out\(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000011000011001100001100110000110000110011000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|C|ALT_INV_out\(13),
	datac => \U|DP|C|ALT_INV_out\(14),
	datad => \U|DP|C|ALT_INV_out\(12),
	dataf => \U|DP|C|ALT_INV_out\(15),
	combout => \H3|WideOr3~0_combout\);

-- Location: MLABCELL_X87_Y9_N45
\H3|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr2~0_combout\ = ( \U|DP|C|out\(15) & ( (!\U|DP|C|out\(14) & (!\U|DP|C|out\(13) & \U|DP|C|out\(12))) ) ) # ( !\U|DP|C|out\(15) & ( ((\U|DP|C|out\(14) & !\U|DP|C|out\(13))) # (\U|DP|C|out\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011111111010001001111111100000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|C|ALT_INV_out\(14),
	datab => \U|DP|C|ALT_INV_out\(13),
	datad => \U|DP|C|ALT_INV_out\(12),
	dataf => \U|DP|C|ALT_INV_out\(15),
	combout => \H3|WideOr2~0_combout\);

-- Location: LABCELL_X88_Y9_N3
\H3|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr1~0_combout\ = ( \U|DP|C|out\(15) & ( (\U|DP|C|out\(12) & (\U|DP|C|out\(14) & !\U|DP|C|out\(13))) ) ) # ( !\U|DP|C|out\(15) & ( (!\U|DP|C|out\(12) & (!\U|DP|C|out\(14) & \U|DP|C|out\(13))) # (\U|DP|C|out\(12) & ((!\U|DP|C|out\(14)) # 
-- (\U|DP|C|out\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110101010100001111010100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|C|ALT_INV_out\(12),
	datac => \U|DP|C|ALT_INV_out\(14),
	datad => \U|DP|C|ALT_INV_out\(13),
	dataf => \U|DP|C|ALT_INV_out\(15),
	combout => \H3|WideOr1~0_combout\);

-- Location: LABCELL_X88_Y9_N42
\H3|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr0~0_combout\ = ( \U|DP|C|out\(13) & ( (!\U|DP|C|out\(12)) # ((!\U|DP|C|out\(14)) # (\U|DP|C|out\(15))) ) ) # ( !\U|DP|C|out\(13) & ( (!\U|DP|C|out\(14) & ((\U|DP|C|out\(15)))) # (\U|DP|C|out\(14) & ((!\U|DP|C|out\(15)) # (\U|DP|C|out\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110100111101111011111110111100111101001111011110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|C|ALT_INV_out\(12),
	datab => \U|DP|C|ALT_INV_out\(14),
	datac => \U|DP|C|ALT_INV_out\(15),
	datae => \U|DP|C|ALT_INV_out\(13),
	combout => \H3|WideOr0~0_combout\);

-- Location: LABCELL_X88_Y8_N6
\U|DP|U2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Equal0~0_combout\ = ( !\U|DP|U2|Add0~9_sumout\ & ( (!\U|instruct|out\(12) & (!\U|DP|U2|Add0~1_sumout\ & !\U|DP|U2|Add0~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(12),
	datac => \U|DP|U2|ALT_INV_Add0~1_sumout\,
	datad => \U|DP|U2|ALT_INV_Add0~5_sumout\,
	dataf => \U|DP|U2|ALT_INV_Add0~9_sumout\,
	combout => \U|DP|U2|Equal0~0_combout\);

-- Location: MLABCELL_X87_Y8_N36
\U|DP|U2|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Equal0~4_combout\ = ( !\U|DP|U2|Mux1~0_combout\ & ( (!\U|DP|U2|Mux3~0_combout\ & !\U|DP|U2|Mux2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|U2|ALT_INV_Mux3~0_combout\,
	datad => \U|DP|U2|ALT_INV_Mux2~0_combout\,
	dataf => \U|DP|U2|ALT_INV_Mux1~0_combout\,
	combout => \U|DP|U2|Equal0~4_combout\);

-- Location: MLABCELL_X87_Y8_N15
\U|DP|U2|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Equal0~1_combout\ = ( \rtl~58_combout\ & ( (!\U|instruct|out\(11) & (!\U|DP|A|out\(6) & ((!\U|DP|A|out\(7)) # (!\rtl~59_combout\)))) # (\U|instruct|out\(11) & (((\rtl~59_combout\)))) ) ) # ( !\rtl~58_combout\ & ( (!\U|instruct|out\(11) & 
-- ((!\U|DP|A|out\(7)) # (!\rtl~59_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000000000111011100000000011100000001100111110000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|A|ALT_INV_out\(7),
	datab => \ALT_INV_rtl~59_combout\,
	datac => \U|DP|A|ALT_INV_out\(6),
	datad => \U|instruct|ALT_INV_out\(11),
	dataf => \ALT_INV_rtl~58_combout\,
	combout => \U|DP|U2|Equal0~1_combout\);

-- Location: MLABCELL_X87_Y8_N45
\U|DP|U2|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Equal0~2_combout\ = ( \U|instruct|out\(12) & ( !\U|DP|U2|Mux0~0_combout\ & ( (!\U|DP|U2|Mux15~0_combout\ & ((!\U|instruct|out\(11) & ((!\U|DP|A|out\(1)) # (!\rtl~53_combout\))) # (\U|instruct|out\(11) & ((\rtl~53_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruct|ALT_INV_out\(11),
	datab => \U|DP|A|ALT_INV_out\(1),
	datac => \U|DP|U2|ALT_INV_Mux15~0_combout\,
	datad => \ALT_INV_rtl~53_combout\,
	datae => \U|instruct|ALT_INV_out\(12),
	dataf => \U|DP|U2|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|U2|Equal0~2_combout\);

-- Location: MLABCELL_X87_Y8_N48
\U|DP|U2|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Equal0~3_combout\ = ( \U|DP|U2|Equal0~2_combout\ & ( !\U|DP|U2|Mux11~0_combout\ & ( (!\U|DP|U2|Mux10~0_combout\ & (!\U|DP|U2|Mux13~0_combout\ & (!\U|DP|U2|Mux12~0_combout\ & \U|DP|U2|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|U2|ALT_INV_Mux10~0_combout\,
	datab => \U|DP|U2|ALT_INV_Mux13~0_combout\,
	datac => \U|DP|U2|ALT_INV_Mux12~0_combout\,
	datad => \U|DP|U2|ALT_INV_Equal0~1_combout\,
	datae => \U|DP|U2|ALT_INV_Equal0~2_combout\,
	dataf => \U|DP|U2|ALT_INV_Mux11~0_combout\,
	combout => \U|DP|U2|Equal0~3_combout\);

-- Location: MLABCELL_X87_Y8_N27
\U|DP|U2|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Equal0~5_combout\ = ( \U|DP|U2|Equal0~4_combout\ & ( \U|DP|U2|Equal0~3_combout\ & ( (!\U|DP|U2|Mux5~0_combout\ & (!\U|DP|U2|Mux6~0_combout\ & (!\U|DP|U2|Mux4~0_combout\ & !\U|DP|U2|Mux7~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|U2|ALT_INV_Mux5~0_combout\,
	datab => \U|DP|U2|ALT_INV_Mux6~0_combout\,
	datac => \U|DP|U2|ALT_INV_Mux4~0_combout\,
	datad => \U|DP|U2|ALT_INV_Mux7~0_combout\,
	datae => \U|DP|U2|ALT_INV_Equal0~4_combout\,
	dataf => \U|DP|U2|ALT_INV_Equal0~3_combout\,
	combout => \U|DP|U2|Equal0~5_combout\);

-- Location: LABCELL_X88_Y8_N0
\U|DP|U2|Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Equal0~8_combout\ = ( !\U|DP|U2|Add0~45_sumout\ & ( (!\U|DP|U2|Add0~21_sumout\ & (!\U|DP|U2|Add0~13_sumout\ & (!\U|DP|U2|Add0~25_sumout\ & !\U|DP|U2|Add0~17_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|U2|ALT_INV_Add0~21_sumout\,
	datab => \U|DP|U2|ALT_INV_Add0~13_sumout\,
	datac => \U|DP|U2|ALT_INV_Add0~25_sumout\,
	datad => \U|DP|U2|ALT_INV_Add0~17_sumout\,
	dataf => \U|DP|U2|ALT_INV_Add0~45_sumout\,
	combout => \U|DP|U2|Equal0~8_combout\);

-- Location: LABCELL_X88_Y7_N0
\U|DP|U2|Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Equal0~7_combout\ = ( !\U|DP|U2|Add0~33_sumout\ & ( !\U|DP|U2|Add0~61_sumout\ & ( (!\U|DP|U2|Add0~37_sumout\ & (!\U|DP|U2|Add0~57_sumout\ & (!\U|DP|U2|Add0~29_sumout\ & !\U|DP|U2|Add0~53_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|U2|ALT_INV_Add0~37_sumout\,
	datab => \U|DP|U2|ALT_INV_Add0~57_sumout\,
	datac => \U|DP|U2|ALT_INV_Add0~29_sumout\,
	datad => \U|DP|U2|ALT_INV_Add0~53_sumout\,
	datae => \U|DP|U2|ALT_INV_Add0~33_sumout\,
	dataf => \U|DP|U2|ALT_INV_Add0~61_sumout\,
	combout => \U|DP|U2|Equal0~7_combout\);

-- Location: LABCELL_X88_Y8_N12
\U|DP|U2|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|U2|Equal0~6_combout\ = ( \U|DP|U2|Equal0~8_combout\ & ( \U|DP|U2|Equal0~7_combout\ & ( ((!\U|DP|U2|Add0~41_sumout\ & (\U|DP|U2|Equal0~0_combout\ & !\U|DP|U2|Add0~49_sumout\))) # (\U|DP|U2|Equal0~5_combout\) ) ) ) # ( !\U|DP|U2|Equal0~8_combout\ & ( 
-- \U|DP|U2|Equal0~7_combout\ & ( \U|DP|U2|Equal0~5_combout\ ) ) ) # ( \U|DP|U2|Equal0~8_combout\ & ( !\U|DP|U2|Equal0~7_combout\ & ( \U|DP|U2|Equal0~5_combout\ ) ) ) # ( !\U|DP|U2|Equal0~8_combout\ & ( !\U|DP|U2|Equal0~7_combout\ & ( 
-- \U|DP|U2|Equal0~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|U2|ALT_INV_Add0~41_sumout\,
	datab => \U|DP|U2|ALT_INV_Equal0~0_combout\,
	datac => \U|DP|U2|ALT_INV_Add0~49_sumout\,
	datad => \U|DP|U2|ALT_INV_Equal0~5_combout\,
	datae => \U|DP|U2|ALT_INV_Equal0~8_combout\,
	dataf => \U|DP|U2|ALT_INV_Equal0~7_combout\,
	combout => \U|DP|U2|Equal0~6_combout\);

-- Location: FF_X88_Y8_N13
\U|DP|stat|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|U2|Equal0~6_combout\,
	ena => \U|statemachine|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|stat|out\(0));

-- Location: FF_X85_Y7_N25
\U|DP|A|out[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|outp|b\(15),
	sload => VCC,
	ena => \U|statemachine|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|A|out[15]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y7_N15
\U|DP|overflowcheck|ovf~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|overflowcheck|ovf~0_combout\ = ( \rtl~30_combout\ & ( \U|DP|A|out[15]~DUPLICATE_q\ & ( (!\rtl~31_combout\ & !\U|DP|B|out\(15)) ) ) ) # ( !\rtl~30_combout\ & ( \U|DP|A|out[15]~DUPLICATE_q\ & ( (!\U|DP|B|out\(15)) # (\rtl~31_combout\) ) ) ) # ( 
-- \rtl~30_combout\ & ( !\U|DP|A|out[15]~DUPLICATE_q\ & ( (\U|DP|B|out\(15)) # (\rtl~31_combout\) ) ) ) # ( !\rtl~30_combout\ & ( !\U|DP|A|out[15]~DUPLICATE_q\ & ( (!\rtl~31_combout\ & \U|DP|B|out\(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111111110101111101011010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~31_combout\,
	datac => \U|DP|B|ALT_INV_out\(15),
	datae => \ALT_INV_rtl~30_combout\,
	dataf => \U|DP|A|ALT_INV_out[15]~DUPLICATE_q\,
	combout => \U|DP|overflowcheck|ovf~0_combout\);

-- Location: FF_X84_Y7_N16
\U|DP|stat|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|overflowcheck|ovf~0_combout\,
	sclr => \U|instruct|out\(12),
	ena => \U|statemachine|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|stat|out\(2));

-- Location: LABCELL_X88_Y9_N0
\U|DP|stat|out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|stat|out[1]~feeder_combout\ = ( \U|DP|U2|Add0~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|U2|ALT_INV_Add0~61_sumout\,
	combout => \U|DP|stat|out[1]~feeder_combout\);

-- Location: FF_X88_Y9_N1
\U|DP|stat|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|stat|out[1]~feeder_combout\,
	asdata => \U|DP|U2|Mux0~0_combout\,
	sload => \U|instruct|out\(12),
	ena => \U|statemachine|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|stat|out\(1));

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: MLABCELL_X21_Y25_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


