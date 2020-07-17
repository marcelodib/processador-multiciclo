-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.2 Build 602 07/19/2017 SJ Lite Edition"

-- DATE "10/26/2017 20:57:50"

-- 
-- Device: Altera EP4CE40F29I8L Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Main IS
    PORT (
	clock : IN std_logic;
	instruction : IN std_logic_vector(12 DOWNTO 0);
	Riout : OUT std_logic_vector(7 DOWNTO 0);
	Rjout : OUT std_logic_vector(7 DOWNTO 0)
	);
END Main;

-- Design Ports Information
-- Riout[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Riout[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Riout[2]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Riout[3]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Riout[4]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Riout[5]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Riout[6]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Riout[7]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rjout[0]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rjout[1]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rjout[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rjout[3]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rjout[4]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rjout[5]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rjout[6]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rjout[7]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[10]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[11]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[12]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[0]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[9]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[8]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[2]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[3]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[4]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[5]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[6]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[7]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_instruction : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_Riout : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Rjout : std_logic_vector(7 DOWNTO 0);
SIGNAL \stage5|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Riout[0]~output_o\ : std_logic;
SIGNAL \Riout[1]~output_o\ : std_logic;
SIGNAL \Riout[2]~output_o\ : std_logic;
SIGNAL \Riout[3]~output_o\ : std_logic;
SIGNAL \Riout[4]~output_o\ : std_logic;
SIGNAL \Riout[5]~output_o\ : std_logic;
SIGNAL \Riout[6]~output_o\ : std_logic;
SIGNAL \Riout[7]~output_o\ : std_logic;
SIGNAL \Rjout[0]~output_o\ : std_logic;
SIGNAL \Rjout[1]~output_o\ : std_logic;
SIGNAL \Rjout[2]~output_o\ : std_logic;
SIGNAL \Rjout[3]~output_o\ : std_logic;
SIGNAL \Rjout[4]~output_o\ : std_logic;
SIGNAL \Rjout[5]~output_o\ : std_logic;
SIGNAL \Rjout[6]~output_o\ : std_logic;
SIGNAL \Rjout[7]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \instruction[10]~input_o\ : std_logic;
SIGNAL \instruction[11]~input_o\ : std_logic;
SIGNAL \instruction[12]~input_o\ : std_logic;
SIGNAL \stage3|Ri[7]~27_combout\ : std_logic;
SIGNAL \stage|state.state3~feeder_combout\ : std_logic;
SIGNAL \stage|state.state3~q\ : std_logic;
SIGNAL \stage|state.state4~feeder_combout\ : std_logic;
SIGNAL \stage|state.state4~q\ : std_logic;
SIGNAL \stage|state.state0~0_combout\ : std_logic;
SIGNAL \stage|state.state0~q\ : std_logic;
SIGNAL \stage|state.state1~0_combout\ : std_logic;
SIGNAL \stage|state.state1~q\ : std_logic;
SIGNAL \stage|state.state2~feeder_combout\ : std_logic;
SIGNAL \stage|state.state2~q\ : std_logic;
SIGNAL \stage3|Xchg~0_combout\ : std_logic;
SIGNAL \stage3|Xchg~q\ : std_logic;
SIGNAL \stage5|ResOut~0_combout\ : std_logic;
SIGNAL \instruction[0]~input_o\ : std_logic;
SIGNAL \stage0|R2s[0]~feeder_combout\ : std_logic;
SIGNAL \instruction[9]~input_o\ : std_logic;
SIGNAL \instruction[8]~input_o\ : std_logic;
SIGNAL \stage0|Mux23~0_combout\ : std_logic;
SIGNAL \stage0|Mux23~2_combout\ : std_logic;
SIGNAL \instruction[7]~input_o\ : std_logic;
SIGNAL \instruction[6]~input_o\ : std_logic;
SIGNAL \stage0|R0s[0]~0_combout\ : std_logic;
SIGNAL \stage0|Mux23~1_combout\ : std_logic;
SIGNAL \stage0|Mux47~0_combout\ : std_logic;
SIGNAL \stage0|Mux47~1_combout\ : std_logic;
SIGNAL \stage2|ResOut~0_combout\ : std_logic;
SIGNAL \stage5|process_0~0_combout\ : std_logic;
SIGNAL \stage5|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \stage3|Add0~0_combout\ : std_logic;
SIGNAL \stage0|Mux39~0_combout\ : std_logic;
SIGNAL \stage0|Mux39~1_combout\ : std_logic;
SIGNAL \stage3|Ri[0]~9_cout\ : std_logic;
SIGNAL \stage3|Ri[0]~10_combout\ : std_logic;
SIGNAL \stage3|Ri[7]~12_combout\ : std_logic;
SIGNAL \stage0|R2s[1]~feeder_combout\ : std_logic;
SIGNAL \stage0|Mux46~0_combout\ : std_logic;
SIGNAL \stage0|Mux46~1_combout\ : std_logic;
SIGNAL \instruction[1]~input_o\ : std_logic;
SIGNAL \stage2|ResOut~1_combout\ : std_logic;
SIGNAL \stage3|Add0~1_combout\ : std_logic;
SIGNAL \stage0|Mux38~0_combout\ : std_logic;
SIGNAL \stage0|Mux38~1_combout\ : std_logic;
SIGNAL \stage3|Ri[0]~11\ : std_logic;
SIGNAL \stage3|Ri[1]~13_combout\ : std_logic;
SIGNAL \stage0|R2s[2]~feeder_combout\ : std_logic;
SIGNAL \stage0|Mux45~0_combout\ : std_logic;
SIGNAL \stage0|Mux45~1_combout\ : std_logic;
SIGNAL \instruction[2]~input_o\ : std_logic;
SIGNAL \stage2|ResOut~2_combout\ : std_logic;
SIGNAL \stage3|Add0~2_combout\ : std_logic;
SIGNAL \stage0|Mux37~0_combout\ : std_logic;
SIGNAL \stage0|Mux37~1_combout\ : std_logic;
SIGNAL \stage3|Ri[1]~14\ : std_logic;
SIGNAL \stage3|Ri[2]~15_combout\ : std_logic;
SIGNAL \stage0|R2s[3]~feeder_combout\ : std_logic;
SIGNAL \stage0|Mux36~0_combout\ : std_logic;
SIGNAL \stage0|Mux36~1_combout\ : std_logic;
SIGNAL \stage0|Mux44~0_combout\ : std_logic;
SIGNAL \stage0|Mux44~1_combout\ : std_logic;
SIGNAL \instruction[3]~input_o\ : std_logic;
SIGNAL \stage2|ResOut~3_combout\ : std_logic;
SIGNAL \stage3|Add0~3_combout\ : std_logic;
SIGNAL \stage3|Ri[2]~16\ : std_logic;
SIGNAL \stage3|Ri[3]~17_combout\ : std_logic;
SIGNAL \stage0|R2s[4]~feeder_combout\ : std_logic;
SIGNAL \stage0|Mux35~0_combout\ : std_logic;
SIGNAL \stage0|Mux35~1_combout\ : std_logic;
SIGNAL \stage0|Mux43~0_combout\ : std_logic;
SIGNAL \stage0|Mux43~1_combout\ : std_logic;
SIGNAL \instruction[4]~input_o\ : std_logic;
SIGNAL \stage2|ResOut~4_combout\ : std_logic;
SIGNAL \stage3|Add0~4_combout\ : std_logic;
SIGNAL \stage3|Ri[3]~18\ : std_logic;
SIGNAL \stage3|Ri[4]~19_combout\ : std_logic;
SIGNAL \stage0|R2s[5]~feeder_combout\ : std_logic;
SIGNAL \stage0|Mux34~0_combout\ : std_logic;
SIGNAL \stage0|Mux34~1_combout\ : std_logic;
SIGNAL \stage0|Mux42~0_combout\ : std_logic;
SIGNAL \stage0|Mux42~1_combout\ : std_logic;
SIGNAL \instruction[5]~input_o\ : std_logic;
SIGNAL \stage2|ResOut~5_combout\ : std_logic;
SIGNAL \stage3|Add0~5_combout\ : std_logic;
SIGNAL \stage3|Ri[4]~20\ : std_logic;
SIGNAL \stage3|Ri[5]~21_combout\ : std_logic;
SIGNAL \stage0|Mux33~0_combout\ : std_logic;
SIGNAL \stage0|R2s[6]~feeder_combout\ : std_logic;
SIGNAL \stage0|Mux33~1_combout\ : std_logic;
SIGNAL \stage0|Mux41~0_combout\ : std_logic;
SIGNAL \stage0|Mux41~1_combout\ : std_logic;
SIGNAL \stage2|ResOut~6_combout\ : std_logic;
SIGNAL \stage3|Add0~6_combout\ : std_logic;
SIGNAL \stage3|Ri[5]~22\ : std_logic;
SIGNAL \stage3|Ri[6]~23_combout\ : std_logic;
SIGNAL \stage0|R2s[7]~feeder_combout\ : std_logic;
SIGNAL \stage0|Mux32~0_combout\ : std_logic;
SIGNAL \stage0|Mux32~1_combout\ : std_logic;
SIGNAL \stage0|Mux40~0_combout\ : std_logic;
SIGNAL \stage0|Mux40~1_combout\ : std_logic;
SIGNAL \stage2|ResOut~7_combout\ : std_logic;
SIGNAL \stage3|Add0~7_combout\ : std_logic;
SIGNAL \stage3|Ri[6]~24\ : std_logic;
SIGNAL \stage3|Ri[7]~25_combout\ : std_logic;
SIGNAL \stage3|Mux15~0_combout\ : std_logic;
SIGNAL \stage3|Rj[0]~0_combout\ : std_logic;
SIGNAL \stage5|ResOut~1_combout\ : std_logic;
SIGNAL \stage3|Mux14~0_combout\ : std_logic;
SIGNAL \stage5|ResOut~2_combout\ : std_logic;
SIGNAL \stage3|Mux13~0_combout\ : std_logic;
SIGNAL \stage5|ResOut~3_combout\ : std_logic;
SIGNAL \stage3|Mux12~0_combout\ : std_logic;
SIGNAL \stage5|ResOut~4_combout\ : std_logic;
SIGNAL \stage3|Mux11~0_combout\ : std_logic;
SIGNAL \stage5|ResOut~5_combout\ : std_logic;
SIGNAL \stage3|Mux10~0_combout\ : std_logic;
SIGNAL \stage5|ResOut~6_combout\ : std_logic;
SIGNAL \stage3|Mux9~0_combout\ : std_logic;
SIGNAL \stage5|ResOut~7_combout\ : std_logic;
SIGNAL \stage3|Mux8~0_combout\ : std_logic;
SIGNAL \stage5|ResOut~8_combout\ : std_logic;
SIGNAL \stage0|R3s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \stage3|Ri\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \stage3|Rj\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \stage0|Rout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \stage0|Rout1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \stage0|R2s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \stage0|R1s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \stage0|R0s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \stage5|ResOut\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \stage2|ResOut\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \stage|ALT_INV_state.state4~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_instruction <= instruction;
Riout <= ww_Riout;
Rjout <= ww_Rjout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\stage5|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \stage5|process_0~0_combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\stage|ALT_INV_state.state4~q\ <= NOT \stage|state.state4~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y32_N2
\Riout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Ri\(0),
	devoe => ww_devoe,
	o => \Riout[0]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\Riout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Ri\(1),
	devoe => ww_devoe,
	o => \Riout[1]~output_o\);

-- Location: IOOBUF_X0_Y28_N2
\Riout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Ri\(2),
	devoe => ww_devoe,
	o => \Riout[2]~output_o\);

-- Location: IOOBUF_X0_Y31_N23
\Riout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Ri\(3),
	devoe => ww_devoe,
	o => \Riout[3]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\Riout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Ri\(4),
	devoe => ww_devoe,
	o => \Riout[4]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\Riout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Ri\(5),
	devoe => ww_devoe,
	o => \Riout[5]~output_o\);

