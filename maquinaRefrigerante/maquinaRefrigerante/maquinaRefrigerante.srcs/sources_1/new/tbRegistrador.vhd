----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.04.2019 15:18:30
-- Design Name: 
-- Module Name: tbRegistrador - Behavioral
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

entity tbRegistrador is
--  Port ( );
end tbRegistrador;

architecture Behavioral of tbRegistrador is
signal A: std_logic_vector(7 downto 0);
signal B: std_logic_vector(7 downto 0);

begin

DUT: entity work.comp_lt        --work é a biblioteca onde o somador está (default)
     
    Port map ( A => A, B => B);

process
begin
    A <= x"55";
    B <= x"55";
    
    --wait for 10ns;
    
    --A <= x"55";
    --B <= x"f0";
    
   -- wait for 20ns;
    --A <= x"ff";
    --B <= x"01";
    
    wait for 10ns;
end process;
end Behavioral;
