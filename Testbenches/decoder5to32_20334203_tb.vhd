----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.10.2021 15:21:21
-- Design Name: 
-- Module Name: decoder5to32_20334203_tb - Behavioral
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

entity decoder5to32_20334203_tb is
end decoder5to32_20334203_tb;

architecture Behavioral of decoder5to32_20334203_tb is
    COMPONENT decoder5to32_20334203
    PORT(
         A   : IN std_logic_vector(5 downto 0);
         Q0  : Out std_logic;
         Q1  : Out std_logic;
         Q2  : Out std_logic;
         Q3  : Out std_logic;
         Q4  : Out std_logic;
         Q5  : Out std_logic;
         Q6  : Out std_logic;
         Q7  : Out std_logic;
         Q8  : Out std_logic;
         Q9  : Out std_logic;
         Q10 : Out std_logic;
         Q11 : Out std_logic;
         Q12 : Out std_logic;
         Q13 : Out std_logic;
         Q14 : Out std_logic;
         Q15 : Out std_logic;
         Q16 : Out std_logic;
         Q17 : Out std_logic;
         Q18 : Out std_logic;
         Q19 : Out std_logic;
         Q20 : Out std_logic;
         Q21 : Out std_logic;
         Q22 : Out std_logic;
         Q23 : Out std_logic;
         Q24 : Out std_logic;
         Q25 : Out std_logic;
         Q26 : Out std_logic;
         Q27 : Out std_logic;
         Q28 : Out std_logic;
         Q29 : Out std_logic;
         Q30 : Out std_logic;
         Q31 : Out std_logic;
         QTemp : Out std_logic
     );
     END COMPONENT;
     
     --Inputs
     signal A   : std_logic_vector(5 downto 0);
     
     --Outputs
     signal Q0  : std_logic;
     signal Q1  : std_logic;
     signal Q2  : std_logic;
     signal Q3  : std_logic;
     signal Q4  : std_logic;
     signal Q5  : std_logic;
     signal Q6  : std_logic;
     signal Q7  : std_logic;
     signal Q8  : std_logic;
     signal Q9  : std_logic;
     signal Q10 : std_logic;
     signal Q11 : std_logic;
     signal Q12 : std_logic;
     signal Q13 : std_logic;
     signal Q14 : std_logic;
     signal Q15 : std_logic;
     signal Q16 : std_logic;
     signal Q17 : std_logic;
     signal Q18 : std_logic;
     signal Q19 : std_logic;
     signal Q20 : std_logic;
     signal Q21 : std_logic;
     signal Q22 : std_logic;
     signal Q23 : std_logic;
     signal Q24 : std_logic;
     signal Q25 : std_logic;
     signal Q26 : std_logic;
     signal Q27 : std_logic;
     signal Q28 : std_logic;
     signal Q29 : std_logic;
     signal Q30 : std_logic;
     signal Q31 : std_logic;
     signal QTemp : std_logic;
     
BEGIN

    uut: decoder5to32_20334203 PORT MAP (
        Q0  => Q0, 
        Q1  => Q1, 
        Q2  => Q2, 
        Q3  => Q3, 
        Q4  => Q4, 
        Q5  => Q5, 
        Q6  => Q6, 
        Q7  => Q7, 
        Q8  => Q8, 
        Q9  => Q9, 
        Q10 => Q10,
        Q11 => Q11,
        Q12 => Q12,
        Q13 => Q13,
        Q14 => Q14,
        Q15 => Q15,
        Q16 => Q16,
        Q17 => Q17,
        Q18 => Q18,
        Q19 => Q19,
        Q20 => Q20,
        Q21 => Q21,
        Q22 => Q22,
        Q23 => Q23,
        Q24 => Q24,
        Q25 => Q25,
        Q26 => Q26,
        Q27 => Q27,
        Q28 => Q28,
        Q29 => Q29,
        Q30 => Q30,
        Q31 => Q31,
        QTemp => QTemp,
        A => A
    );
    stim_proc: process
    begin
    
         wait for 10 ns;
            A <= "000000";
                     
         wait for 10 ns;
            A <= "000001";           
            
         wait for 10 ns;
            A <= "000010";
            
         wait for 10 ns;
            A <= "000011";
            
         wait for 10 ns;
            A <= "000100";
                     
         wait for 10 ns;
            A <= "000101";           
            
         wait for 10 ns;
            A <= "000110";
            
         wait for 10 ns;
            A <= "000111";
         
         wait for 10 ns;
            A <= "001000";
                     
         wait for 10 ns;
            A <= "001001";           
            
         wait for 10 ns;
            A <= "001010";
            
         wait for 10 ns;
            A <= "001011";
            
         wait for 10 ns;
            A <= "001100";
                     
         wait for 10 ns;
            A <= "001101";           
            
         wait for 10 ns;
            A <= "001110";
            
         wait for 10 ns;
            A <= "001111";
         
         wait for 10 ns;
            A <= "010000";
                     
         wait for 10 ns;
            A <= "010001";           
            
         wait for 10 ns;
            A <= "010010";
            
         wait for 10 ns;
            A <= "010011";
            
         wait for 10 ns;
            A <= "010100";
                     
         wait for 10 ns;
            A <= "010101";           
            
         wait for 10 ns;
            A <= "010110";
            
         wait for 10 ns;
            A <= "010111";
         
         wait for 10 ns;
            A <= "011000";
                     
         wait for 10 ns;
            A <= "011001";           
            
         wait for 10 ns;
            A <= "011010";
            
         wait for 10 ns;
            A <= "011011";
            
         wait for 10 ns;
            A <= "011100";
                     
         wait for 10 ns;
            A <= "011101";           
            
         wait for 10 ns;
            A <= "011110";
            
         wait for 10 ns;
            A <= "011111";
         
         wait for 10 ns;
            A <= "111111";
         
         wait for 10 ns;
            A <= "100000";
  end process;
end Behavioral;