-- Location: IOOBUF_X0_Y31_N2
\Riout[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Ri\(6),
	devoe => ww_devoe,
	o => \Riout[6]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\Riout[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Ri\(7),
	devoe => ww_devoe,
	o => \Riout[7]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\Rjout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|ResOut\(0),
	devoe => ww_devoe,
	o => \Rjout[0]~output_o\);

-- Location: IOOBUF_X0_Y32_N9
\Rjout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|ResOut\(1),
	devoe => ww_devoe,
	o => \Rjout[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\Rjout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|ResOut\(2),
	devoe => ww_devoe,
	o => \Rjout[2]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\Rjout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|ResOut\(3),
	devoe => ww_devoe,
	o => \Rjout[3]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\Rjout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|ResOut\(4),
	devoe => ww_devoe,
	o => \Rjout[4]~output_o\);

-- Location: IOOBUF_X0_Y33_N9
\Rjout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|ResOut\(5),
	devoe => ww_devoe,
	o => \Rjout[5]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\Rjout[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|ResOut\(6),
	devoe => ww_devoe,
	o => \Rjout[6]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\Rjout[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|ResOut\(7),
	devoe => ww_devoe,
	o => \Rjout[7]~output_o\);

-- Location: IOIBUF_X0_Y21_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y29_N22
\instruction[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(10),
	o => \instruction[10]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\instruction[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(11),
	o => \instruction[11]~input_o\);

-- Location: IOIBUF_X0_Y30_N8
\instruction[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(12),
	o => \instruction[12]~input_o\);

-- Location: LCCOMB_X3_Y29_N30
\stage3|Ri[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Ri[7]~27_combout\ = (\instruction[11]~input_o\ & \instruction[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instruction[11]~input_o\,
	datad => \instruction[12]~input_o\,
	combout => \stage3|Ri[7]~27_combout\);

-- Location: LCCOMB_X3_Y29_N10
\stage|state.state3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage|state.state3~feeder_combout\ = \stage|state.state2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage|state.state2~q\,
	combout => \stage|state.state3~feeder_combout\);

-- Location: FF_X3_Y29_N11
\stage|state.state3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \stage|state.state3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage|state.state3~q\);

-- Location: LCCOMB_X3_Y29_N0
\stage|state.state4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage|state.state4~feeder_combout\ = \stage|state.state3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage|state.state3~q\,
	combout => \stage|state.state4~feeder_combout\);

-- Location: FF_X3_Y29_N1
\stage|state.state4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage|state.state4~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage|state.state4~q\);

-- Location: LCCOMB_X3_Y29_N12
\stage|state.state0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage|state.state0~0_combout\ = !\stage|state.state4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage|state.state4~q\,
	combout => \stage|state.state0~0_combout\);

-- Location: FF_X3_Y29_N13
\stage|state.state0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage|state.state0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage|state.state0~q\);

-- Location: LCCOMB_X3_Y29_N8
\stage|state.state1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage|state.state1~0_combout\ = !\stage|state.state0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage|state.state0~q\,
	combout => \stage|state.state1~0_combout\);

-- Location: FF_X3_Y29_N9
\stage|state.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \stage|state.state1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage|state.state1~q\);

-- Location: LCCOMB_X1_Y29_N28
\stage|state.state2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage|state.state2~feeder_combout\ = \stage|state.state1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage|state.state1~q\,
	combout => \stage|state.state2~feeder_combout\);

-- Location: FF_X1_Y29_N29
\stage|state.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage|state.state2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage|state.state2~q\);

