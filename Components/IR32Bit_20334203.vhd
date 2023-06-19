----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2021 14:52:25
-- Design Name: 
-- Module Name: IR32Bit_20334203 - Behavioral
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

entity IR32Bit_20334203 is
    Port (
        instr : in std_logic_vector(31 downto 0);
        Clk, IL : in std_logic;
        DR, SA, SB : out std_logic_vector(4 downto 0);
        instr_out : out std_logic_vector(16 downto 0)
    );
end IR32Bit_20334203;

architecture Behavioral of IR32Bit_20334203 is

begin
process(Clk)
    begin
    if(rising_edge(Clk)) then
        if(IL = '1') then
            instr_out <= instr(31 downto 15);
            DR <= instr(14 downto 10);
            SA <= instr(9 downto 5);
            SB <= instr(4 downto 0);
        end if;
    end if;
    end process;
end Behavioral;
