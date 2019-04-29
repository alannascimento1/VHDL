--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
--Date        : Mon Apr 15 11:56:44 2019
--Host        : alan running 64-bit Ubuntu 16.04.4 LTS
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    a_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c_1 : in STD_LOGIC;
    clk_1 : in STD_LOGIC;
    d_1 : out STD_LOGIC;
    get_0 : in STD_LOGIC;
    rst_1 : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    d_1 : out STD_LOGIC;
    c_1 : in STD_LOGIC;
    clk_1 : in STD_LOGIC;
    rst_1 : in STD_LOGIC;
    a_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    get_0 : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      a_1(3 downto 0) => a_1(3 downto 0),
      c_1 => c_1,
      clk_1 => clk_1,
      d_1 => d_1,
      get_0 => get_0,
      rst_1 => rst_1
    );
end STRUCTURE;
