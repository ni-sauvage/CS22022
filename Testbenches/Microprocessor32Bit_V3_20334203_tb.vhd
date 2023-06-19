----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.01.2022 23:39:02
-- Design Name: 
-- Module Name: Microprocessor32Bit_V3_20334203_tb - Behavioral
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

entity Microprocessor32Bit_V3_20334203_tb is
--  Port ( );
end Microprocessor32Bit_V3_20334203_tb;

architecture Behavioral of Microprocessor32Bit_V3_20334203_tb is
    COMPONENT Microprocessor32Bit_V3_20334203 is
    Port (reset : in std_logic;
        Clk : in std_logic;
        Bus_D : inout std_logic_vector(31 downto 0)
    );
    END COMPONENT;
    signal reset : std_logic := '1';
    signal Clk : std_logic := '1';
    signal Bus_D : std_logic_vector(31 downto 0);

begin
    uut : Microprocessor32Bit_V3_20334203 PORT MAP(
        Bus_D => Bus_D,
        Clk => Clk,
        reset => reset
    );
    Clk <= not Clk after 160ns;
    stim_proc : process
    begin
        wait for 300ns;
            reset <= '0';
        wait for 100000ns;
            reset <= '1';
    end process;
end Behavioral;
