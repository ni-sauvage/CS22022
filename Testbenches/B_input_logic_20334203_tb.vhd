----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2021 18:14:34
-- Design Name: 
-- Module Name: B_input_logic_20334203_tb - Behavioral
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

entity B_input_logic_20334203_tb is
--  Port ( );
end B_input_logic_20334203_tb;

architecture Behavioral of B_input_logic_20334203_tb is
    COMPONENT B_input_logic_20334203
    Port ( B : in std_logic_vector(31 downto 0);
        S_in : in std_logic_vector(1 downto 0);
        Y : out std_logic_vector(31 downto 0)
    );
    END COMPONENT;
    --signals
    --inputs
    signal B : std_logic_vector(31 downto 0);
    signal S_in : std_logic_vector(1 downto 0);
    --outputs
    signal Y : std_logic_vector(31 downto 0);
begin
    uut : B_input_logic_20334203 PORT MAP(
        B => B,
        S_in => S_in,
        Y => Y
        );
        stim_proc: process
        begin
            wait for 250ns;
                B <= x"20334203";
                S_in <= "00";
            
            wait for 250ns;
                B <= x"20334203";
                S_in <= "01";
            
            wait for 250ns;
                B <= x"20334203";
                S_in <= "10";
            
            wait for 250ns;
                B <= x"20334203";
                S_in <= "11";
        
        end process;
end Behavioral;
