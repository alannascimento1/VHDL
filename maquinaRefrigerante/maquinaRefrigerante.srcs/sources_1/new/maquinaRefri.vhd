----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.04.2019 12:42:42
-- Design Name: 
-- Module Name: maquinaRefri - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity maquinaRefri is
    Port ( c : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           s : in STD_LOGIC_VECTOR (7 downto 0);
           a : in STD_LOGIC_VECTOR (7 downto 0);
           d : out STD_LOGIC);
end maquinaRefri;

architecture Behavioral of maquinaRefri is

signal s_tot_ld: std_logic;
signal s_tot_clr: std_logic;
signal s_tot_lts: std_logic;

signal s_clock: std_logic;


begin
s_clock<=clk;

dataPath: entity work.datapath
        Port map ( clk =>s_clock,
           tot_ld =>s_tot_ld,
           tot_clr =>s_tot_clr,
           S =>s,
           A =>a,
           tot_lt_s =>s_tot_lts);

controle: entity work.controlador
        Port map(c=>c,
         clk =>s_clock,
         rst =>rst,
         tot_lt_s => s_tot_lts,
         d =>d,
         tot_ld =>s_tot_ld,
         tot_clr =>s_tot_clr);

end Behavioral;
