----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.11.2021 15:27:37
-- Design Name: 
-- Module Name: full_adder_32_bit_20334203 - Behavioral
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

entity full_adder_20334203 is
    port(X, Y, C_in : in std_logic;
        S, C_out : out std_logic);
end full_adder_20334203;

architecture Behavioral of full_adder_20334203 is

begin
    S <= X xor Y xor C_in after 2 ns;
    C_out <= (X and Y) OR (X and C_in) OR (Y and C_in) after 2 ns;
end Behavioral;
