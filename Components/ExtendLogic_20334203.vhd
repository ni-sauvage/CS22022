----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2021 14:58:30
-- Design Name: 
-- Module Name: ExtendLogic_20334203 - Behavioral
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

entity ExtendLogic_20334203 is
    Port ( in_val : in std_logic_vector(9 downto 0);
         out_val : out std_logic_vector(31 downto 0)
    );
end ExtendLogic_20334203;

architecture Behavioral of ExtendLogic_20334203 is

begin
    process
    begin
        wait for 2ns;
        if(in_val(in_val'left) = '1') then
            out_val <= "1111111111111111111111" & in_val;
        elsif(in_val(in_val'left) = '0') then
            out_val <= "0000000000000000000000" & in_val;
        end if;
    end process;
end Behavioral;
