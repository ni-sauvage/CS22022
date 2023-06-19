----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2021 17:51:56
-- Design Name: 
-- Module Name: ZeroFillLogic_20334203 - Behavioral
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

entity ZeroFillLogic_20334203 is
    Port (  SB : in std_logic_vector(4 downto 0);
        operand : out std_logic_vector(31 downto 0)
    );
end ZeroFillLogic_20334203;

architecture Behavioral of ZeroFillLogic_20334203 is

begin
operand(31 downto 5) <= "000000000000000000000000000";
operand(4 downto 0) <= SB;  
end Behavioral;
