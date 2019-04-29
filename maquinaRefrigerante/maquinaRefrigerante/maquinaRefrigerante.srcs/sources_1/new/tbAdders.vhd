----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.04.2019 14:27:55
-- Design Name: 
-- Module Name: tbAdders - Behavioral
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

entity tbAdders is
--  Port ( );
end tbAdders;

architecture Behavioral of tbAdders is

signal sA: std_logic_vector(7 downto 0);
signal sB: std_logic_vector(7 downto 0);
signal sS: std_logic_vector(7 downto 0);

begin

DUT: entity work.somador        --work é a biblioteca onde o somador está (default)
    Generic map (N => 8) 
    Port map ( A => sA, B => sB, S => sS );

process
begin
    sA <= x"55";
    sB <= x"02";
    
    wait for 10ns;
    
    sA <= x"55";
    sB <= x"f0";
    
    wait for 20ns;
    sA <= x"ff";
    sB <= x"01";
    
    wait for 10ns;
end process;

end Behavioral;
