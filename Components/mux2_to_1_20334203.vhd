----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.11.2021 12:46:43
-- Design Name: 
-- Module Name: mux2_to_1_20334203 - Behavioral
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

entity mux2_to_1_20334203 is
    Port ( in0, in1, S: in std_logic; 
        G : out std_logic
    );
end mux2_to_1_20334203;

architecture Behavioral of mux2_to_1_20334203 is

begin
    G <= in0 when S ='0' else
         in1 when S ='1';
end Behavioral;
