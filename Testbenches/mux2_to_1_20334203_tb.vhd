----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.11.2021 13:28:44
-- Design Name: 
-- Module Name: mux2_to_1_20334203_tb - Behavioral
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

entity mux2_to_1_20334203_tb is
--  Port ( );
end mux2_to_1_20334203_tb;

architecture Behavioral of mux2_to_1_20334203_tb is
    COMPONENT mux2_to_1_20334203
    Port ( in0, in1, S: in std_logic; 
        G : out std_logic
    );
    END COMPONENT;
    --inputs
    signal in0, in1, S: std_logic;
    signal G : std_logic;
begin
    uut : mux2_to_1_20334203 PORT MAP(
        in0 => in0,
        in1 => in1,
        S => S,
        G => G
    );
    stim_proc : process
    begin
        wait for 250ns;
            in0 <= '0';
            in1 <= '1';
            S <= '1';
        
        wait for 250ns;
            in0 <= '0';
            in1 <= '1';
            S <= '0';
    
    end process;
end Behavioral;
