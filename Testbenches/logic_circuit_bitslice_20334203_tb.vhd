----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.11.2021 12:18:00
-- Design Name: 
-- Module Name: logic_circuit_bitslice_20334203_tb - Behavioral
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

entity logic_circuit_bitslice_20334203_tb is
--  Port ( );
end logic_circuit_bitslice_20334203_tb;

architecture Behavioral of logic_circuit_bitslice_20334203_tb is
    COMPONENT logic_circuit_bitslice_20334203
    Port ( S_in : in std_logic_vector(1 downto 0);
        A, B : in std_logic;
        G_log_out : out std_logic
    );
    END COMPONENT;
    
    --inputs
    signal S_in : std_logic_vector(1 downto 0);
    signal A, B : std_logic;
    --output
    signal G_log_out : std_logic;

begin

    uut: logic_circuit_bitslice_20334203 PORT MAP(
        S_in => S_in,
        A => A,
        B => B,
        G_log_out => G_log_out
        );
    stim_proc : process
    begin
    wait for 10 ns;
        A <= '0';
        B <= '0';
        S_in <= "00";
  
    wait for 10 ns;
        A <= '1';
        B <= '0';
        S_in <= "00";
        
    wait for 10 ns;
        A <= '0';
        B <= '1';
        S_in <= "00";
  
    wait for 10 ns;
        A <= '1';
        B <= '1';
        S_in <= "00";
        
    wait for 10 ns;
        A <= '0';
        B <= '0';
        S_in <= "01";
  
    wait for 10 ns;
        A <= '1';
        B <= '0';
        S_in <= "01";
        
    wait for 10 ns;
        A <= '0';
        B <= '1';
        S_in <= "01";
  
    wait for 10 ns;
        A <= '1';
        B <= '1';
        S_in <= "01";
            
    wait for 10 ns;
        A <= '0';
        B <= '0';
        S_in <= "10";    
        
    wait for 10 ns;
        A <= '1';
        B <= '0';
        S_in <= "10";
  
    wait for 10 ns;
        A <= '0';
        B <= '1';
        S_in <= "10";
        
    wait for 10 ns;
        A <= '1';
        B <= '1';
        S_in <= "10";
  
    wait for 10 ns;
        A <= '0';
        B <= '0';
        S_in <= "11";
        
    wait for 10 ns;
        A <= '1';
        B <= '0';
        S_in <= "11";
  
    wait for 10 ns;
        A <= '0';
        B <= '1';
        S_in <= "11";
        
    wait for 10 ns;
        A <= '1';
        B <= '1';
        S_in <= "11";

    end process;
end Behavioral;
