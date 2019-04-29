----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.04.2019 08:08:59
-- Design Name: 
-- Module Name: tb_Registrador - Behavioral
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

entity tb_Registrador is
--  Port ( );
end tb_Registrador;

architecture Behavioral of tb_Registrador is

signal Ds: std_logic_vector(7 downto 0);
signal lds: std_logic;
signal rsts: std_logic;
signal clks: std_logic;

begin

DUT: entity work.registrador
    Port map(D => Ds, ld => lds, rst => rsts, clk=>clks);
  
process 
begin

Ds <= x"12";
lds <= '1';
rsts <= '0';
clks <= '1';

wait for 10ns;

Ds <= x"25";
lds <= '1';
rsts <= '0';
clks <= '1';

end process;
    
end Behavioral;
