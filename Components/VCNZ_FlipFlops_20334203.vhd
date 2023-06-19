----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2021 14:13:11
-- Design Name: 
-- Module Name: VCNZ_FlipFlops_20334203 - Behavioral
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

entity VCNZ_FlipFlops_20334203 is
    Port ( reset : in std_logic_vector(3 downto 0);
        N, Z, C, V : in std_logic;
        FL : in std_logic;
        Clk : in std_logic;
        FL_OUT : out std_logic_vector(3 downto 0)
    );
end VCNZ_FlipFlops_20334203;

architecture Behavioral of VCNZ_FlipFlops_20334203 is

begin
process(Clk)
    begin
        if(rising_edge(Clk)) then
            if(FL = '1') then
                FL_OUT(3) <= V after 2ns;
                FL_OUT(2) <= C after 2ns;
                FL_OUT(1) <= N after 2ns;
                FL_OUT(0) <= Z after 2ns;
            end if;
            if(reset(3) = '1') then
                FL_OUT(3) <= '0' after 2ns;
            end if;
            if(reset(2) = '1') then
                FL_OUT(2) <= '0' after 2ns;
            end if;
            if(reset(1) = '1') then
                FL_OUT(1) <= '0' after 2ns;
            end if;
            if(reset(0) = '1') then
                FL_OUT(0) <= '0' after 2ns;
            end if;
        end if;
    end process;
end Behavioral;
