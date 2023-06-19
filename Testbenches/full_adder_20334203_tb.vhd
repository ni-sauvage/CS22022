----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.11.2021 12:00:49
-- Design Name: 
-- Module Name: full_adder_20334203_tb - Behavioral
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

entity full_adder_20334203_tb is
--  Port ( );
end full_adder_20334203_tb;

architecture Behavioral of full_adder_20334203_tb is
component full_adder_20334203
    PORT(X, Y, C_in : in std_logic;
        C_out, S : out std_logic  
     );
 END COMPONENT;
    --inputs
    signal X, Y, C_in : std_logic;
    --outputs
    signal S, C_out : std_logic;
begin
    uut: full_adder_20334203 PORT MAP(
        X => X,
        Y => Y,
        C_in => C_in,
        S => S,
        C_out => C_out
        );


    stim_proc : process
    begin
    
    
    wait for 20 ns;
        C_in <= '0';
        X <= '0';
        Y <= '0';
    
    wait for 20 ns;
        C_in <= '0';
        X <= '0';
        Y <= '1';
        
    wait for 20 ns;
        C_in <= '0';
        X <= '1';
        Y <= '0';
            
    wait for 20 ns;
        C_in <= '1';
        X <= '0';
        Y <= '0';
        
    wait for 20 ns;
        C_in <= '0';
        X <= '1';
        Y <= '1';
            
    wait for 20 ns;
        C_in <= '1';
        X <= '1';
        Y <= '0';
            
    wait for 20 ns;
        C_in <= '1';
        X <= '0';
        Y <= '1';
           
    wait for 20 ns;
        C_in <= '1';
        X <= '1';
        Y <= '1';
                    
    end process;
end Behavioral;
