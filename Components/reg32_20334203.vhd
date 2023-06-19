----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.10.2021 17:41:27
-- Design Name: 
-- Module Name: reg32_20334203 - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reg32_20334203 is
    Port (D: in std_logic_vector(31 downto 0);
        load, Clk : in std_logic;
        Q : out std_logic_vector(31 downto 0) := X"00000000");
end reg32_20334203;

architecture Behavioral of reg32_20334203 is
begin
process(Clk)
begin
    if(rising_edge(Clk)) then
        if load='1' then
            Q<=D after 2ns;
        end if;
    end if;
end process;
end Behavioral;
