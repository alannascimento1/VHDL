----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.04.2019 14:00:41
-- Design Name: 
-- Module Name: registrador - Behavioral
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

entity registrador is
    Generic (N : integer := 8);
    Port ( D : in STD_LOGIC_VECTOR (N-1 downto 0);
           ld : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (N-1 downto 0));
end registrador;

architecture Behavioral of registrador is

signal sQ :STD_LOGIC_VECTOR (N-1 downto 0) := (others => '0');

begin

process(clk)
begin

    if rising_edge(clk) then
        if (rst = '1') then    
            sQ <= (others => '0');
        else
            if (ld = '1') then
                sQ <= D;
            end if;       
        end if;
    end if;

end process;

Q <= sQ;

end Behavioral;
