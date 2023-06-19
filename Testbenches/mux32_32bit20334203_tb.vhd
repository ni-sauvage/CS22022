----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.10.2021 13:53:02
-- Design Name: 
-- Module Name: mux32_32bit_tb - Behavioral
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

entity mux32_32bit20334203_tb is
--  Port ( );
end mux32_32bit20334203_tb;

architecture Behavioral of mux32_32bit20334203_tb is
    COMPONENT mux32_32bit20334203
    PORT(
        In0  : IN std_logic_vector(31 downto 0);
        In1  : IN std_logic_vector(31 downto 0);
        In2  : IN std_logic_vector(31 downto 0);
        In3  : IN std_logic_vector(31 downto 0);
        In4  : IN std_logic_vector(31 downto 0);
        In5  : IN std_logic_vector(31 downto 0);
        In6  : IN std_logic_vector(31 downto 0);
        In7  : IN std_logic_vector(31 downto 0);
        In8  : IN std_logic_vector(31 downto 0);
        In9  : IN std_logic_vector(31 downto 0);
        In10 : IN std_logic_vector(31 downto 0);
        In11 : IN std_logic_vector(31 downto 0);
        In12 : IN std_logic_vector(31 downto 0);
        In13 : IN std_logic_vector(31 downto 0);
        In14 : IN std_logic_vector(31 downto 0);
        In15 : IN std_logic_vector(31 downto 0);
        In16 : IN std_logic_vector(31 downto 0);
        In17 : IN std_logic_vector(31 downto 0);
        In18 : IN std_logic_vector(31 downto 0);
        In19 : IN std_logic_vector(31 downto 0);
        In20 : IN std_logic_vector(31 downto 0);
        In21 : IN std_logic_vector(31 downto 0);
        In22 : IN std_logic_vector(31 downto 0);
        In23 : IN std_logic_vector(31 downto 0);
        In24 : IN std_logic_vector(31 downto 0);
        In25 : IN std_logic_vector(31 downto 0);
        In26 : IN std_logic_vector(31 downto 0);
        In27 : IN std_logic_vector(31 downto 0);
        In28 : IN std_logic_vector(31 downto 0);
        In29 : IN std_logic_vector(31 downto 0);
        In30 : IN std_logic_vector(31 downto 0);
        In31 : IN std_logic_vector(31 downto 0);
        InTemp : IN std_logic_vector(31 downto 0);
        S : IN std_logic_vector(5 downto 0);

        z : OUT std_logic_vector(31 downto 0)
        );
     END COMPONENT;
     
     --Inputs
     signal S : std_logic_vector(5 downto 0);
     signal In0  : std_logic_vector(31 downto 0) := (others => '0');  
     signal In1  : std_logic_vector(31 downto 0) := (others => '0');  
     signal In2  : std_logic_vector(31 downto 0) := (others => '0');  
     signal In3  : std_logic_vector(31 downto 0) := (others => '0');  
     signal In4  : std_logic_vector(31 downto 0) := (others => '0');  
     signal In5  : std_logic_vector(31 downto 0) := (others => '0');
     signal In6  : std_logic_vector(31 downto 0) := (others => '0');
     signal In7  : std_logic_vector(31 downto 0) := (others => '0');
     signal In8  : std_logic_vector(31 downto 0) := (others => '0');
     signal In9  : std_logic_vector(31 downto 0) := (others => '0');
     signal In10 : std_logic_vector(31 downto 0) := (others => '0');
     signal In11 : std_logic_vector(31 downto 0) := (others => '0');
     signal In12 : std_logic_vector(31 downto 0) := (others => '0');
     signal In13 : std_logic_vector(31 downto 0) := (others => '0');
     signal In14 : std_logic_vector(31 downto 0) := (others => '0');
     signal In15 : std_logic_vector(31 downto 0) := (others => '0');
     signal In16 : std_logic_vector(31 downto 0) := (others => '0');
     signal In17 : std_logic_vector(31 downto 0) := (others => '0');
     signal In18 : std_logic_vector(31 downto 0) := (others => '0');
     signal In19 : std_logic_vector(31 downto 0) := (others => '0');
     signal In20 : std_logic_vector(31 downto 0) := (others => '0');
     signal In21 : std_logic_vector(31 downto 0) := (others => '0');
     signal In22 : std_logic_vector(31 downto 0) := (others => '0');
     signal In23 : std_logic_vector(31 downto 0) := (others => '0');
     signal In24 : std_logic_vector(31 downto 0) := (others => '0');
     signal In25 : std_logic_vector(31 downto 0) := (others => '0');
     signal In26 : std_logic_vector(31 downto 0) := (others => '0');
     signal In27 : std_logic_vector(31 downto 0) := (others => '0');
     signal In28 : std_logic_vector(31 downto 0) := (others => '0');
     signal In29 : std_logic_vector(31 downto 0) := (others => '0');
     signal In30 : std_logic_vector(31 downto 0) := (others => '0');
     signal In31 : std_logic_vector(31 downto 0) := (others => '0');
     signal InTemp : std_logic_vector(31 downto 0) := (others => '0');
    --Outputs
    signal z : std_logic_vector(31 downto 0);
