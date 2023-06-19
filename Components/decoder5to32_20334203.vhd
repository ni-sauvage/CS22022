----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.10.2021 15:55:05
-- Design Name: 
-- Module Name: decoder5to32_20334203 - Behavioral
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


library IEEE, lcdf_vhdl;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder5to32_20334203 is
    port (A : in std_logic_vector(5 downto 0);
    Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15, Q16, Q17, Q18, Q19, Q20, Q21, Q22, Q23, Q24, Q25, Q26, Q27, Q28, Q29, Q30, Q31, QTemp: out std_logic);
end decoder5to32_20334203;

architecture dataflow_1 of decoder5to32_20334203 is

begin
    Q0  <= '1' when A ="000000" else '0' after 2ns;
    Q1  <= '1' when A ="000001" else '0' after 2ns;
    Q2  <= '1' when A ="000010" else '0' after 2ns;
    Q3  <= '1' when A ="000011" else '0' after 2ns;
    Q4  <= '1' when A ="000100" else '0' after 2ns;
    Q5  <= '1' when A ="000101" else '0' after 2ns;
    Q6  <= '1' when A ="000110" else '0' after 2ns;
    Q7  <= '1' when A ="000111" else '0' after 2ns;
    Q8  <= '1' when A ="001000" else '0' after 2ns;
    Q9  <= '1' when A ="001001" else '0' after 2ns;
    Q10 <= '1' when A ="001010" else '0' after 2ns;
    Q11 <= '1' when A ="001011" else '0' after 2ns;
    Q12 <= '1' when A ="001100" else '0' after 2ns;
    Q13 <= '1' when A ="001101" else '0' after 2ns;
    Q14 <= '1' when A ="001110" else '0' after 2ns;
    Q15 <= '1' when A ="001111" else '0' after 2ns;
    Q16 <= '1' when A ="010000" else '0' after 2ns;
    Q17 <= '1' when A ="010001" else '0' after 2ns;
    Q18 <= '1' when A ="010010" else '0' after 2ns;
    Q19 <= '1' when A ="010011" else '0' after 2ns;
    Q20 <= '1' when A ="010100" else '0' after 2ns;
    Q21 <= '1' when A ="010101" else '0' after 2ns;
    Q22 <= '1' when A ="010110" else '0' after 2ns;
    Q23 <= '1' when A ="010111" else '0' after 2ns;
    Q24 <= '1' when A ="011000" else '0' after 2ns;
    Q25 <= '1' when A ="011001" else '0' after 2ns;
    Q26 <= '1' when A ="011010" else '0' after 2ns;
    Q27 <= '1' when A ="011011" else '0' after 2ns;
    Q28 <= '1' when A ="011100" else '0' after 2ns;
    Q29 <= '1' when A ="011101" else '0' after 2ns;
    Q30 <= '1' when A ="011110" else '0' after 2ns;
    Q31 <= '1' when A ="011111" else '0' after 2ns;
    QTemp <= '1' when A(5) ='1' else '0' after 2ns;          
end dataflow_1;
