----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.10.2021 17:06:10
-- Design Name: 
-- Module Name: mux32_32bit - Behavioral
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

entity mux32_32bit20334203 is
    Port ( In0, In1, In2, In3, In4, In5, In6, In7, In8, In9, In10, In11, In12, In13, In14, In15, In16, In17, In18, In19, In20, In21, In22, In23, In24, In25, In26, In27, In28, In29, In30, In31, InTemp: in std_logic_vector(31 downto 0);
        S: in std_logic_vector(5 downto 0);
        Z : out std_logic_vector(31 downto 0)
);
end mux32_32bit20334203;

architecture Behavioral of mux32_32bit20334203 is

begin
Z <= In0  after 2 ns when S="000000" else
     In1  after 2 ns when S="000001" else
     In2  after 2 ns when S="000010" else
     In3  after 2 ns when S="000011" else
     In4  after 2 ns when S="000100" else
     In5  after 2 ns when S="000101" else
     In6  after 2 ns when S="000110" else
     In7  after 2 ns when S="000111" else
     In8  after 2 ns when S="001000" else
     In9  after 2 ns when S="001001" else
     In10 after 2 ns when S="001010" else
     In11 after 2 ns when S="001011" else
     In12 after 2 ns when S="001100" else
     In13 after 2 ns when S="001101" else
     In14 after 2 ns when S="001110" else
     In15 after 2 ns when S="001111" else
     In16 after 2 ns when S="010000" else
     In17 after 2 ns when S="010001" else
     In18 after 2 ns when S="010010" else
     In19 after 2 ns when S="010011" else
     In20 after 2 ns when S="010100" else
     In21 after 2 ns when S="010101" else
     In22 after 2 ns when S="010110" else
     In23 after 2 ns when S="010111" else
     In24 after 2 ns when S="011000" else
     In25 after 2 ns when S="011001" else
     In26 after 2 ns when S="011010" else
     In27 after 2 ns when S="011011" else
     In28 after 2 ns when S="011100" else
     In29 after 2 ns when S="011101" else
     In30 after 2 ns when S="011110" else
     In31 after 2 ns when S="011111" else
     InTemp after 2ns when S(5)='1' else
     "00000000000000000000000000000000" after 5ns;
end Behavioral;
