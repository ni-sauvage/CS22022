----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2021 22:30:34
-- Design Name: 
-- Module Name: IR32Bit_20334203_tb - Behavioral
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

entity IR32Bit_20334203_tb is
--  Port ( );
end IR32Bit_20334203_tb;

architecture Behavioral of IR32Bit_20334203_tb is
    COMPONENT IR32Bit_20334203
    Port (
        instr : in std_logic_vector(31 downto 0);
        Clk, IL : in std_logic;
        DR, SA, SB : out std_logic_vector(4 downto 0);
        instr_out : out std_logic_vector(16 downto 0)
    );
    END COMPONENT;
    signal instr : std_logic_vector(31 downto 0);
    signal Clk : std_logic := '1';
    signal IL : std_logic;
    signal DR, SA, SB : std_logic_vector(4 downto 0);
    signal instr_out : std_logic_vector(16 downto 0);
begin
    Clk <= not Clk after 160ns;
    uut : IR32Bit_20334203 PORT MAP(
        instr => instr,
        CLk => Clk,
        IL => IL,
        DR => DR,
        SA => SA,
        SB => SB,
        instr_out => instr_out
        );
    stim_proc : process
    begin
    wait for 350ns;
        instr <= "10000000000000001101011010110101";
        IL <= '0';
    wait for 350ns;
        IL <= '1'; 
    end process;
end Behavioral;
