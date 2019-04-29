----------------------------------------------------------------------------------
-- Company: UFC Campus Quixadá
-- Engineer: Alan Nascimento Gomes
-- 
-- Create Date: 09.04.2019 12:42:42
-- Design Name: 
-- Module Name: maquinaRefri - Behavioral
-- Project Name: 
-- Target Devices: Zybo
-- Tool Versions: 1
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
    Generic (N : integer := 4);
    Port ( c : in STD_LOGIC;
           clk : in STD_LOGIC;
           get : in STD_LOGIC;
           rst : in STD_LOGIC;
           s : in STD_LOGIC_VECTOR (N-1 downto 0);
           a : in STD_LOGIC_VECTOR (N-1 downto 0);
           d : out STD_LOGIC);
end maquinaRefri;

architecture Behavioral of maquinaRefri is

signal s_tot_ld: std_logic;
signal s_tot_clr: std_logic;
signal s_tot_lts: std_logic;

signal s_clock: std_logic;


begin
s_clock<=clk;

FSM_CTRL: entity work.controlador
        Port map(c=>c,
         clk =>s_clock,
         get => get,
         rst =>rst,
         tot_lt_s => s_tot_lts,
         d =>d,
         tot_ld =>s_tot_ld,
         tot_clr =>s_tot_clr
         );
         
DATAPATH: entity work.datapath
        Generic map(N=>N)
        Port map ( clk =>s_clock,
                   tot_ld =>s_tot_ld,
                   tot_clr =>s_tot_clr,
                   S =>s,
                   A =>a,
                   tot_lt_s =>s_tot_lts);

end Behavioral;
