----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.11.2021 12:24:44
-- Design Name: 
-- Module Name: ripple_adder_32_bit_20334203_tb - Behavioral
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

entity CarryLookAheadAdder32Bit_20334203_tb is
--  Port ( );
end CarryLookAheadAdder32Bit_20334203_tb;

architecture Behavioral of CarryLookAheadAdder32Bit_20334203_tb is
    COMPONENT CarryLookAheadAdder32Bit_20334203
    PORT( A, B : in std_logic_vector(31 downto 0);
        S : out std_logic_vector(31 downto 0);
        C_in : in std_logic;
        C_out, V_out : out std_logic
        );
    END component;
    
    --inputs
    signal A, B : std_logic_vector(31 downto 0);
    signal C_in : std_logic;
    --outputs:
    signal S: std_logic_vector(31 downto 0);
    signal C_out, V_out : std_logic; 
    
begin
    uut : CarryLookAheadAdder32Bit_20334203 PORT MAP(
        A => A,
        B => B,
        S => S,
        C_in => C_in,
        C_out => C_out,
        V_out => V_out
    );
    stim_proc : process
        begin
       
        wait for 250 ns;
            A <= x"20334203";
            B <= x"00000001";
            C_in <= '0';
        
        wait for 250 ns;
            A <= x"20334203";
            B <= x"87654321";
            C_in <= '1';
        
        wait for 250 ns;
            A <= x"DFCCBDFD";
            B <= x"00000001";
            C_in <= '0';
            
        wait for 250 ns;
            A <= x"DFCCBDFD";
            B <= x"87654321";
            C_in <= '0';
            
        wait for 250 ns;
            A <= x"88888888";
            B <= x"77777777";
            C_in <= '1';    
                        
                        
        end process;

end Behavioral;
