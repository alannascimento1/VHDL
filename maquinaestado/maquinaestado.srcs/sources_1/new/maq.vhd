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

entity maq is
    Port(c       :  in std_logic;
         clk :      in std_logic;
         t   :      out STD_LOGIC_VECTOR (3 downto 0);
         rst :      in std_logic);
end maq;

architecture Behavioral of maq is

TYPE estados is (init, e1, rec1,e2, rec2, e3, rec3, espera, e4);

signal estado_atual : estados;
signal proximo_estado : estados;

signal s_ld :    std_logic;
signal s_clr :   std_logic;
signal s_ld1 :   std_logic;

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
     
            
        --lógica de transição
            if(c='1') then
                    t<=x"1";
                   proximo_estado <= e1;
            else
                   proximo_estado <= init;
            end if;
            
         when e1 =>
                --saídas
               
            --lógica de transição
                if(c='0') then
                       t<=x"0";
                       proximo_estado <= rec1;
                else 
                    proximo_estado <= e1;
                end if;        
        when rec1 =>
        --saídas
             
        --lógica de transição
            if(c='1') then
                   t<=x"2";
                   proximo_estado <= e2;
            else
                proximo_estado <= rec1;
            end if;
            
        when e2 =>
            --saídas
               
            --lógica de transição
                if(c='0') then
                       t<=x"0";
                       proximo_estado <= rec2;
                       
                else
                    proximo_estado <= e2;
                end if;  
        
        when rec2 =>
        
        --lógica de transição
              if(c='1') then
                     t<=x"3";
                     proximo_estado <= e3;
              else
                proximo_estado <= rec2;
              end if; 
         when e3 =>
             
             --lógica de transição
                 if(c='0') then
                        t<=x"0";
                        proximo_estado <= rec3;
                 else
                    proximo_estado <= e3;
                 end if;  
        when rec3 =>
        --saídas
          
        --lógica de transição
            proximo_estado <= espera; 
        when espera =>
        --saídas
           
        --lógica de transição
            if(c='1') then
                  t<=x"4";
                  proximo_estado <= e4;
            else
                proximo_estado <= espera;
            end if; 
        when e4 =>
           --saídas
               
           --lógica de transição
               if(c='0') then
                      t<=x"0";
                      proximo_estado <= init;
               else
                proximo_estado <= e4;
               end if;  
     end case;
    
end process;
 
end Behavioral;
