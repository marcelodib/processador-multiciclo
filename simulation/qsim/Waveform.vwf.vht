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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/26/2017 20:58:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Main
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Main_vhd_vec_tst IS
END Main_vhd_vec_tst;
ARCHITECTURE Main_arch OF Main_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL instruction : STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL Riout : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Rjout : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Main
	PORT (
	clock : IN STD_LOGIC;
	instruction : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
	Riout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Rjout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Main
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	instruction => instruction,
	Riout => Riout,
	Rjout => Rjout
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 50000 ps;
	clock <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 2200000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
-- instruction[12]
t_prcs_instruction_12: PROCESS
BEGIN
	instruction(12) <= '1';
	WAIT FOR 600000 ps;
	instruction(12) <= '0';
	WAIT FOR 1200000 ps;
	instruction(12) <= '1';
	WAIT FOR 300000 ps;
	instruction(12) <= '0';
WAIT;
END PROCESS t_prcs_instruction_12;
-- instruction[11]
t_prcs_instruction_11: PROCESS
BEGIN
	instruction(11) <= '0';
	WAIT FOR 900000 ps;
	instruction(11) <= '1';
	WAIT FOR 600000 ps;
	instruction(11) <= '0';
WAIT;
END PROCESS t_prcs_instruction_11;
-- instruction[10]
t_prcs_instruction_10: PROCESS
BEGIN
	instruction(10) <= '1';
	WAIT FOR 600000 ps;
	instruction(10) <= '0';
	WAIT FOR 600000 ps;
	instruction(10) <= '1';
	WAIT FOR 600000 ps;
	instruction(10) <= '0';
WAIT;
END PROCESS t_prcs_instruction_10;
-- instruction[9]
t_prcs_instruction_9: PROCESS
BEGIN
	instruction(9) <= '0';
	WAIT FOR 1800000 ps;
	instruction(9) <= '1';
	WAIT FOR 300000 ps;
	instruction(9) <= '0';
WAIT;
END PROCESS t_prcs_instruction_9;
-- instruction[8]
t_prcs_instruction_8: PROCESS
BEGIN
	instruction(8) <= '0';
	WAIT FOR 300000 ps;
	instruction(8) <= '1';
	WAIT FOR 300000 ps;
	instruction(8) <= '0';
	WAIT FOR 300000 ps;
	instruction(8) <= '1';
	WAIT FOR 300000 ps;
	instruction(8) <= '0';
	WAIT FOR 300000 ps;
	instruction(8) <= '1';
	WAIT FOR 300000 ps;
	instruction(8) <= '0';
WAIT;
END PROCESS t_prcs_instruction_8;
-- instruction[7]
t_prcs_instruction_7: PROCESS
BEGIN
	instruction(7) <= '0';
WAIT;
END PROCESS t_prcs_instruction_7;
-- instruction[6]
t_prcs_instruction_6: PROCESS
BEGIN
	instruction(6) <= '0';
	WAIT FOR 600000 ps;
	instruction(6) <= '1';
	WAIT FOR 300000 ps;
	instruction(6) <= '0';
	WAIT FOR 900000 ps;
	instruction(6) <= '1';
	WAIT FOR 300000 ps;
	instruction(6) <= '0';
WAIT;
END PROCESS t_prcs_instruction_6;
-- instruction[5]
t_prcs_instruction_5: PROCESS
BEGIN
	instruction(5) <= '0';
WAIT;
END PROCESS t_prcs_instruction_5;
-- instruction[4]
t_prcs_instruction_4: PROCESS
BEGIN
	instruction(4) <= '0';
WAIT;
END PROCESS t_prcs_instruction_4;
-- instruction[3]
t_prcs_instruction_3: PROCESS
BEGIN
	instruction(3) <= '0';
WAIT;
END PROCESS t_prcs_instruction_3;
-- instruction[2]
t_prcs_instruction_2: PROCESS
BEGIN
	instruction(2) <= '0';
	WAIT FOR 900000 ps;
	instruction(2) <= '1';
	WAIT FOR 300000 ps;
	instruction(2) <= '0';
WAIT;
END PROCESS t_prcs_instruction_2;
-- instruction[1]
t_prcs_instruction_1: PROCESS
BEGIN
	instruction(1) <= '0';
	WAIT FOR 300000 ps;
	instruction(1) <= '1';
	WAIT FOR 300000 ps;
	instruction(1) <= '0';
WAIT;
END PROCESS t_prcs_instruction_1;
-- instruction[0]
t_prcs_instruction_0: PROCESS
BEGIN
	instruction(0) <= '1';
	WAIT FOR 300000 ps;
	instruction(0) <= '0';
	WAIT FOR 300000 ps;
	instruction(0) <= '1';
	WAIT FOR 300000 ps;
	instruction(0) <= '0';
	WAIT FOR 300000 ps;
	instruction(0) <= '1';
	WAIT FOR 300000 ps;
	instruction(0) <= '0';
WAIT;
END PROCESS t_prcs_instruction_0;
END Main_arch;
