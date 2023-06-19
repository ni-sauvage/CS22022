----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2021 17:55:24
-- Design Name: 
-- Module Name: Multiplexer1Bit_8to1_20334203 - Behavioral
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

entity Multiplexer1Bit_8to1_20334203 is
    Port ( NZ, NC, N, Z, C, V, T, F : in std_logic;
        MS : in std_logic_vector(2 downto 0);
        G : out std_logic
    );
end Multiplexer1Bit_8to1_20334203;

architecture Behavioral of Multiplexer1Bit_8to1_20334203 is

begin
G <= NZ after 2ns when MS = "111" else
     NC after 2ns when MS = "110" else
     N  after 2ns when MS = "101" else
     Z  after 2ns when MS = "100" else
     V  after 2ns when MS = "011" else
     C  after 2ns when MS = "010" else
     T  after 2ns when MS = "001" else
     F  after 2ns when MS = "000";
    
end Behavioral;
