----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.11.2021 14:15:41
-- Design Name: 
-- Module Name: shifter_mux_20334203 - Behavioral
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

entity shifter_mux_20334203 is
    PORT( in0, in1, in2 : in std_logic;
        S : in std_logic_vector(1 downto 0);
        G : out std_logic
    );
end shifter_mux_20334203;

architecture Behavioral of shifter_mux_20334203 is

begin
    G <= in0 when S = "00" else
        in1 when S = "01"  else
        in2 when S = "10";

end Behavioral;
