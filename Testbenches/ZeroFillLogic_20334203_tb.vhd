----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2021 18:45:39
-- Design Name: 
-- Module Name: ZeroFillLogic_20334203_tb - Behavioral
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

entity ZeroFillLogic_20334203_tb is
--  Port ( );
end ZeroFillLogic_20334203_tb;

architecture Behavioral of ZeroFillLogic_20334203_tb is
   signal SB : std_logic_vector(4 downto 0);
   signal operand : std_logic_vector(31 downto 0);
   COMPONENT ZeroFillLogic_20334203
   PORT(
    SB : in std_logic_vector(4 downto 0);
    operand : out std_logic_vector(31 downto 0)
   );
   END COMPONENT;
begin
    uut : ZeroFillLogic_20334203 PORT MAP(
        SB => SB,
        operand => operand
        );
        stim_proc : process
        begin
        wait for 350ns;
            SB <= "11111";
        wait for 350ns;
            SB <= "00000";
        wait for 350ns;
            SB <= "00111";
    end process;
end Behavioral;

