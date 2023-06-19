----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2021 17:22:07
-- Design Name: 
-- Module Name: LogicCircuit_32bit_20334203_tb - Behavioral
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

entity LogicCircuit_32bit_20334203_tb is
--  Port ( );
end LogicCircuit_32bit_20334203_tb;

architecture Behavioral of LogicCircuit_32bit_20334203_tb is
    COMPONENT LogicCircuit_32bit_20334203
    Port ( S_in : in std_logic_vector(1 downto 0);
            A, B : in std_logic_vector(31 downto 0);
            G_log_out : out std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    --signals:
    --inputs
    signal A, B : std_logic_vector(31 downto 0);
    signal S_in : std_logic_vector(1 downto 0);
    --outputs
    signal G_log_out : std_logic_vector(31 downto 0);

begin
    uut: LogicCircuit_32bit_20334203 PORT MAP(
        A => A,
        B => B,
        S_in => S_in,
        G_log_out => G_log_out
        );
        stim_proc : process
        begin
            wait for 250ns;
                A <= x"20334203";
                B <= x"0EAEAEAE";
                S_in <= "00";
            wait for 250ns;
                A <= x"20334203";
                B <= x"0EAEAEAE";
                S_in <= "01";
            wait for 250ns;
                A <= x"20334203";
                B <= x"0EAEAEAE";
                S_in <= "10";
            wait for 250ns;
                A <= x"20334203";
                B <= x"0EAEAEAE";
                S_in <= "11";
        end process;
end Behavioral;
