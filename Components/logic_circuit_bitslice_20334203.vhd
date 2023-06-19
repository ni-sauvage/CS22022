----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.11.2021 12:04:19
-- Design Name: 
-- Module Name: logic_circuit_bitslice_20334203 - Behavioral
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

entity logic_circuit_bitslice_20334203 is
    Port ( S_in : in std_logic_vector(1 downto 0);
        A, B : in std_logic;
        G_log_out : out std_logic
    );
end logic_circuit_bitslice_20334203;

architecture Behavioral of logic_circuit_bitslice_20334203 is

begin
    G_log_out <= A AND B after 2ns when (S_in <= "00") else
         A OR B after 2ns when (S_in <= "01") else
         A XOR B after 2ns when (S_in <= "10") else
         NOT A after 2ns when (S_in <= "11") else
         '0' after 2ns;
end Behavioral;
