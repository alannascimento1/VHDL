----------------------------------------------------------------------------------
-- Company: UFC Campus Quixadá
-- Engineer: Alan Nascimento Gomes
-- 
-- Create Date: 08.04.2019 14:17:56
-- Design Name: 
-- Module Name: controlador - Behavioral
-- Project Name: Controlador
-- Target Devices: Zybo
-- Tool Versions: 
-- Description: Controlador da máquina de Refrigerante
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

entity controlador is
    Port(c       :  in std_logic;
         clk :      in std_logic;
         rst :      in std_logic;
         tot_lt_s : in std_logic;
         d :        out std_logic;
         tot_ld :   out std_logic;
         tot_clr :  out std_logic);
end controlador;

architecture Behavioral of controlador is

TYPE estados is (init, wait_coin, add_val, disp);

signal estado_atual : estados;
signal proximo_estado : estados;

signal s_d :         std_logic;
signal s_tot_ld :    std_logic;
signal s_tot_clr :   std_logic;

begin

process(clk,rst)   --quais são os sinais que ativa esse processo
begin    
    
    if (rst = '1') then    
        estado_atual <= init;
    elsif (rising_edge(clk)) then
        estado_atual <= proximo_estado;    
    end if;

end process;

process(estado_atual) -- é a tabela verdade, calcula qual o proximo estado e o que o estado vai fazer
begin

    case estado_atual is
        when init =>
        --saídas
            s_d <= '0';
            s_tot_clr <= '1';
            s_tot_ld <= '0';
        --lógica de transição
            proximo_estado <= wait_coin;
        
        when wait_coin =>
        --saídas
            s_d <= '0';
            s_tot_clr <= '0';
            s_tot_ld <= '0';   
        --lógica de transição
            if(c='1') then
                proximo_estado <= add_val;
            elsif(c='0' and tot_lt_s = '1') then
                proximo_estado <= wait_coin;
            elsif(c='0' and tot_lt_s = '0') then
                proximo_estado <= disp;
            end if;
        
        when add_val =>
        --saídas
            s_tot_ld<='1';
            s_d <= '0';
            s_tot_clr <= '0';
        --lógica de transição
            proximo_estado <= wait_coin;
        when disp =>
        --saídas
            s_d<='1';
            s_tot_clr <= '0';
            s_tot_ld <= '0';
        --lógica de transição
            proximo_estado <= init;
     end case;
    
end process;

 d       <= s_d;
 tot_ld  <= s_tot_ld;
 tot_clr <= s_tot_clr;
 
end Behavioral;