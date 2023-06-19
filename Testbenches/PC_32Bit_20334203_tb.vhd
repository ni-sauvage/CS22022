----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2021 23:15:58
-- Design Name: 
-- Module Name: PC_32Bit_20334203_tb - Behavioral
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

entity PC_32Bit_20334203_tb is
--  Port ( );
end PC_32Bit_20334203_tb;

architecture Behavioral of PC_32Bit_20334203_tb is
    COMPONENT PC_32Bit_20334203
    Port ( 
        Clk, PI, PL, reset : in std_logic;
        extended_inp : in std_logic_vector(31 downto 0);
        counter : inout std_logic_vector (31 downto 0)
    );
    END COMPONENT;
    signal Clk : std_logic := '1';
    signal PI, PL, reset : std_logic;
    signal extended_inp : std_logic_vector(31 downto 0);
    signal counter : std_logic_vector (31 downto 0);
begin
    Clk <= not Clk after 160ns;
    uut : PC_32Bit_20334203 PORT MAP(
        Clk => Clk,
        extended_inp => extended_inp,
        PI => PI,
        PL => PL,
        reset => reset,
        counter => counter
        );
    stim_proc : process
    begin
        wait for 350ns;
            reset <= '0';
        wait for 350ns;
            extended_inp <= x"F0000000";
            PL <= '1';
        wait for 350ns;
            PL <= '0';
            PI <= '1';
        wait for 350ns;
            reset <= '1';
    end process;
end Behavioral;
