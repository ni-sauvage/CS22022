----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2021 14:27:50
-- Design Name: 
-- Module Name: CAR17Bit_20334203 - Behavioral
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

entity CAR17Bit_20334203 is
    Port ( 
        LAddr : in std_logic_vector(16 downto 0);
        Clk, L_S, reset : in std_logic;
        Addr_out : inout std_logic_vector(16 downto 0)
    );
end CAR17Bit_20334203;

architecture Behavioral of CAR17Bit_20334203 is


begin
process(Clk)
    begin
    if(rising_edge(Clk)) then
        if(reset = '0') then
            if(L_S = '1') then
                Addr_out <= LAddr;
            end if;
            if(L_S = '0') then
                Addr_out <= std_logic_vector(unsigned(Addr_out) + 1);
            end if;
        elsif(reset = '1') then
                Addr_out <= "00000000000000110";
        end if;
    end if;
    end process;
end Behavioral;
