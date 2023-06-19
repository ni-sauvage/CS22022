----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.11.2021 13:36:34
-- Design Name: 
-- Module Name: ALU_20334203_tb - Behavioral
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

entity ALU_20334203_tb is
--  Port ( );
end ALU_20334203_tb;

architecture Behavioral of ALU_20334203_tb is
    COMPONENT ALU_20334203
    Port (A, B : in std_logic_vector(31 downto 0);
        G_S : in std_logic_vector(3 downto 0);
        G_out : out std_logic_vector(31 downto 0);
        C_out : out std_logic;
        V_out : out std_logic
    );
    END COMPONENT;
    --inputs
    signal A, B : std_logic_vector(31 downto 0);
    signal G_S : std_logic_vector(3 downto 0);
    --outputs
    signal G_out : std_logic_vector(31 downto 0);
    signal C_out, V_out : std_logic;
begin
    uut : ALU_20334203 PORT MAP(
        A => A,
        B => B,
        G_S => G_S,
        G_out => G_out,
        C_out => C_out,
        V_out => V_out
    );
    stim_proc : process
    begin
        wait for 250ns;
            G_S <= "0000";
            A <= x"20334203";
            B <= x"43219876";
            
        wait for 250ns;
            G_S <= "0001";
            A <= x"20334203";
            B <= x"43219876";
            
        wait for 250ns;
            G_S <= "0010";
            A <= x"20334203";
            B <= x"43219876";
            
        wait for 250ns;
            G_S <= "0011";
            A <= x"20334203";
            B <= x"43219876";
        
        wait for 250ns;
            G_S <= "0100";
            A <= x"20334203";
            B <= x"43219876";
            
        wait for 250ns;
            G_S <= "0101";
            A <= x"20334203";
            B <= x"43219876";
        
        wait for 250ns;
            G_S <= "0110";
            A <= x"20334203";
            B <= x"43219876";
        
        wait for 250ns;
            G_S <= "0111";
            A <= x"20334203";
            B <= x"43219876";
            
        wait for 250ns;
            G_S <= "1000";
            A <= x"20334203";
            B <= x"43219876";
            
        wait for 250ns;
            G_S <= "1010";
            A <= x"20334203";
            B <= x"43219876";
            
        wait for 250ns;
            G_S <= "1100";
            A <= x"20334203";
            B <= x"43219876";
        
        wait for 250ns;
            G_S <= "1110";
            A <= x"20334203";
            B <= x"43219876";
            
    end process;
end Behavioral;
