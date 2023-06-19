----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2021 14:39:19
-- Design Name: 
-- Module Name: functional_unit_20334203_tb - Behavioral
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

entity functional_unit_20334203_tb is
--  Port ( );
end functional_unit_20334203_tb;

architecture Behavioral of functional_unit_20334203_tb is
    COMPONENT functional_unit_20334203
    Port (A, B : in std_logic_vector(31 downto 0);
        FS : in std_logic_vector(4 downto 0);
        N, Z, C, V : out std_logic;
        F : out std_logic_vector(31 downto 0)
    );
    END COMPONENT;
    
    --inputs
    signal A, B : std_logic_vector(31 downto 0);
    signal FS : std_logic_vector(4 downto 0);
    --outputs
    signal N, Z, C, V : std_logic;
    signal F : std_logic_vector(31 downto 0);

begin
    uut : functional_unit_20334203 PORT MAP(
        A => A,
        B => B,
        C => C,
        Z => Z,
        N => N,
        FS => FS,
        V => V,
        F => F
        );
    stim_proc : process
    begin
        wait for 250ns;
            FS <= "00100";
            A <= x"20334203";
            B <= x"20334206";
            
        wait for 250ns;
            FS <= "01010";
            A <= x"20334203";
            B <= x"20334206";
            
        wait for 250ns;
            FS <= "00011";
            A <= x"20334203";
            B <= x"20334206";
            
        wait for 250ns;
            FS <= "01100";
            A <= x"20334203";
            B <= x"20334206";
        
        wait for 250ns;
            FS <= "00010";
            A <= x"20334203";
            B <= x"20334206";
            
        wait for 250ns;
            FS <= "11000";
            A <= x"20334203";
            B <= x"20334206";
        
        wait for 250ns;
            FS <= "00000";
            A <= x"20334203";
            B <= x"20334206";
        
        wait for 250ns;
            FS <= "10000";
            A <= x"20334203";
            B <= x"20334206";
            
        wait for 250ns;
            FS <= "00001";
            A <= x"20334203";
            B <= x"20334206";
            
        wait for 250ns;
            FS <= "00101";
            A <= x"20334203";
            B <= x"20334206";
            
        wait for 250ns;
            FS <= "00110";
            A <= x"20334203";
            B <= x"20334206";
        
        wait for 250ns;
            FS <= "01110";
            A <= x"20334203";
            B <= x"20334206";
        
        wait for 250ns;
            FS <= "01000";
            A <= x"20334203";
            B <= x"20334206";
            
        wait for 250ns;
            FS <= "10100";
            A <= x"20334203";
            B <= x"20334206";
        
        wait for 250ns;
            FS <= "00111";
            A <= x"20334203";
            B <= x"20334206";
            
       --showing negative and zero detect
       wait for 250ns;
           FS <= "00000";
           A <= x"00000000";
           
       wait for 250ns;
          FS <= "00000";
          A <= x"FFFFFFFF";
            
    end process;
end Behavioral;
