----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2021 18:47:25
-- Design Name: 
-- Module Name: Adder_Subtractor_Ripple_32_bit_20334203_tb - Behavioral
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

entity Adder_Subtractor_Ripple_32_bit_20334203_tb is
--  Port ( );
end Adder_Subtractor_Ripple_32_bit_20334203_tb;

architecture Behavioral of Adder_Subtractor_Ripple_32_bit_20334203_tb is
    COMPONENT Adder_Subtractor_Ripple_32_bit_20334203
    Port ( A, B : in std_logic_vector(31 downto 0);
           S_in : in std_logic_vector(1 downto 0);
           C_in : in std_logic;
           G_ar_out : out std_logic_vector(31 downto 0);
           C_out, V_out : out std_logic
    );
    END COMPONENT;
    
    signal A, B : std_logic_vector(31 downto 0);     
    signal S_in : std_logic_vector(1 downto 0);      
    signal C_in : std_logic;                         
    signal G_ar_out : std_logic_vector(31 downto 0);
    signal C_out, V_out : std_logic;               
begin
    uut : Adder_Subtractor_Ripple_32_bit_20334203 PORT MAP(
        A => A,
        B => B,
        C_in => C_in,
        G_ar_out => G_ar_out,
        S_in => S_in,
        C_out => C_out,
        V_out => V_out
        );
        stim_proc : process
        begin
            A <= x"20334203";
            B <= x"0AEAEAEA";
            wait for 250ns;
                S_in <= "00";
                C_in <= '0';
            wait for 250ns;
                S_in <= "00";
                C_in <= '1';
            wait for 250ns;
                S_in <= "01";
                C_in <= '0';
            wait for 250ns;
                S_in <= "01";
                C_in <= '1';
            wait for 250ns;
                S_in <= "10";
                C_in <= '0';
            wait for 250ns;
                S_in <= "10";
                C_in <= '1';
            wait for 250ns;
                S_in <= "11";
                C_in <= '0';
            wait for 250ns;
                S_in <= "11";
                C_in <= '1';
       
       end process;
end Behavioral;
