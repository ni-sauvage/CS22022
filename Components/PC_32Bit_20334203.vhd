----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2021 22:57:27
-- Design Name: 
-- Module Name: PC_32Bit_20334203 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC_32Bit_20334203 is
    Port ( 
        Clk, PI, PL, reset : in std_logic;
        extended_inp : in std_logic_vector(31 downto 0);
        counter : inout std_logic_vector (31 downto 0) := x"00000035"
    );
end PC_32Bit_20334203;

architecture Behavioral of PC_32Bit_20334203 is

begin
process(Clk)
    begin
    if(rising_edge(Clk)) then
        if(reset = '0') then
            if(PI = '1') then
                counter <= std_logic_vector(unsigned(counter) + 1);
            end if;
            if(PL = '1') then
                counter <= std_logic_vector(unsigned(counter) + unsigned(extended_inp));
            end if;
        elsif(reset = '1') then
            counter <= x"00000035";
        end if;
    end if;
end process;
end Behavioral;
