----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2021 18:15:32
-- Design Name: 
-- Module Name: CAR17Bit_20334203_tb - Behavioral
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

entity CAR17Bit_20334203_tb is
--  Port ( );
end CAR17Bit_20334203_tb;

architecture Behavioral of CAR17Bit_20334203_tb is
    COMPONENT CAR17Bit_20334203
        Port ( 
            LAddr : in std_logic_vector(16 downto 0);
            Clk, L_S, reset : in std_logic;
            Addr_out : inout std_logic_vector(16 downto 0)
        );
    END COMPONENT;
    signal LAddr : std_logic_vector(16 downto 0);
    signal Clk : std_logic := '1';
    signal L_S : std_logic;
    signal reset : std_logic := '0';
    signal Addr_out : std_logic_vector(16 downto 0);

begin
    uut : CAR17Bit_20334203 PORT MAP(
        LAddr => LAddr,
        Clk => Clk,
        L_S => L_S,
        Addr_out => Addr_out,
        reset => reset
        );
    Clk <= not Clk after 160ns;
    stim_proc : process
    begin
        
        wait for 350ns;
            LAddr <= "00000000010000000";
            L_S <= '1';
        wait for 350ns;
            reset <= '1';
        wait for 350ns;
            reset <= '0';
            L_S <= '0';
        wait for 1000ns;
    end process;
end Behavioral;
