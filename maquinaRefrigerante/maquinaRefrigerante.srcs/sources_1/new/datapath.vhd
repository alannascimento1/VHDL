----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.04.2019 13:39:48
-- Design Name: 
-- Module Name: datapath - Behavioral
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

entity datapath is
    Port ( clk : in STD_LOGIC;
           tot_ld : in STD_LOGIC;
           tot_clr : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (7 downto 0);
           A : in STD_LOGIC_VECTOR (7 downto 0);
           tot_lt_s : out STD_LOGIC);
end datapath;

architecture Behavioral of datapath is

signal s_D: std_logic_vector(7 downto 0);
signal s_clk: std_logic;
signal s_Q: std_logic_vector(7 downto 0);

begin

tot: entity work.registrador
    Port map(D => s_D,
    ld => tot_ld, 
    rst => tot_clr, 
    clk=> clk,
    Q => s_Q);


somador: entity work.somador        --work é a biblioteca onde o somador está (default)
    Generic map (N => 8) 
    Port map ( A => s_Q,
    B => A, 
    S => s_D );
    
comparador: entity work.comp_lt        --work é a biblioteca onde o somador está (default)
        Port map ( A => s_Q, B => S, lt => tot_lt_s);

end Behavioral;
