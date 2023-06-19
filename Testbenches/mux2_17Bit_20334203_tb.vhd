----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.10.2021 13:27:27
-- Design Name: 
-- Module Name: mux2_32bit_tb - Behavioral
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

entity mux2_17Bit_20334203_tb is
end mux2_17Bit_20334203_tb;

architecture Behavioral of mux2_17Bit_20334203_tb is

    COMPONENT mux2_17Bit_20334203
    PORT(
        In0 : IN std_logic_vector(16 downto 0);
        In1 : IN std_logic_vector(16 downto 0);
        S : IN std_logic;
        Z : OUT std_logic_vector(16 downto 0)
        );
    END COMPONENT;
    
    --Inputs
    signal In0 : std_logic_vector(16 downto 0) := (others => '0');
    signal In1 : std_logic_vector(16 downto 0) := (others => '0');
    signal S : std_logic;
    
    --Outputs
    signal Z : std_logic_vector(16 downto 0);    
BEGIN

    uut: mux2_17Bit_20334203 PORT MAP(
        In0 => In0,
        In1 => In1,
        S => S,
        Z => Z
      );
      stim_proc: process
      
      begin
        In0 <= "01010101010101010";
        In1 <= "10101010101010101";
        wait for 100 ns;
            S <= '0';
        
        wait for 100 ns;
            S <= '1';
            
     end process;
      
end Behavioral;
