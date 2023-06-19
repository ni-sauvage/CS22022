----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2021 18:28:18
-- Design Name: 
-- Module Name: ExtendLogic_20334203_tb - Behavioral
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

entity ExtendLogic_20334203_tb is
--  Port ( );
end ExtendLogic_20334203_tb;

architecture Behavioral of ExtendLogic_20334203_tb is
    COMPONENT ExtendLogic_20334203
    Port ( in_val : in std_logic_vector(9 downto 0);
         out_val : out std_logic_vector(31 downto 0)
    );
    END COMPONENT;
    signal in_val : std_logic_vector(9 downto 0);
    signal out_val : std_logic_vector(31 downto 0);

begin
    uut : ExtendLogic_20334203 PORT MAP(
        in_val => in_val,
        out_val => out_val
        );
    stim_proc : process
    begin
        wait for 350ns;
            in_val <= "1111111111";
        wait for 350ns;
            in_val <= "0000000111";
        wait for 350ns;
            in_val <= "0000000000";
    end process;
end Behavioral;
