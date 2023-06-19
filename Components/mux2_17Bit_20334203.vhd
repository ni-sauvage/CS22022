----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.01.2022 18:52:05
-- Design Name: 
-- Module Name: mux2_17Bit_20334203 - Behavioral
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

entity mux2_17Bit_20334203 is
    port(In0 : in std_logic_vector(16 downto 0);
        In1 : in std_logic_vector(16 downto 0);
        S : in std_logic;
        Z : out std_logic_vector(16 downto 0));
end mux2_17Bit_20334203;

architecture Behavioral of mux2_17Bit_20334203 is
begin
    Z <= In0 after 2 ns when S='0' else
    In1 after 2 ns when S='1'else
    "00000000000000000" after 5 ns;
end Behavioral;

