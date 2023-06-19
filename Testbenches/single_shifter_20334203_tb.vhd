----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.11.2021 14:41:14
-- Design Name: 
-- Module Name: single_shifter_20334203_tb - Behavioral
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

entity single_shifter_20334203_tb is
--  Port ( );
end single_shifter_20334203_tb;

architecture Behavioral of single_shifter_20334203_tb is
    COMPONENT single_shifter_20334203 
    Port (B : in std_logic_vector(31 downto 0);
        S : in std_logic_vector(1 downto 0);
        Ir : in std_logic;
        Il : in std_logic;
        H : out std_logic_vector(31 downto 0)
    );
    END COMPONENT;
    --inputs
    signal B : std_logic_vector(31 downto 0);
    signal S : std_logic_vector(1 downto 0);
    signal Ir : std_logic;                   
    signal Il : std_logic;
    --outputs                   
    signal H :  std_logic_vector(31 downto 0);
    
begin
    Ir <= '0';
    Il <= '0';
    uut : single_shifter_20334203 PORT MAP(
        B => B,
        S => S,
        Ir => Ir,
        Il => Il,
        H => H
        );
        stim_proc : process
        begin
            wait for 250ns;
                B <= x"20334203";
                S <= "10";
                Ir <= '0';
                Il <= '0';
                
            wait for 250ns;
                B <= x"20334203";
                S <= "01";
                Ir <= '0';
                Il <= '0';
            
            wait for 250ns;
                B <= x"20334203";
                S <= "00";
                Ir <= '0';
                Il <= '0';
                                           
        end process;
end Behavioral;