BEGIN
    uut: mux32_32bit20334203 PORT MAP (
        In0  => In0,
        In1  => In1,
        In2  => In2,
        In3  => In3,
        In4  => In4,
        In5  => In5,
        In6  => In6,
        In7  => In7,
        In8  => In8,
        In9  => In9,
        In10 => In10,
        In11 => In11,
        In12 => In12,
        In13 => In13,
        In14 => In14,
        In15 => In15,
        In16 => In16,
        In17 => In17,
        In18 => In18,
        In19 => In19,
        In20 => In20,
        In21 => In21,
        In22 => In22,
        In23 => In23,
        In24 => In24,
        In25 => In25,
        In26 => In26,
        In27 => In27,
        In28 => In28,
        In29 => In29,
        In30 => In30,
        In31 => In31,
        InTemp => InTemp,
        S => S,
        z => z
     );
     
     stim_proc: process
     begin
        In0  <= x"20334203"; --20334203
        In1  <= x"20334202";
        In2  <= x"20334201";
        In3  <= x"20334200";
        In4  <= x"2033419F";
        In5  <= x"2033419E";
        In6  <= x"2033419D";
        In7  <= x"2033419C";
        In8  <= x"2033419B";
        In9  <= x"2033419A";
        In10 <= x"20334199";
        In11 <= x"20334198";
        In12 <= x"20334197";
        In13 <= x"20334196";
        In14 <= x"20334195";
        In15 <= x"20334194";
        In16 <= x"20334193";
        In17 <= x"20334192";
        In18 <= x"20334191";
        In19 <= x"20334190";
        In20 <= x"2033418F";
        In21 <= x"2033418E";
        In22 <= x"2033418D";
        In23 <= x"2033418C";
        In24 <= x"2033418B";
        In25 <= x"2033418A";
        In26 <= x"20334189";
        In27 <= x"20334188";
        In28 <= x"20334187";
        In29 <= x"20334186";
        In30 <= x"20334185";
        In31 <= x"20334184";
        InTemp <=x"20334183";
        
         wait for 10 ns;
            S <= "000000";
                     
         wait for 10 ns;
            S <= "000001";           
            
         wait for 10 ns;
            S <= "000010";
            
         wait for 10 ns;
            S <= "000011";
            
         wait for 10 ns;
            S <= "000100";
                     
         wait for 10 ns;
            S <= "000101";           
            
         wait for 10 ns;
            S <= "000110";
            
         wait for 10 ns;
            S <= "000111";
         
         wait for 10 ns;
            S <= "001000";
                     
         wait for 10 ns;
            S <= "001001";           
            
         wait for 10 ns;
            S <= "001010";
            
         wait for 10 ns;
            S <= "001011";
            
         wait for 10 ns;
            S <= "001100";
                     
         wait for 10 ns;
            S <= "001101";           
            
         wait for 10 ns;
            S <= "001110";
            
         wait for 10 ns;
            S <= "001111";
         
         wait for 10 ns;
            S <= "010000";
                     
         wait for 10 ns;
            S <= "010001";           
            
         wait for 10 ns;
            S <= "010010";
            
         wait for 10 ns;
            S <= "010011";
            
         wait for 10 ns;
            S <= "010100";
                     
         wait for 10 ns;
            S <= "010101";           
            
         wait for 10 ns;
            S <= "010110";
            
         wait for 10 ns;
            S <= "010111";
         
         wait for 10 ns;
            S <= "011000";
                     
         wait for 10 ns;
            S <= "011001";           
            
         wait for 10 ns;
            S <= "011010";
            
         wait for 10 ns;
            S <= "011011";
            
         wait for 10 ns;
            S <= "011100";
                     
         wait for 10 ns;
            S <= "011101";           
            
         wait for 10 ns;
            S <= "011110";
            
         wait for 10 ns;
            S <= "011111";
         
         wait for 10 ns;
            S <= "100000";
         
         wait for 10 ns;
            S <= "100001";
                
    end process;

end Behavioral;
