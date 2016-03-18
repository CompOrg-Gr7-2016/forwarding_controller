-- Copyright (C) 1991-2013 Altera Corporation
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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to
-- suit user's needs .Comments are provided in each section to help the user
-- fill out necessary details.
-- ***************************************************************************
-- Generated on "03/15/2016 00:17:36"

-- Vhdl Test Bench template for design  :  FORWARDING_CONTROLLER
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY FORWARDING_CONTROLLER_vhd_tst IS
END FORWARDING_CONTROLLER_vhd_tst;
ARCHITECTURE FORWARDING_CONTROLLER_arch OF FORWARDING_CONTROLLER_vhd_tst IS
-- constants
-- signals
SIGNAL forward_1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL forward_2 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL write_en_m : STD_LOGIC := '0';
SIGNAL write_en_w : STD_LOGIC := '0';
SIGNAL read_reg_1_x : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000";
SIGNAL read_reg_2_x : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000";
SIGNAL write_reg_m : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000";
SIGNAL write_reg_w : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000";
COMPONENT FORWARDING_CONTROLLER
	PORT (
	forward_1 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	forward_2 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	write_en_m : IN STD_LOGIC;
	write_en_w : IN STD_LOGIC;
	read_reg_1_x : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	read_reg_2_x : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	write_reg_m : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	write_reg_w : IN STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : FORWARDING_CONTROLLER
	PORT MAP (
-- list connections between master ports and signals
	forward_1 => forward_1,
	forward_2 => forward_2,
	write_en_m => write_en_m,
	write_en_w => write_en_w,
	read_reg_1_x => read_reg_1_x,
	read_reg_2_x => read_reg_2_x,
	write_reg_m => write_reg_m,
	write_reg_w => write_reg_w
	);
init : PROCESS
-- variable declarations
BEGIN
        -- code that executes only once
WAIT;
END PROCESS init;
always : PROCESS
-- optional sensitivity list
-- (        )
-- variable declarations
BEGIN
        wait for 10 ns;
        write_en_m <= '1';
        write_en_w <= '1';
        wait for 10 ns;
        read_reg_1_x <= "00000";
        read_reg_2_x <= "00000";
        write_reg_m <= "00001";
        write_reg_w <= "00001";
        wait for 10 ns;
        read_reg_1_x <= "00000";
        read_reg_2_x <= "00000";
        write_reg_m <= "00000";
        write_reg_w <= "00000";
        wait for 10 ns;
        read_reg_1_x <= "00000";
        read_reg_2_x <= "00001";
        write_reg_m <= "00000";
        write_reg_w <= "00001";
        wait for 10 ns;
        read_reg_1_x <= "00000";
        read_reg_2_x <= "00001";
        write_reg_m <= "00001";
        write_reg_w <= "00001";
        wait for 10 ns;
        read_reg_1_x <= "00001";
        read_reg_2_x <= "00010";
        write_reg_m <= "00011";
        write_reg_w <= "00100";
        wait for 10 ns;
        read_reg_1_x <= "00010";
        read_reg_2_x <= "00000";
        write_reg_m <= "00010";
        write_reg_w <= "00010";
        wait for 10 ns;
        read_reg_1_x <= "00010";
        read_reg_2_x <= "00001";
        write_reg_m <= "00001";
        write_reg_w <= "00010";
        wait for 10 ns;
        wait for 10 ns;
        write_en_m <= '0';
        write_en_w <= '0';
        wait for 10 ns;
        read_reg_1_x <= "00000";
        read_reg_2_x <= "00000";
        write_reg_m <= "00001";
        write_reg_w <= "00001";
        wait for 10 ns;
        read_reg_1_x <= "00000";
        read_reg_2_x <= "00000";
        write_reg_m <= "00000";
        write_reg_w <= "00000";
        wait for 10 ns;
        read_reg_1_x <= "00000";
        read_reg_2_x <= "00001";
        write_reg_m <= "00000";
        write_reg_w <= "00001";
        wait for 10 ns;
        read_reg_1_x <= "00000";
        read_reg_2_x <= "00001";
        write_reg_m <= "00001";
        write_reg_w <= "00001";
        wait for 10 ns;
        read_reg_1_x <= "00001";
        read_reg_2_x <= "00010";
        write_reg_m <= "00011";
        write_reg_w <= "00100";
        wait for 10 ns;
        read_reg_1_x <= "00010";
        read_reg_2_x <= "00000";
        write_reg_m <= "00010";
        write_reg_w <= "00010";
        wait for 10 ns;
        read_reg_1_x <= "00010";
        read_reg_2_x <= "00001";
        write_reg_m <= "00001";
        write_reg_w <= "00010";
        wait for 10 ns;
WAIT;
END PROCESS always;
END FORWARDING_CONTROLLER_arch;
