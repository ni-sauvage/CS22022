----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.10.2021 16:14:32
-- Design Name: 
-- Module Name: reg32_20334203_tb - Behavioral
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

entity reg32_20334203_tb is
end reg32_20334203_tb;

architecture Behavioral of reg32_20334203_tb is
    COMPONENT reg32_20334203
    PORT (
        D: IN std_logic_vector(31 downto 0);
        load: IN std_logic;
        Clk: IN std_logic;
        Q: OUT std_logic_vector(31 downto 0)
    );
    END COMPONENT;
    
    --Inputs
    signal D: std_logic_vector(31 downto 0) := (others => '0');
    signal load: std_logic;
    signal Clk: std_logic := '0';
    
    --Outputs
    signal Q: std_logic_vector(31 downto 0) := (others => '0');
BEGIN
    uut: reg32_20334203 PORT MAP (
        D => D,
        load => load,
        Clk => Clk,
        Q => Q
    );
    Clk <= not Clk after 20ns;
    stim_proc:process
    begin
    wait for 100 ns;
        D <= x"20334203";
        load <= '1';
        
    wait for 100 ns;
        D <= x"00000000";
        load <= '1';
        
    wait for 100 ns;
        D <= x"20334203";
        load <= '1';
    
    wait for 100 ns;
        D <= x"00000000";
        load <= '1';
        
    end process;
end Behavioral;
