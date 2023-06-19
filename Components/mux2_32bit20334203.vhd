----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.10.2021 16:36:54
-- Design Name: 
-- Module Name: mux2_32bit - Behavioral
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

entity mux2_32bit20334203 is
    port(In0 : in std_logic_vector(31 downto 0);
        In1 : in std_logic_vector(31 downto 0);
        S : in std_logic;
        Z : out std_logic_vector(31 downto 0));
end mux2_32bit20334203;

architecture Behavioral of mux2_32bit20334203 is
begin
    Z <= In0 after 2 ns when S='0' else
    In1 after 2 ns when S='1'else
    "00000000000000000000000000000000" after 2 ns;
end Behavioral;
