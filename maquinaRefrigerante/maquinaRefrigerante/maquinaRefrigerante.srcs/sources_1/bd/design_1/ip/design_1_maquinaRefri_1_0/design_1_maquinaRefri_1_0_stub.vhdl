-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Mon Apr 15 11:58:07 2019
-- Host        : alan running 64-bit Ubuntu 16.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/alan/Vivado/scratch/maquinaRefrigerante/maquinaRefrigerante/maquinaRefrigerante.srcs/sources_1/bd/design_1/ip/design_1_maquinaRefri_1_0/design_1_maquinaRefri_1_0_stub.vhdl
-- Design      : design_1_maquinaRefri_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_maquinaRefri_1_0 is
  Port ( 
    c : in STD_LOGIC;
    clk : in STD_LOGIC;
    get : in STD_LOGIC;
    rst : in STD_LOGIC;
    s : in STD_LOGIC_VECTOR ( 3 downto 0 );
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d : out STD_LOGIC
  );

end design_1_maquinaRefri_1_0;

architecture stub of design_1_maquinaRefri_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "c,clk,get,rst,s[3:0],a[3:0],d";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "maquinaRefri,Vivado 2017.4";
begin
end;