-- Location: LCCOMB_X3_Y29_N28
\stage3|Xchg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Xchg~0_combout\ = (\stage|state.state2~q\ & (\stage3|Ri[7]~27_combout\ & ((\stage3|Xchg~q\) # (!\instruction[10]~input_o\)))) # (!\stage|state.state2~q\ & (((\stage3|Xchg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3|Ri[7]~27_combout\,
	datab => \instruction[10]~input_o\,
	datac => \stage3|Xchg~q\,
	datad => \stage|state.state2~q\,
	combout => \stage3|Xchg~0_combout\);

-- Location: FF_X3_Y29_N29
\stage3|Xchg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage3|Xchg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage3|Xchg~q\);

-- Location: LCCOMB_X2_Y29_N14
\stage5|ResOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|ResOut~0_combout\ = (\instruction[11]~input_o\ & (((!\instruction[10]~input_o\ & \stage3|Xchg~q\)) # (!\instruction[12]~input_o\))) # (!\instruction[11]~input_o\ & (\instruction[12]~input_o\ & (\instruction[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datab => \instruction[12]~input_o\,
	datac => \instruction[10]~input_o\,
	datad => \stage3|Xchg~q\,
	combout => \stage5|ResOut~0_combout\);

-- Location: IOIBUF_X0_Y34_N1
\instruction[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(0),
	o => \instruction[0]~input_o\);

-- Location: LCCOMB_X4_Y30_N22
\stage0|R2s[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|R2s[0]~feeder_combout\ = \stage3|Ri\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage3|Ri\(0),
	combout => \stage0|R2s[0]~feeder_combout\);

-- Location: IOIBUF_X0_Y34_N22
\instruction[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(9),
	o => \instruction[9]~input_o\);

-- Location: IOIBUF_X0_Y30_N22
\instruction[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(8),
	o => \instruction[8]~input_o\);

-- Location: LCCOMB_X4_Y30_N8
\stage0|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux23~0_combout\ = (\instruction[9]~input_o\ & (!\instruction[8]~input_o\ & \stage|state.state4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[9]~input_o\,
	datac => \instruction[8]~input_o\,
	datad => \stage|state.state4~q\,
	combout => \stage0|Mux23~0_combout\);

-- Location: FF_X4_Y30_N23
\stage0|R2s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage0|R2s[0]~feeder_combout\,
	ena => \stage0|Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R2s\(0));

-- Location: LCCOMB_X3_Y29_N4
\stage0|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux23~2_combout\ = (\instruction[8]~input_o\ & (\instruction[9]~input_o\ & \stage|state.state4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[8]~input_o\,
	datac => \instruction[9]~input_o\,
	datad => \stage|state.state4~q\,
	combout => \stage0|Mux23~2_combout\);

-- Location: FF_X2_Y29_N17
\stage0|R3s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \stage3|Ri\(0),
	sload => VCC,
	ena => \stage0|Mux23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R3s\(0));

-- Location: IOIBUF_X0_Y30_N1
\instruction[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(7),
	o => \instruction[7]~input_o\);

-- Location: IOIBUF_X0_Y30_N15
\instruction[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(6),
	o => \instruction[6]~input_o\);

-- Location: LCCOMB_X2_Y30_N24
\stage0|R0s[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|R0s[0]~0_combout\ = (!\instruction[9]~input_o\ & (!\instruction[8]~input_o\ & \stage|state.state4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[9]~input_o\,
	datab => \instruction[8]~input_o\,
	datad => \stage|state.state4~q\,
	combout => \stage0|R0s[0]~0_combout\);

-- Location: FF_X2_Y30_N13
\stage0|R0s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \stage3|Ri\(0),
	sload => VCC,
	ena => \stage0|R0s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R0s\(0));

-- Location: LCCOMB_X3_Y29_N14
\stage0|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux23~1_combout\ = (\instruction[8]~input_o\ & (!\instruction[9]~input_o\ & \stage|state.state4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[8]~input_o\,
	datac => \instruction[9]~input_o\,
	datad => \stage|state.state4~q\,
	combout => \stage0|Mux23~1_combout\);

-- Location: FF_X2_Y29_N27
\stage0|R1s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \stage3|Ri\(0),
	sload => VCC,
	ena => \stage0|Mux23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R1s\(0));

-- Location: LCCOMB_X2_Y30_N12
\stage0|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux47~0_combout\ = (\instruction[7]~input_o\ & (\instruction[6]~input_o\)) # (!\instruction[7]~input_o\ & ((\instruction[6]~input_o\ & ((\stage0|R1s\(0)))) # (!\instruction[6]~input_o\ & (\stage0|R0s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[7]~input_o\,
	datab => \instruction[6]~input_o\,
	datac => \stage0|R0s\(0),
	datad => \stage0|R1s\(0),
	combout => \stage0|Mux47~0_combout\);

-- Location: LCCOMB_X3_Y30_N22
\stage0|Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux47~1_combout\ = (\instruction[7]~input_o\ & ((\stage0|Mux47~0_combout\ & ((\stage0|R3s\(0)))) # (!\stage0|Mux47~0_combout\ & (\stage0|R2s\(0))))) # (!\instruction[7]~input_o\ & (((\stage0|Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|R2s\(0),
	datab => \stage0|R3s\(0),
	datac => \instruction[7]~input_o\,
	datad => \stage0|Mux47~0_combout\,
	combout => \stage0|Mux47~1_combout\);

-- Location: FF_X3_Y30_N23
\stage0|Rout1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage0|Mux47~1_combout\,
	ena => \stage|ALT_INV_state.state4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Rout1\(0));

-- Location: LCCOMB_X3_Y30_N12
\stage2|ResOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|ResOut~0_combout\ = (\stage5|ResOut~0_combout\ & (\instruction[0]~input_o\)) # (!\stage5|ResOut~0_combout\ & ((\stage0|Rout1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5|ResOut~0_combout\,
	datab => \instruction[0]~input_o\,
	datac => \stage0|Rout1\(0),
	combout => \stage2|ResOut~0_combout\);

-- Location: LCCOMB_X3_Y29_N26
\stage5|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|process_0~0_combout\ = (\instruction[10]~input_o\ & (!\stage3|Ri[7]~27_combout\ & ((\stage|state.state1~q\) # (\stage|state.state3~q\)))) # (!\instruction[10]~input_o\ & (((\stage|state.state1~q\) # (\stage|state.state3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datab => \stage3|Ri[7]~27_combout\,
	datac => \stage|state.state1~q\,
	datad => \stage|state.state3~q\,
	combout => \stage5|process_0~0_combout\);

-- Location: CLKCTRL_G1
\stage5|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \stage5|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \stage5|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X3_Y30_N18
\stage2|ResOut[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|ResOut\(0) = (GLOBAL(\stage5|process_0~0clkctrl_outclk\) & ((\stage2|ResOut~0_combout\))) # (!GLOBAL(\stage5|process_0~0clkctrl_outclk\) & (\stage2|ResOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage2|ResOut\(0),
	datac => \stage2|ResOut~0_combout\,
	datad => \stage5|process_0~0clkctrl_outclk\,
	combout => \stage2|ResOut\(0));

-- Location: LCCOMB_X1_Y30_N4
\stage3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Add0~0_combout\ = \instruction[10]~input_o\ $ (\stage2|ResOut\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datad => \stage2|ResOut\(0),
	combout => \stage3|Add0~0_combout\);

-- Location: LCCOMB_X2_Y30_N6
\stage0|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux39~0_combout\ = (\instruction[8]~input_o\ & (((\instruction[9]~input_o\) # (\stage0|R1s\(0))))) # (!\instruction[8]~input_o\ & (\stage0|R0s\(0) & (!\instruction[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|R0s\(0),
	datab => \instruction[8]~input_o\,
	datac => \instruction[9]~input_o\,
	datad => \stage0|R1s\(0),
	combout => \stage0|Mux39~0_combout\);

-- Location: LCCOMB_X1_Y30_N2
\stage0|Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux39~1_combout\ = (\instruction[9]~input_o\ & ((\stage0|Mux39~0_combout\ & ((\stage0|R3s\(0)))) # (!\stage0|Mux39~0_combout\ & (\stage0|R2s\(0))))) # (!\instruction[9]~input_o\ & (((\stage0|Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|R2s\(0),
	datab => \instruction[9]~input_o\,
	datac => \stage0|R3s\(0),
	datad => \stage0|Mux39~0_combout\,
	combout => \stage0|Mux39~1_combout\);

-- Location: FF_X1_Y30_N3
\stage0|Rout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage0|Mux39~1_combout\,
	ena => \stage|ALT_INV_state.state4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Rout\(0));

-- Location: LCCOMB_X1_Y30_N10
\stage3|Ri[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Ri[0]~9_cout\ = CARRY(\instruction[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[10]~input_o\,
	datad => VCC,
	cout => \stage3|Ri[0]~9_cout\);

-- Location: LCCOMB_X1_Y30_N12
\stage3|Ri[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Ri[0]~10_combout\ = (\stage3|Add0~0_combout\ & ((\stage0|Rout\(0) & (\stage3|Ri[0]~9_cout\ & VCC)) # (!\stage0|Rout\(0) & (!\stage3|Ri[0]~9_cout\)))) # (!\stage3|Add0~0_combout\ & ((\stage0|Rout\(0) & (!\stage3|Ri[0]~9_cout\)) # (!\stage0|Rout\(0) 
-- & ((\stage3|Ri[0]~9_cout\) # (GND)))))
-- \stage3|Ri[0]~11\ = CARRY((\stage3|Add0~0_combout\ & (!\stage0|Rout\(0) & !\stage3|Ri[0]~9_cout\)) # (!\stage3|Add0~0_combout\ & ((!\stage3|Ri[0]~9_cout\) # (!\stage0|Rout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3|Add0~0_combout\,
	datab => \stage0|Rout\(0),
	datad => VCC,
	cin => \stage3|Ri[0]~9_cout\,
	combout => \stage3|Ri[0]~10_combout\,
	cout => \stage3|Ri[0]~11\);

-- Location: LCCOMB_X2_Y30_N20
\stage3|Ri[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Ri[7]~12_combout\ = (\instruction[10]~input_o\ & (\instruction[11]~input_o\ & \instruction[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[10]~input_o\,
	datac => \instruction[11]~input_o\,
	datad => \instruction[12]~input_o\,
	combout => \stage3|Ri[7]~12_combout\);

-- Location: FF_X1_Y30_N13
\stage3|Ri[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage3|Ri[0]~10_combout\,
	asdata => \stage2|ResOut\(0),
	sclr => \stage3|Ri[7]~12_combout\,
	sload => \instruction[12]~input_o\,
	ena => \stage|state.state2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage3|Ri\(0));

-- Location: FF_X2_Y29_N25
\stage0|R3s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \stage3|Ri\(1),
	sload => VCC,
	ena => \stage0|Mux23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R3s\(1));

-- Location: FF_X2_Y29_N3
\stage0|R1s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \stage3|Ri\(1),
	sload => VCC,
	ena => \stage0|Mux23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R1s\(1));

-- Location: LCCOMB_X4_Y30_N0
\stage0|R2s[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|R2s[1]~feeder_combout\ = \stage3|Ri\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage3|Ri\(1),
	combout => \stage0|R2s[1]~feeder_combout\);

-- Location: FF_X4_Y30_N1
\stage0|R2s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage0|R2s[1]~feeder_combout\,
	ena => \stage0|Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R2s\(1));

-- Location: FF_X2_Y30_N23
\stage0|R0s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \stage3|Ri\(1),
	sload => VCC,
	ena => \stage0|R0s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R0s\(1));

-- Location: LCCOMB_X3_Y30_N8
\stage0|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux46~0_combout\ = (\instruction[6]~input_o\ & (\instruction[7]~input_o\)) # (!\instruction[6]~input_o\ & ((\instruction[7]~input_o\ & (\stage0|R2s\(1))) # (!\instruction[7]~input_o\ & ((\stage0|R0s\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[6]~input_o\,
	datab => \instruction[7]~input_o\,
	datac => \stage0|R2s\(1),
	datad => \stage0|R0s\(1),
	combout => \stage0|Mux46~0_combout\);

-- Location: LCCOMB_X4_Y29_N20
\stage0|Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux46~1_combout\ = (\instruction[6]~input_o\ & ((\stage0|Mux46~0_combout\ & (\stage0|R3s\(1))) # (!\stage0|Mux46~0_combout\ & ((\stage0|R1s\(1)))))) # (!\instruction[6]~input_o\ & (((\stage0|Mux46~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|R3s\(1),
	datab => \instruction[6]~input_o\,
	datac => \stage0|R1s\(1),
	datad => \stage0|Mux46~0_combout\,
	combout => \stage0|Mux46~1_combout\);

-- Location: FF_X4_Y29_N21
\stage0|Rout1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage0|Mux46~1_combout\,
	ena => \stage|ALT_INV_state.state4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Rout1\(1));

-- Location: IOIBUF_X0_Y33_N15
\instruction[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(1),
	o => \instruction[1]~input_o\);

-- Location: LCCOMB_X2_Y29_N26
\stage2|ResOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|ResOut~1_combout\ = (\stage5|ResOut~0_combout\ & ((\instruction[1]~input_o\))) # (!\stage5|ResOut~0_combout\ & (\stage0|Rout1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5|ResOut~0_combout\,
	datab => \stage0|Rout1\(1),
	datad => \instruction[1]~input_o\,
	combout => \stage2|ResOut~1_combout\);

-- Location: LCCOMB_X2_Y29_N2
\stage2|ResOut[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|ResOut\(1) = (GLOBAL(\stage5|process_0~0clkctrl_outclk\) & ((\stage2|ResOut~1_combout\))) # (!GLOBAL(\stage5|process_0~0clkctrl_outclk\) & (\stage2|ResOut\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|ResOut\(1),
	datab => \stage2|ResOut~1_combout\,
	datad => \stage5|process_0~0clkctrl_outclk\,
	combout => \stage2|ResOut\(1));

-- Location: LCCOMB_X1_Y30_N0
\stage3|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Add0~1_combout\ = \instruction[10]~input_o\ $ (\stage2|ResOut\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datad => \stage2|ResOut\(1),
	combout => \stage3|Add0~1_combout\);

-- Location: LCCOMB_X4_Y30_N6
\stage0|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux38~0_combout\ = (\instruction[9]~input_o\ & ((\stage0|R2s\(1)) # ((\instruction[8]~input_o\)))) # (!\instruction[9]~input_o\ & (((!\instruction[8]~input_o\ & \stage0|R0s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[9]~input_o\,
	datab => \stage0|R2s\(1),
	datac => \instruction[8]~input_o\,
	datad => \stage0|R0s\(1),
	combout => \stage0|Mux38~0_combout\);

-- Location: LCCOMB_X2_Y30_N18
\stage0|Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux38~1_combout\ = (\instruction[8]~input_o\ & ((\stage0|Mux38~0_combout\ & (\stage0|R3s\(1))) # (!\stage0|Mux38~0_combout\ & ((\stage0|R1s\(1)))))) # (!\instruction[8]~input_o\ & (((\stage0|Mux38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|R3s\(1),
	datab => \stage0|R1s\(1),
	datac => \instruction[8]~input_o\,
	datad => \stage0|Mux38~0_combout\,
	combout => \stage0|Mux38~1_combout\);

-- Location: FF_X2_Y30_N19
\stage0|Rout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage0|Mux38~1_combout\,
	ena => \stage|ALT_INV_state.state4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Rout\(1));

-- Location: LCCOMB_X1_Y30_N14
\stage3|Ri[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Ri[1]~13_combout\ = ((\stage3|Add0~1_combout\ $ (\stage0|Rout\(1) $ (!\stage3|Ri[0]~11\)))) # (GND)
-- \stage3|Ri[1]~14\ = CARRY((\stage3|Add0~1_combout\ & ((\stage0|Rout\(1)) # (!\stage3|Ri[0]~11\))) # (!\stage3|Add0~1_combout\ & (\stage0|Rout\(1) & !\stage3|Ri[0]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3|Add0~1_combout\,
	datab => \stage0|Rout\(1),
	datad => VCC,
	cin => \stage3|Ri[0]~11\,
	combout => \stage3|Ri[1]~13_combout\,
	cout => \stage3|Ri[1]~14\);

-- Location: FF_X1_Y30_N15
\stage3|Ri[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage3|Ri[1]~13_combout\,
	asdata => \stage2|ResOut\(1),
	sclr => \stage3|Ri[7]~12_combout\,
	sload => \instruction[12]~input_o\,
	ena => \stage|state.state2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage3|Ri\(1));

-- Location: FF_X2_Y29_N21
\stage0|R3s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \stage3|Ri\(2),
	sload => VCC,
	ena => \stage0|Mux23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R3s\(2));

-- Location: LCCOMB_X4_Y30_N12
\stage0|R2s[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|R2s[2]~feeder_combout\ = \stage3|Ri\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage3|Ri\(2),
	combout => \stage0|R2s[2]~feeder_combout\);

-- Location: FF_X4_Y30_N13
\stage0|R2s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage0|R2s[2]~feeder_combout\,
	ena => \stage0|Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R2s\(2));

-- Location: FF_X2_Y30_N1
\stage0|R0s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \stage3|Ri\(2),
	sload => VCC,
	ena => \stage0|R0s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R0s\(2));

-- Location: FF_X2_Y29_N1
\stage0|R1s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \stage3|Ri\(2),
	sload => VCC,
	ena => \stage0|Mux23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R1s\(2));

-- Location: LCCOMB_X2_Y30_N0
\stage0|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux45~0_combout\ = (\instruction[7]~input_o\ & (\instruction[6]~input_o\)) # (!\instruction[7]~input_o\ & ((\instruction[6]~input_o\ & ((\stage0|R1s\(2)))) # (!\instruction[6]~input_o\ & (\stage0|R0s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[7]~input_o\,
	datab => \instruction[6]~input_o\,
	datac => \stage0|R0s\(2),
	datad => \stage0|R1s\(2),
	combout => \stage0|Mux45~0_combout\);

-- Location: LCCOMB_X1_Y29_N20
\stage0|Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux45~1_combout\ = (\instruction[7]~input_o\ & ((\stage0|Mux45~0_combout\ & (\stage0|R3s\(2))) # (!\stage0|Mux45~0_combout\ & ((\stage0|R2s\(2)))))) # (!\instruction[7]~input_o\ & (((\stage0|Mux45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|R3s\(2),
	datab => \instruction[7]~input_o\,
	datac => \stage0|R2s\(2),
	datad => \stage0|Mux45~0_combout\,
	combout => \stage0|Mux45~1_combout\);

-- Location: FF_X1_Y29_N21
\stage0|Rout1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage0|Mux45~1_combout\,
	ena => \stage|ALT_INV_state.state4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Rout1\(2));

-- Location: IOIBUF_X0_Y29_N15
\instruction[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(2),
	o => \instruction[2]~input_o\);

-- Location: LCCOMB_X1_Y29_N0
\stage2|ResOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|ResOut~2_combout\ = (\stage5|ResOut~0_combout\ & ((\instruction[2]~input_o\))) # (!\stage5|ResOut~0_combout\ & (\stage0|Rout1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage5|ResOut~0_combout\,
	datac => \stage0|Rout1\(2),
	datad => \instruction[2]~input_o\,
	combout => \stage2|ResOut~2_combout\);

-- Location: LCCOMB_X1_Y29_N14
\stage2|ResOut[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|ResOut\(2) = (GLOBAL(\stage5|process_0~0clkctrl_outclk\) & ((\stage2|ResOut~2_combout\))) # (!GLOBAL(\stage5|process_0~0clkctrl_outclk\) & (\stage2|ResOut\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage2|ResOut\(2),
	datac => \stage2|ResOut~2_combout\,
	datad => \stage5|process_0~0clkctrl_outclk\,
	combout => \stage2|ResOut\(2));

-- Location: LCCOMB_X1_Y30_N6
\stage3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Add0~2_combout\ = \instruction[10]~input_o\ $ (\stage2|ResOut\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datad => \stage2|ResOut\(2),
	combout => \stage3|Add0~2_combout\);

-- Location: LCCOMB_X2_Y30_N2
\stage0|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux37~0_combout\ = (\instruction[9]~input_o\ & (((\instruction[8]~input_o\)))) # (!\instruction[9]~input_o\ & ((\instruction[8]~input_o\ & ((\stage0|R1s\(2)))) # (!\instruction[8]~input_o\ & (\stage0|R0s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[9]~input_o\,
	datab => \stage0|R0s\(2),
	datac => \instruction[8]~input_o\,
	datad => \stage0|R1s\(2),
	combout => \stage0|Mux37~0_combout\);

-- Location: LCCOMB_X2_Y30_N16
\stage0|Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux37~1_combout\ = (\instruction[9]~input_o\ & ((\stage0|Mux37~0_combout\ & ((\stage0|R3s\(2)))) # (!\stage0|Mux37~0_combout\ & (\stage0|R2s\(2))))) # (!\instruction[9]~input_o\ & (\stage0|Mux37~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[9]~input_o\,
	datab => \stage0|Mux37~0_combout\,
	datac => \stage0|R2s\(2),
	datad => \stage0|R3s\(2),
	combout => \stage0|Mux37~1_combout\);

-- Location: FF_X2_Y30_N17
\stage0|Rout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage0|Mux37~1_combout\,
	ena => \stage|ALT_INV_state.state4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Rout\(2));

-- Location: LCCOMB_X1_Y30_N16
\stage3|Ri[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Ri[2]~15_combout\ = (\stage3|Add0~2_combout\ & ((\stage0|Rout\(2) & (\stage3|Ri[1]~14\ & VCC)) # (!\stage0|Rout\(2) & (!\stage3|Ri[1]~14\)))) # (!\stage3|Add0~2_combout\ & ((\stage0|Rout\(2) & (!\stage3|Ri[1]~14\)) # (!\stage0|Rout\(2) & 
-- ((\stage3|Ri[1]~14\) # (GND)))))
-- \stage3|Ri[2]~16\ = CARRY((\stage3|Add0~2_combout\ & (!\stage0|Rout\(2) & !\stage3|Ri[1]~14\)) # (!\stage3|Add0~2_combout\ & ((!\stage3|Ri[1]~14\) # (!\stage0|Rout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3|Add0~2_combout\,
	datab => \stage0|Rout\(2),
	datad => VCC,
	cin => \stage3|Ri[1]~14\,
	combout => \stage3|Ri[2]~15_combout\,
	cout => \stage3|Ri[2]~16\);

-- Location: FF_X1_Y30_N17
\stage3|Ri[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage3|Ri[2]~15_combout\,
	asdata => \stage2|ResOut\(2),
	sclr => \stage3|Ri[7]~12_combout\,
	sload => \instruction[12]~input_o\,
	ena => \stage|state.state2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage3|Ri\(2));

-- Location: FF_X2_Y29_N29
\stage0|R3s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \stage3|Ri\(3),
	sload => VCC,
	ena => \stage0|Mux23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R3s\(3));

-- Location: FF_X2_Y29_N23
\stage0|R1s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \stage3|Ri\(3),
	sload => VCC,
	ena => \stage0|Mux23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R1s\(3));

-- Location: FF_X2_Y30_N25
\stage0|R0s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \stage3|Ri\(3),
	sload => VCC,
	ena => \stage0|R0s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R0s\(3));

-- Location: LCCOMB_X4_Y30_N14
\stage0|R2s[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|R2s[3]~feeder_combout\ = \stage3|Ri\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage3|Ri\(3),
	combout => \stage0|R2s[3]~feeder_combout\);

-- Location: FF_X4_Y30_N15
\stage0|R2s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage0|R2s[3]~feeder_combout\,
	ena => \stage0|Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R2s\(3));

-- Location: LCCOMB_X3_Y30_N6
\stage0|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux36~0_combout\ = (\instruction[9]~input_o\ & (((\stage0|R2s\(3)) # (\instruction[8]~input_o\)))) # (!\instruction[9]~input_o\ & (\stage0|R0s\(3) & ((!\instruction[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[9]~input_o\,
	datab => \stage0|R0s\(3),
	datac => \stage0|R2s\(3),
	datad => \instruction[8]~input_o\,
	combout => \stage0|Mux36~0_combout\);

-- Location: LCCOMB_X2_Y30_N10
\stage0|Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux36~1_combout\ = (\instruction[8]~input_o\ & ((\stage0|Mux36~0_combout\ & (\stage0|R3s\(3))) # (!\stage0|Mux36~0_combout\ & ((\stage0|R1s\(3)))))) # (!\instruction[8]~input_o\ & (((\stage0|Mux36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|R3s\(3),
	datab => \stage0|R1s\(3),
	datac => \instruction[8]~input_o\,
	datad => \stage0|Mux36~0_combout\,
	combout => \stage0|Mux36~1_combout\);

-- Location: FF_X2_Y30_N11
\stage0|Rout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage0|Mux36~1_combout\,
	ena => \stage|ALT_INV_state.state4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Rout\(3));

-- Location: LCCOMB_X4_Y30_N18
\stage0|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux44~0_combout\ = (\instruction[7]~input_o\ & ((\instruction[6]~input_o\) # ((\stage0|R2s\(3))))) # (!\instruction[7]~input_o\ & (!\instruction[6]~input_o\ & ((\stage0|R0s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[7]~input_o\,
	datab => \instruction[6]~input_o\,
	datac => \stage0|R2s\(3),
	datad => \stage0|R0s\(3),
	combout => \stage0|Mux44~0_combout\);

-- Location: LCCOMB_X3_Y30_N30
\stage0|Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux44~1_combout\ = (\instruction[6]~input_o\ & ((\stage0|Mux44~0_combout\ & (\stage0|R3s\(3))) # (!\stage0|Mux44~0_combout\ & ((\stage0|R1s\(3)))))) # (!\instruction[6]~input_o\ & (((\stage0|Mux44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[6]~input_o\,
	datab => \stage0|R3s\(3),
	datac => \stage0|R1s\(3),
	datad => \stage0|Mux44~0_combout\,
	combout => \stage0|Mux44~1_combout\);

-- Location: FF_X3_Y30_N31
\stage0|Rout1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage0|Mux44~1_combout\,
	ena => \stage|ALT_INV_state.state4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Rout1\(3));

-- Location: IOIBUF_X0_Y29_N1
\instruction[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(3),
	o => \instruction[3]~input_o\);

-- Location: LCCOMB_X2_Y29_N30
\stage2|ResOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|ResOut~3_combout\ = (\stage5|ResOut~0_combout\ & ((\instruction[3]~input_o\))) # (!\stage5|ResOut~0_combout\ & (\stage0|Rout1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5|ResOut~0_combout\,
	datab => \stage0|Rout1\(3),
	datad => \instruction[3]~input_o\,
	combout => \stage2|ResOut~3_combout\);

-- Location: LCCOMB_X2_Y29_N4
\stage2|ResOut[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|ResOut\(3) = (GLOBAL(\stage5|process_0~0clkctrl_outclk\) & (\stage2|ResOut~3_combout\)) # (!GLOBAL(\stage5|process_0~0clkctrl_outclk\) & ((\stage2|ResOut\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|ResOut~3_combout\,
	datab => \stage2|ResOut\(3),
	datad => \stage5|process_0~0clkctrl_outclk\,
	combout => \stage2|ResOut\(3));

-- Location: LCCOMB_X1_Y30_N28
\stage3|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Add0~3_combout\ = \instruction[10]~input_o\ $ (\stage2|ResOut\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datac => \stage2|ResOut\(3),
	combout => \stage3|Add0~3_combout\);

-- Location: LCCOMB_X1_Y30_N18
\stage3|Ri[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Ri[3]~17_combout\ = ((\stage0|Rout\(3) $ (\stage3|Add0~3_combout\ $ (!\stage3|Ri[2]~16\)))) # (GND)
-- \stage3|Ri[3]~18\ = CARRY((\stage0|Rout\(3) & ((\stage3|Add0~3_combout\) # (!\stage3|Ri[2]~16\))) # (!\stage0|Rout\(3) & (\stage3|Add0~3_combout\ & !\stage3|Ri[2]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Rout\(3),
	datab => \stage3|Add0~3_combout\,
	datad => VCC,
	cin => \stage3|Ri[2]~16\,
	combout => \stage3|Ri[3]~17_combout\,
	cout => \stage3|Ri[3]~18\);

-- Location: FF_X1_Y30_N19
\stage3|Ri[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage3|Ri[3]~17_combout\,
	asdata => \stage2|ResOut\(3),
	sclr => \stage3|Ri[7]~12_combout\,
	sload => \instruction[12]~input_o\,
	ena => \stage|state.state2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage3|Ri\(3));

-- Location: LCCOMB_X4_Y30_N4
\stage0|R2s[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|R2s[4]~feeder_combout\ = \stage3|Ri\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage3|Ri\(4),
	combout => \stage0|R2s[4]~feeder_combout\);

-- Location: FF_X4_Y30_N5
\stage0|R2s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage0|R2s[4]~feeder_combout\,
	ena => \stage0|Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R2s\(4));

-- Location: FF_X3_Y30_N25
\stage0|R1s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \stage3|Ri\(4),
	sload => VCC,
	ena => \stage0|Mux23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R1s\(4));

-- Location: FF_X2_Y30_N15
\stage0|R0s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \stage3|Ri\(4),
	sload => VCC,
	ena => \stage0|R0s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R0s\(4));

-- Location: LCCOMB_X3_Y30_N10
\stage0|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux35~0_combout\ = (\instruction[9]~input_o\ & (\instruction[8]~input_o\)) # (!\instruction[9]~input_o\ & ((\instruction[8]~input_o\ & (\stage0|R1s\(4))) # (!\instruction[8]~input_o\ & ((\stage0|R0s\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[9]~input_o\,
	datab => \instruction[8]~input_o\,
	datac => \stage0|R1s\(4),
	datad => \stage0|R0s\(4),
	combout => \stage0|Mux35~0_combout\);

-- Location: FF_X2_Y29_N5
\stage0|R3s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \stage3|Ri\(4),
	sload => VCC,
	ena => \stage0|Mux23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R3s\(4));

-- Location: LCCOMB_X1_Y30_N30
\stage0|Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux35~1_combout\ = (\instruction[9]~input_o\ & ((\stage0|Mux35~0_combout\ & ((\stage0|R3s\(4)))) # (!\stage0|Mux35~0_combout\ & (\stage0|R2s\(4))))) # (!\instruction[9]~input_o\ & (((\stage0|Mux35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|R2s\(4),
	datab => \instruction[9]~input_o\,
	datac => \stage0|Mux35~0_combout\,
	datad => \stage0|R3s\(4),
	combout => \stage0|Mux35~1_combout\);

-- Location: FF_X1_Y30_N31
\stage0|Rout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage0|Mux35~1_combout\,
	ena => \stage|ALT_INV_state.state4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Rout\(4));

-- Location: LCCOMB_X3_Y30_N24
\stage0|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux43~0_combout\ = (\instruction[6]~input_o\ & ((\instruction[7]~input_o\) # ((\stage0|R1s\(4))))) # (!\instruction[6]~input_o\ & (!\instruction[7]~input_o\ & ((\stage0|R0s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[6]~input_o\,
	datab => \instruction[7]~input_o\,
	datac => \stage0|R1s\(4),
	datad => \stage0|R0s\(4),
	combout => \stage0|Mux43~0_combout\);

-- Location: LCCOMB_X3_Y30_N28
\stage0|Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux43~1_combout\ = (\instruction[7]~input_o\ & ((\stage0|Mux43~0_combout\ & (\stage0|R3s\(4))) # (!\stage0|Mux43~0_combout\ & ((\stage0|R2s\(4)))))) # (!\instruction[7]~input_o\ & (((\stage0|Mux43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[7]~input_o\,
	datab => \stage0|R3s\(4),
	datac => \stage0|R2s\(4),
	datad => \stage0|Mux43~0_combout\,
	combout => \stage0|Mux43~1_combout\);

-- Location: FF_X3_Y30_N29
\stage0|Rout1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage0|Mux43~1_combout\,
	ena => \stage|ALT_INV_state.state4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Rout1\(4));

-- Location: IOIBUF_X0_Y29_N8
\instruction[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(4),
	o => \instruction[4]~input_o\);

-- Location: LCCOMB_X2_Y29_N6
\stage2|ResOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|ResOut~4_combout\ = (\stage5|ResOut~0_combout\ & ((\instruction[4]~input_o\))) # (!\stage5|ResOut~0_combout\ & (\stage0|Rout1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5|ResOut~0_combout\,
	datab => \stage0|Rout1\(4),
	datad => \instruction[4]~input_o\,
	combout => \stage2|ResOut~4_combout\);

-- Location: LCCOMB_X2_Y29_N24
\stage2|ResOut[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|ResOut\(4) = (GLOBAL(\stage5|process_0~0clkctrl_outclk\) & ((\stage2|ResOut~4_combout\))) # (!GLOBAL(\stage5|process_0~0clkctrl_outclk\) & (\stage2|ResOut\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5|process_0~0clkctrl_outclk\,
	datab => \stage2|ResOut\(4),
	datad => \stage2|ResOut~4_combout\,
	combout => \stage2|ResOut\(4));

-- Location: LCCOMB_X1_Y30_N8
\stage3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Add0~4_combout\ = \instruction[10]~input_o\ $ (\stage2|ResOut\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[10]~input_o\,
	datac => \stage2|ResOut\(4),
	combout => \stage3|Add0~4_combout\);

-- Location: LCCOMB_X1_Y30_N20
\stage3|Ri[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Ri[4]~19_combout\ = (\stage0|Rout\(4) & ((\stage3|Add0~4_combout\ & (\stage3|Ri[3]~18\ & VCC)) # (!\stage3|Add0~4_combout\ & (!\stage3|Ri[3]~18\)))) # (!\stage0|Rout\(4) & ((\stage3|Add0~4_combout\ & (!\stage3|Ri[3]~18\)) # 
-- (!\stage3|Add0~4_combout\ & ((\stage3|Ri[3]~18\) # (GND)))))
-- \stage3|Ri[4]~20\ = CARRY((\stage0|Rout\(4) & (!\stage3|Add0~4_combout\ & !\stage3|Ri[3]~18\)) # (!\stage0|Rout\(4) & ((!\stage3|Ri[3]~18\) # (!\stage3|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Rout\(4),
	datab => \stage3|Add0~4_combout\,
	datad => VCC,
	cin => \stage3|Ri[3]~18\,
	combout => \stage3|Ri[4]~19_combout\,
	cout => \stage3|Ri[4]~20\);

-- Location: FF_X1_Y30_N21
\stage3|Ri[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage3|Ri[4]~19_combout\,
	asdata => \stage2|ResOut\(4),
	sclr => \stage3|Ri[7]~12_combout\,
	sload => \instruction[12]~input_o\,
	ena => \stage|state.state2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage3|Ri\(4));

-- Location: FF_X2_Y29_N31
\stage0|R3s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \stage3|Ri\(5),
	sload => VCC,
	ena => \stage0|Mux23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R3s\(5));

-- Location: FF_X2_Y30_N31
\stage0|R0s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \stage3|Ri\(5),
	sload => VCC,
	ena => \stage0|R0s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R0s\(5));

-- Location: LCCOMB_X4_Y30_N26
\stage0|R2s[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|R2s[5]~feeder_combout\ = \stage3|Ri\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage3|Ri\(5),
	combout => \stage0|R2s[5]~feeder_combout\);

-- Location: FF_X4_Y30_N27
\stage0|R2s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage0|R2s[5]~feeder_combout\,
	ena => \stage0|Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R2s\(5));

-- Location: LCCOMB_X3_Y30_N20
\stage0|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux34~0_combout\ = (\instruction[8]~input_o\ & (((\instruction[9]~input_o\)))) # (!\instruction[8]~input_o\ & ((\instruction[9]~input_o\ & ((\stage0|R2s\(5)))) # (!\instruction[9]~input_o\ & (\stage0|R0s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[8]~input_o\,
	datab => \stage0|R0s\(5),
	datac => \instruction[9]~input_o\,
	datad => \stage0|R2s\(5),
	combout => \stage0|Mux34~0_combout\);

-- Location: FF_X2_Y29_N13
\stage0|R1s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \stage3|Ri\(5),
	sload => VCC,
	ena => \stage0|Mux23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R1s\(5));

-- Location: LCCOMB_X3_Y30_N16
\stage0|Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux34~1_combout\ = (\stage0|Mux34~0_combout\ & ((\stage0|R3s\(5)) # ((!\instruction[8]~input_o\)))) # (!\stage0|Mux34~0_combout\ & (((\stage0|R1s\(5) & \instruction[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|R3s\(5),
	datab => \stage0|Mux34~0_combout\,
	datac => \stage0|R1s\(5),
	datad => \instruction[8]~input_o\,
	combout => \stage0|Mux34~1_combout\);

-- Location: FF_X3_Y30_N17
\stage0|Rout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage0|Mux34~1_combout\,
	ena => \stage|ALT_INV_state.state4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Rout\(5));

-- Location: LCCOMB_X3_Y30_N2
\stage0|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux42~0_combout\ = (\instruction[7]~input_o\ & (((\instruction[6]~input_o\) # (\stage0|R2s\(5))))) # (!\instruction[7]~input_o\ & (\stage0|R0s\(5) & (!\instruction[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[7]~input_o\,
	datab => \stage0|R0s\(5),
	datac => \instruction[6]~input_o\,
	datad => \stage0|R2s\(5),
	combout => \stage0|Mux42~0_combout\);

-- Location: LCCOMB_X3_Y30_N14
\stage0|Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux42~1_combout\ = (\instruction[6]~input_o\ & ((\stage0|Mux42~0_combout\ & (\stage0|R3s\(5))) # (!\stage0|Mux42~0_combout\ & ((\stage0|R1s\(5)))))) # (!\instruction[6]~input_o\ & (((\stage0|Mux42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[6]~input_o\,
	datab => \stage0|R3s\(5),
	datac => \stage0|R1s\(5),
	datad => \stage0|Mux42~0_combout\,
	combout => \stage0|Mux42~1_combout\);

-- Location: FF_X3_Y30_N15
\stage0|Rout1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage0|Mux42~1_combout\,
	ena => \stage|ALT_INV_state.state4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Rout1\(5));

-- Location: IOIBUF_X0_Y33_N1
\instruction[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(5),
	o => \instruction[5]~input_o\);

-- Location: LCCOMB_X2_Y29_N18
\stage2|ResOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|ResOut~5_combout\ = (\stage5|ResOut~0_combout\ & ((\instruction[5]~input_o\))) # (!\stage5|ResOut~0_combout\ & (\stage0|Rout1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5|ResOut~0_combout\,
	datab => \stage0|Rout1\(5),
	datad => \instruction[5]~input_o\,
	combout => \stage2|ResOut~5_combout\);

-- Location: LCCOMB_X2_Y29_N12
\stage2|ResOut[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|ResOut\(5) = (GLOBAL(\stage5|process_0~0clkctrl_outclk\) & ((\stage2|ResOut~5_combout\))) # (!GLOBAL(\stage5|process_0~0clkctrl_outclk\) & (\stage2|ResOut\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|ResOut\(5),
	datab => \stage2|ResOut~5_combout\,
	datad => \stage5|process_0~0clkctrl_outclk\,
	combout => \stage2|ResOut\(5));

-- Location: LCCOMB_X2_Y29_N20
\stage3|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Add0~5_combout\ = \instruction[10]~input_o\ $ (\stage2|ResOut\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[10]~input_o\,
	datad => \stage2|ResOut\(5),
	combout => \stage3|Add0~5_combout\);

-- Location: LCCOMB_X1_Y30_N22
\stage3|Ri[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Ri[5]~21_combout\ = ((\stage0|Rout\(5) $ (\stage3|Add0~5_combout\ $ (!\stage3|Ri[4]~20\)))) # (GND)
-- \stage3|Ri[5]~22\ = CARRY((\stage0|Rout\(5) & ((\stage3|Add0~5_combout\) # (!\stage3|Ri[4]~20\))) # (!\stage0|Rout\(5) & (\stage3|Add0~5_combout\ & !\stage3|Ri[4]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Rout\(5),
	datab => \stage3|Add0~5_combout\,
	datad => VCC,
	cin => \stage3|Ri[4]~20\,
	combout => \stage3|Ri[5]~21_combout\,
	cout => \stage3|Ri[5]~22\);

-- Location: FF_X1_Y30_N23
\stage3|Ri[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage3|Ri[5]~21_combout\,
	asdata => \stage2|ResOut\(5),
	sclr => \stage3|Ri[7]~12_combout\,
	sload => \instruction[12]~input_o\,
	ena => \stage|state.state2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage3|Ri\(5));

-- Location: FF_X2_Y29_N11
\stage0|R3s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \stage3|Ri\(6),
	sload => VCC,
	ena => \stage0|Mux23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R3s\(6));

-- Location: FF_X3_Y30_N27
\stage0|R1s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \stage3|Ri\(6),
	sload => VCC,
	ena => \stage0|Mux23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R1s\(6));

-- Location: FF_X2_Y30_N9
\stage0|R0s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \stage3|Ri\(6),
	sload => VCC,
	ena => \stage0|R0s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R0s\(6));

-- Location: LCCOMB_X3_Y30_N26
\stage0|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux33~0_combout\ = (\instruction[9]~input_o\ & (\instruction[8]~input_o\)) # (!\instruction[9]~input_o\ & ((\instruction[8]~input_o\ & (\stage0|R1s\(6))) # (!\instruction[8]~input_o\ & ((\stage0|R0s\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[9]~input_o\,
	datab => \instruction[8]~input_o\,
	datac => \stage0|R1s\(6),
	datad => \stage0|R0s\(6),
	combout => \stage0|Mux33~0_combout\);

-- Location: LCCOMB_X4_Y30_N20
\stage0|R2s[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|R2s[6]~feeder_combout\ = \stage3|Ri\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage3|Ri\(6),
	combout => \stage0|R2s[6]~feeder_combout\);

-- Location: FF_X4_Y30_N21
\stage0|R2s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage0|R2s[6]~feeder_combout\,
	ena => \stage0|Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R2s\(6));

-- Location: LCCOMB_X2_Y30_N4
\stage0|Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux33~1_combout\ = (\stage0|Mux33~0_combout\ & ((\stage0|R3s\(6)) # ((!\instruction[9]~input_o\)))) # (!\stage0|Mux33~0_combout\ & (((\instruction[9]~input_o\ & \stage0|R2s\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|R3s\(6),
	datab => \stage0|Mux33~0_combout\,
	datac => \instruction[9]~input_o\,
	datad => \stage0|R2s\(6),
	combout => \stage0|Mux33~1_combout\);

-- Location: FF_X2_Y30_N5
\stage0|Rout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage0|Mux33~1_combout\,
	ena => \stage|ALT_INV_state.state4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Rout\(6));

-- Location: LCCOMB_X2_Y30_N8
\stage0|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux41~0_combout\ = (\instruction[7]~input_o\ & (\instruction[6]~input_o\)) # (!\instruction[7]~input_o\ & ((\instruction[6]~input_o\ & ((\stage0|R1s\(6)))) # (!\instruction[6]~input_o\ & (\stage0|R0s\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[7]~input_o\,
	datab => \instruction[6]~input_o\,
	datac => \stage0|R0s\(6),
	datad => \stage0|R1s\(6),
	combout => \stage0|Mux41~0_combout\);

-- Location: LCCOMB_X2_Y30_N28
\stage0|Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux41~1_combout\ = (\stage0|Mux41~0_combout\ & ((\stage0|R3s\(6)) # ((!\instruction[7]~input_o\)))) # (!\stage0|Mux41~0_combout\ & (((\instruction[7]~input_o\ & \stage0|R2s\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|R3s\(6),
	datab => \stage0|Mux41~0_combout\,
	datac => \instruction[7]~input_o\,
	datad => \stage0|R2s\(6),
	combout => \stage0|Mux41~1_combout\);

-- Location: FF_X2_Y30_N29
\stage0|Rout1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage0|Mux41~1_combout\,
	ena => \stage|ALT_INV_state.state4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Rout1\(6));

-- Location: LCCOMB_X1_Y29_N2
\stage2|ResOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|ResOut~6_combout\ = (\stage5|ResOut~0_combout\ & ((\instruction[6]~input_o\))) # (!\stage5|ResOut~0_combout\ & (\stage0|Rout1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Rout1\(6),
	datab => \instruction[6]~input_o\,
	datac => \stage5|ResOut~0_combout\,
	combout => \stage2|ResOut~6_combout\);

-- Location: LCCOMB_X1_Y29_N24
\stage2|ResOut[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|ResOut\(6) = (GLOBAL(\stage5|process_0~0clkctrl_outclk\) & ((\stage2|ResOut~6_combout\))) # (!GLOBAL(\stage5|process_0~0clkctrl_outclk\) & (\stage2|ResOut\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage2|ResOut\(6),
	datac => \stage2|ResOut~6_combout\,
	datad => \stage5|process_0~0clkctrl_outclk\,
	combout => \stage2|ResOut\(6));

-- Location: LCCOMB_X1_Y29_N10
\stage3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Add0~6_combout\ = \instruction[10]~input_o\ $ (\stage2|ResOut\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instruction[10]~input_o\,
	datad => \stage2|ResOut\(6),
	combout => \stage3|Add0~6_combout\);

-- Location: LCCOMB_X1_Y30_N24
\stage3|Ri[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Ri[6]~23_combout\ = (\stage0|Rout\(6) & ((\stage3|Add0~6_combout\ & (\stage3|Ri[5]~22\ & VCC)) # (!\stage3|Add0~6_combout\ & (!\stage3|Ri[5]~22\)))) # (!\stage0|Rout\(6) & ((\stage3|Add0~6_combout\ & (!\stage3|Ri[5]~22\)) # 
-- (!\stage3|Add0~6_combout\ & ((\stage3|Ri[5]~22\) # (GND)))))
-- \stage3|Ri[6]~24\ = CARRY((\stage0|Rout\(6) & (!\stage3|Add0~6_combout\ & !\stage3|Ri[5]~22\)) # (!\stage0|Rout\(6) & ((!\stage3|Ri[5]~22\) # (!\stage3|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Rout\(6),
	datab => \stage3|Add0~6_combout\,
	datad => VCC,
	cin => \stage3|Ri[5]~22\,
	combout => \stage3|Ri[6]~23_combout\,
	cout => \stage3|Ri[6]~24\);

-- Location: FF_X1_Y30_N25
\stage3|Ri[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage3|Ri[6]~23_combout\,
	asdata => \stage2|ResOut\(6),
	sclr => \stage3|Ri[7]~12_combout\,
	sload => \instruction[12]~input_o\,
	ena => \stage|state.state2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage3|Ri\(6));

-- Location: FF_X2_Y29_N7
\stage0|R1s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \stage3|Ri\(7),
	sload => VCC,
	ena => \stage0|Mux23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R1s\(7));

-- Location: FF_X2_Y29_N19
\stage0|R3s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \stage3|Ri\(7),
	sload => VCC,
	ena => \stage0|Mux23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R3s\(7));

-- Location: LCCOMB_X4_Y30_N30
\stage0|R2s[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|R2s[7]~feeder_combout\ = \stage3|Ri\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage3|Ri\(7),
	combout => \stage0|R2s[7]~feeder_combout\);

-- Location: FF_X4_Y30_N31
\stage0|R2s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage0|R2s[7]~feeder_combout\,
	ena => \stage0|Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R2s\(7));

-- Location: FF_X2_Y30_N27
\stage0|R0s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \stage3|Ri\(7),
	sload => VCC,
	ena => \stage0|R0s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|R0s\(7));

-- Location: LCCOMB_X4_Y30_N28
\stage0|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux32~0_combout\ = (\instruction[9]~input_o\ & ((\instruction[8]~input_o\) # ((\stage0|R2s\(7))))) # (!\instruction[9]~input_o\ & (!\instruction[8]~input_o\ & ((\stage0|R0s\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[9]~input_o\,
	datab => \instruction[8]~input_o\,
	datac => \stage0|R2s\(7),
	datad => \stage0|R0s\(7),
	combout => \stage0|Mux32~0_combout\);

-- Location: LCCOMB_X4_Y30_N24
\stage0|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux32~1_combout\ = (\instruction[8]~input_o\ & ((\stage0|Mux32~0_combout\ & ((\stage0|R3s\(7)))) # (!\stage0|Mux32~0_combout\ & (\stage0|R1s\(7))))) # (!\instruction[8]~input_o\ & (((\stage0|Mux32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|R1s\(7),
	datab => \instruction[8]~input_o\,
	datac => \stage0|R3s\(7),
	datad => \stage0|Mux32~0_combout\,
	combout => \stage0|Mux32~1_combout\);

-- Location: FF_X4_Y30_N25
\stage0|Rout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage0|Mux32~1_combout\,
	ena => \stage|ALT_INV_state.state4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Rout\(7));

-- Location: LCCOMB_X2_Y30_N26
\stage0|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux40~0_combout\ = (\instruction[7]~input_o\ & ((\instruction[6]~input_o\) # ((\stage0|R2s\(7))))) # (!\instruction[7]~input_o\ & (!\instruction[6]~input_o\ & (\stage0|R0s\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[7]~input_o\,
	datab => \instruction[6]~input_o\,
	datac => \stage0|R0s\(7),
	datad => \stage0|R2s\(7),
	combout => \stage0|Mux40~0_combout\);

-- Location: LCCOMB_X1_Y29_N4
\stage0|Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux40~1_combout\ = (\instruction[6]~input_o\ & ((\stage0|Mux40~0_combout\ & (\stage0|R3s\(7))) # (!\stage0|Mux40~0_combout\ & ((\stage0|R1s\(7)))))) # (!\instruction[6]~input_o\ & (((\stage0|Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|R3s\(7),
	datab => \stage0|R1s\(7),
	datac => \instruction[6]~input_o\,
	datad => \stage0|Mux40~0_combout\,
	combout => \stage0|Mux40~1_combout\);

-- Location: FF_X1_Y29_N5
\stage0|Rout1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage0|Mux40~1_combout\,
	ena => \stage|ALT_INV_state.state4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Rout1\(7));

-- Location: LCCOMB_X1_Y29_N16
\stage2|ResOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|ResOut~7_combout\ = (\stage5|ResOut~0_combout\ & ((\instruction[7]~input_o\))) # (!\stage5|ResOut~0_combout\ & (\stage0|Rout1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Rout1\(7),
	datac => \stage5|ResOut~0_combout\,
	datad => \instruction[7]~input_o\,
	combout => \stage2|ResOut~7_combout\);

-- Location: LCCOMB_X1_Y29_N22
\stage2|ResOut[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|ResOut\(7) = (GLOBAL(\stage5|process_0~0clkctrl_outclk\) & ((\stage2|ResOut~7_combout\))) # (!GLOBAL(\stage5|process_0~0clkctrl_outclk\) & (\stage2|ResOut\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|ResOut\(7),
	datac => \stage2|ResOut~7_combout\,
	datad => \stage5|process_0~0clkctrl_outclk\,
	combout => \stage2|ResOut\(7));

-- Location: LCCOMB_X2_Y30_N22
\stage3|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Add0~7_combout\ = \instruction[10]~input_o\ $ (\stage2|ResOut\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[10]~input_o\,
	datad => \stage2|ResOut\(7),
	combout => \stage3|Add0~7_combout\);

-- Location: LCCOMB_X1_Y30_N26
\stage3|Ri[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Ri[7]~25_combout\ = \stage0|Rout\(7) $ (\stage3|Ri[6]~24\ $ (!\stage3|Add0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Rout\(7),
	datad => \stage3|Add0~7_combout\,
	cin => \stage3|Ri[6]~24\,
	combout => \stage3|Ri[7]~25_combout\);

-- Location: FF_X1_Y30_N27
\stage3|Ri[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage3|Ri[7]~25_combout\,
	asdata => \stage2|ResOut\(7),
	sclr => \stage3|Ri[7]~12_combout\,
	sload => \instruction[12]~input_o\,
	ena => \stage|state.state2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage3|Ri\(7));

-- Location: LCCOMB_X4_Y29_N4
\stage3|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux15~0_combout\ = (\instruction[12]~input_o\ & ((\instruction[11]~input_o\ & ((\stage0|Rout\(0)))) # (!\instruction[11]~input_o\ & (\stage2|ResOut\(0))))) # (!\instruction[12]~input_o\ & (\stage2|ResOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[12]~input_o\,
	datab => \stage2|ResOut\(0),
	datac => \stage0|Rout\(0),
	datad => \instruction[11]~input_o\,
	combout => \stage3|Mux15~0_combout\);

-- Location: LCCOMB_X4_Y29_N18
\stage3|Rj[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Rj[0]~0_combout\ = (\stage|state.state2~q\ & (((!\instruction[10]~input_o\) # (!\instruction[11]~input_o\)) # (!\instruction[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[12]~input_o\,
	datab => \instruction[11]~input_o\,
	datac => \instruction[10]~input_o\,
	datad => \stage|state.state2~q\,
	combout => \stage3|Rj[0]~0_combout\);

-- Location: FF_X4_Y29_N5
\stage3|Rj[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage3|Mux15~0_combout\,
	ena => \stage3|Rj[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage3|Rj\(0));

-- Location: LCCOMB_X3_Y30_N0
\stage5|ResOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|ResOut~1_combout\ = (\stage5|ResOut~0_combout\ & ((\stage3|Rj\(0)))) # (!\stage5|ResOut~0_combout\ & (\stage0|Rout1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5|ResOut~0_combout\,
	datac => \stage0|Rout1\(0),
	datad => \stage3|Rj\(0),
	combout => \stage5|ResOut~1_combout\);

-- Location: LCCOMB_X3_Y30_N4
\stage5|ResOut[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|ResOut\(0) = (GLOBAL(\stage5|process_0~0clkctrl_outclk\) & ((\stage5|ResOut~1_combout\))) # (!GLOBAL(\stage5|process_0~0clkctrl_outclk\) & (\stage5|ResOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage5|ResOut\(0),
	datac => \stage5|ResOut~1_combout\,
	datad => \stage5|process_0~0clkctrl_outclk\,
	combout => \stage5|ResOut\(0));

-- Location: LCCOMB_X4_Y29_N6
\stage3|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux14~0_combout\ = (\instruction[12]~input_o\ & ((\instruction[11]~input_o\ & ((\stage0|Rout\(1)))) # (!\instruction[11]~input_o\ & (\stage2|ResOut\(1))))) # (!\instruction[12]~input_o\ & (\stage2|ResOut\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[12]~input_o\,
	datab => \stage2|ResOut\(1),
	datac => \stage0|Rout\(1),
	datad => \instruction[11]~input_o\,
	combout => \stage3|Mux14~0_combout\);

-- Location: FF_X4_Y29_N7
\stage3|Rj[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage3|Mux14~0_combout\,
	ena => \stage3|Rj[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage3|Rj\(1));

-- Location: LCCOMB_X3_Y29_N20
\stage5|ResOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|ResOut~2_combout\ = (\stage5|ResOut~0_combout\ & (\stage3|Rj\(1))) # (!\stage5|ResOut~0_combout\ & ((\stage0|Rout1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage5|ResOut~0_combout\,
	datac => \stage3|Rj\(1),
	datad => \stage0|Rout1\(1),
	combout => \stage5|ResOut~2_combout\);

-- Location: LCCOMB_X3_Y29_N22
\stage5|ResOut[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|ResOut\(1) = (GLOBAL(\stage5|process_0~0clkctrl_outclk\) & ((\stage5|ResOut~2_combout\))) # (!GLOBAL(\stage5|process_0~0clkctrl_outclk\) & (\stage5|ResOut\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5|ResOut\(1),
	datac => \stage5|ResOut~2_combout\,
	datad => \stage5|process_0~0clkctrl_outclk\,
	combout => \stage5|ResOut\(1));

-- Location: LCCOMB_X4_Y29_N14
\stage3|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux13~0_combout\ = (\instruction[11]~input_o\ & ((\instruction[12]~input_o\ & ((\stage0|Rout\(2)))) # (!\instruction[12]~input_o\ & (\stage2|ResOut\(2))))) # (!\instruction[11]~input_o\ & (\stage2|ResOut\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|ResOut\(2),
	datab => \instruction[11]~input_o\,
	datac => \instruction[12]~input_o\,
	datad => \stage0|Rout\(2),
	combout => \stage3|Mux13~0_combout\);

-- Location: FF_X4_Y29_N15
\stage3|Rj[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage3|Mux13~0_combout\,
	ena => \stage3|Rj[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage3|Rj\(2));

-- Location: LCCOMB_X1_Y29_N30
\stage5|ResOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|ResOut~3_combout\ = (\stage5|ResOut~0_combout\ & ((\stage3|Rj\(2)))) # (!\stage5|ResOut~0_combout\ & (\stage0|Rout1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage5|ResOut~0_combout\,
	datac => \stage0|Rout1\(2),
	datad => \stage3|Rj\(2),
	combout => \stage5|ResOut~3_combout\);

-- Location: LCCOMB_X1_Y29_N18
\stage5|ResOut[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|ResOut\(2) = (GLOBAL(\stage5|process_0~0clkctrl_outclk\) & ((\stage5|ResOut~3_combout\))) # (!GLOBAL(\stage5|process_0~0clkctrl_outclk\) & (\stage5|ResOut\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage5|ResOut\(2),
	datac => \stage5|ResOut~3_combout\,
	datad => \stage5|process_0~0clkctrl_outclk\,
	combout => \stage5|ResOut\(2));

-- Location: LCCOMB_X4_Y29_N12
\stage3|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux12~0_combout\ = (\instruction[12]~input_o\ & ((\instruction[11]~input_o\ & ((\stage0|Rout\(3)))) # (!\instruction[11]~input_o\ & (\stage2|ResOut\(3))))) # (!\instruction[12]~input_o\ & (\stage2|ResOut\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|ResOut\(3),
	datab => \stage0|Rout\(3),
	datac => \instruction[12]~input_o\,
	datad => \instruction[11]~input_o\,
	combout => \stage3|Mux12~0_combout\);

-- Location: FF_X4_Y29_N13
\stage3|Rj[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage3|Mux12~0_combout\,
	ena => \stage3|Rj[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage3|Rj\(3));

-- Location: LCCOMB_X2_Y29_N0
\stage5|ResOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|ResOut~4_combout\ = (\stage5|ResOut~0_combout\ & ((\stage3|Rj\(3)))) # (!\stage5|ResOut~0_combout\ & (\stage0|Rout1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5|ResOut~0_combout\,
	datab => \stage0|Rout1\(3),
	datad => \stage3|Rj\(3),
	combout => \stage5|ResOut~4_combout\);

-- Location: LCCOMB_X2_Y29_N28
\stage5|ResOut[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|ResOut\(3) = (GLOBAL(\stage5|process_0~0clkctrl_outclk\) & (\stage5|ResOut~4_combout\)) # (!GLOBAL(\stage5|process_0~0clkctrl_outclk\) & ((\stage5|ResOut\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5|ResOut~4_combout\,
	datab => \stage5|ResOut\(3),
	datad => \stage5|process_0~0clkctrl_outclk\,
	combout => \stage5|ResOut\(3));

-- Location: LCCOMB_X4_Y29_N10
\stage3|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux11~0_combout\ = (\instruction[12]~input_o\ & ((\instruction[11]~input_o\ & (\stage0|Rout\(4))) # (!\instruction[11]~input_o\ & ((\stage2|ResOut\(4)))))) # (!\instruction[12]~input_o\ & (((\stage2|ResOut\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Rout\(4),
	datab => \stage2|ResOut\(4),
	datac => \instruction[12]~input_o\,
	datad => \instruction[11]~input_o\,
	combout => \stage3|Mux11~0_combout\);

-- Location: FF_X4_Y29_N11
\stage3|Rj[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage3|Mux11~0_combout\,
	ena => \stage3|Rj[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage3|Rj\(4));

-- Location: LCCOMB_X2_Y29_N22
\stage5|ResOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|ResOut~5_combout\ = (\stage5|ResOut~0_combout\ & ((\stage3|Rj\(4)))) # (!\stage5|ResOut~0_combout\ & (\stage0|Rout1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5|ResOut~0_combout\,
	datab => \stage0|Rout1\(4),
	datad => \stage3|Rj\(4),
	combout => \stage5|ResOut~5_combout\);

-- Location: LCCOMB_X2_Y29_N10
\stage5|ResOut[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|ResOut\(4) = (GLOBAL(\stage5|process_0~0clkctrl_outclk\) & ((\stage5|ResOut~5_combout\))) # (!GLOBAL(\stage5|process_0~0clkctrl_outclk\) & (\stage5|ResOut\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5|ResOut\(4),
	datab => \stage5|ResOut~5_combout\,
	datad => \stage5|process_0~0clkctrl_outclk\,
	combout => \stage5|ResOut\(4));

-- Location: LCCOMB_X4_Y29_N0
\stage3|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux10~0_combout\ = (\instruction[12]~input_o\ & ((\instruction[11]~input_o\ & ((\stage0|Rout\(5)))) # (!\instruction[11]~input_o\ & (\stage2|ResOut\(5))))) # (!\instruction[12]~input_o\ & (\stage2|ResOut\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[12]~input_o\,
	datab => \stage2|ResOut\(5),
	datac => \stage0|Rout\(5),
	datad => \instruction[11]~input_o\,
	combout => \stage3|Mux10~0_combout\);

-- Location: FF_X4_Y29_N1
\stage3|Rj[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage3|Mux10~0_combout\,
	ena => \stage3|Rj[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage3|Rj\(5));

-- Location: LCCOMB_X2_Y29_N8
\stage5|ResOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|ResOut~6_combout\ = (\stage5|ResOut~0_combout\ & ((\stage3|Rj\(5)))) # (!\stage5|ResOut~0_combout\ & (\stage0|Rout1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage0|Rout1\(5),
	datac => \stage5|ResOut~0_combout\,
	datad => \stage3|Rj\(5),
	combout => \stage5|ResOut~6_combout\);

-- Location: LCCOMB_X2_Y29_N16
\stage5|ResOut[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|ResOut\(5) = (GLOBAL(\stage5|process_0~0clkctrl_outclk\) & (\stage5|ResOut~6_combout\)) # (!GLOBAL(\stage5|process_0~0clkctrl_outclk\) & ((\stage5|ResOut\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5|ResOut~6_combout\,
	datab => \stage5|ResOut\(5),
	datad => \stage5|process_0~0clkctrl_outclk\,
	combout => \stage5|ResOut\(5));

-- Location: LCCOMB_X4_Y29_N22
\stage3|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux9~0_combout\ = (\instruction[11]~input_o\ & ((\instruction[12]~input_o\ & ((\stage0|Rout\(6)))) # (!\instruction[12]~input_o\ & (\stage2|ResOut\(6))))) # (!\instruction[11]~input_o\ & (\stage2|ResOut\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|ResOut\(6),
	datab => \instruction[11]~input_o\,
	datac => \instruction[12]~input_o\,
	datad => \stage0|Rout\(6),
	combout => \stage3|Mux9~0_combout\);

-- Location: FF_X4_Y29_N23
\stage3|Rj[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage3|Mux9~0_combout\,
	ena => \stage3|Rj[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage3|Rj\(6));

-- Location: LCCOMB_X2_Y30_N30
\stage5|ResOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|ResOut~7_combout\ = (\stage5|ResOut~0_combout\ & ((\stage3|Rj\(6)))) # (!\stage5|ResOut~0_combout\ & (\stage0|Rout1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5|ResOut~0_combout\,
	datab => \stage0|Rout1\(6),
	datad => \stage3|Rj\(6),
	combout => \stage5|ResOut~7_combout\);

-- Location: LCCOMB_X2_Y30_N14
\stage5|ResOut[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|ResOut\(6) = (GLOBAL(\stage5|process_0~0clkctrl_outclk\) & (\stage5|ResOut~7_combout\)) # (!GLOBAL(\stage5|process_0~0clkctrl_outclk\) & ((\stage5|ResOut\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5|ResOut~7_combout\,
	datab => \stage5|ResOut\(6),
	datad => \stage5|process_0~0clkctrl_outclk\,
	combout => \stage5|ResOut\(6));

-- Location: LCCOMB_X4_Y29_N28
\stage3|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux8~0_combout\ = (\instruction[11]~input_o\ & ((\instruction[12]~input_o\ & ((\stage0|Rout\(7)))) # (!\instruction[12]~input_o\ & (\stage2|ResOut\(7))))) # (!\instruction[11]~input_o\ & (\stage2|ResOut\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|ResOut\(7),
	datab => \instruction[11]~input_o\,
	datac => \instruction[12]~input_o\,
	datad => \stage0|Rout\(7),
	combout => \stage3|Mux8~0_combout\);

-- Location: FF_X4_Y29_N29
\stage3|Rj[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stage3|Mux8~0_combout\,
	ena => \stage3|Rj[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage3|Rj\(7));

-- Location: LCCOMB_X1_Y29_N6
\stage5|ResOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|ResOut~8_combout\ = (\stage5|ResOut~0_combout\ & ((\stage3|Rj\(7)))) # (!\stage5|ResOut~0_combout\ & (\stage0|Rout1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Rout1\(7),
	datac => \stage5|ResOut~0_combout\,
	datad => \stage3|Rj\(7),
	combout => \stage5|ResOut~8_combout\);

-- Location: LCCOMB_X1_Y29_N8
\stage5|ResOut[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|ResOut\(7) = (GLOBAL(\stage5|process_0~0clkctrl_outclk\) & ((\stage5|ResOut~8_combout\))) # (!GLOBAL(\stage5|process_0~0clkctrl_outclk\) & (\stage5|ResOut\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage5|ResOut\(7),
	datac => \stage5|ResOut~8_combout\,
	datad => \stage5|process_0~0clkctrl_outclk\,
	combout => \stage5|ResOut\(7));

ww_Riout(0) <= \Riout[0]~output_o\;

ww_Riout(1) <= \Riout[1]~output_o\;

ww_Riout(2) <= \Riout[2]~output_o\;

ww_Riout(3) <= \Riout[3]~output_o\;

ww_Riout(4) <= \Riout[4]~output_o\;

ww_Riout(5) <= \Riout[5]~output_o\;

ww_Riout(6) <= \Riout[6]~output_o\;

ww_Riout(7) <= \Riout[7]~output_o\;

ww_Rjout(0) <= \Rjout[0]~output_o\;

ww_Rjout(1) <= \Rjout[1]~output_o\;

ww_Rjout(2) <= \Rjout[2]~output_o\;

ww_Rjout(3) <= \Rjout[3]~output_o\;

ww_Rjout(4) <= \Rjout[4]~output_o\;

ww_Rjout(5) <= \Rjout[5]~output_o\;

ww_Rjout(6) <= \Rjout[6]~output_o\;

ww_Rjout(7) <= \Rjout[7]~output_o\;
END structure;


