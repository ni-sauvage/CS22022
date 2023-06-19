----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2021 18:06:58
-- Design Name: 
-- Module Name: B_input_logic_20334203 - Behavioral
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

entity B_input_logic_20334203 is
    Port ( B : in std_logic_vector(31 downto 0);
        S_in : in std_logic_vector(1 downto 0);
        Y : out std_logic_vector(31 downto 0)
    );
end B_input_logic_20334203;

architecture Behavioral of B_input_logic_20334203 is

begin
    Y(0) <= (B(0) AND S_in(0)) OR ((NOT B(0)) AND S_in(1));
    Y(1) <= (B(1) AND S_in(0)) OR ((NOT B(1)) AND S_in(1));
    Y(2) <= (B(2) AND S_in(0)) OR ((NOT B(2)) AND S_in(1));
    Y(3) <= (B(3) AND S_in(0)) OR ((NOT B(3)) AND S_in(1));
    Y(4) <= (B(4) AND S_in(0)) OR ((NOT B(4)) AND S_in(1));
    Y(5) <= (B(5) AND S_in(0)) OR ((NOT B(5)) AND S_in(1));
    Y(6) <= (B(6) AND S_in(0)) OR ((NOT B(6)) AND S_in(1));
    Y(7) <= (B(7) AND S_in(0)) OR ((NOT B(7)) AND S_in(1));
    Y(8) <= (B(8) AND S_in(0)) OR ((NOT B(8)) AND S_in(1));
    Y(9) <= (B(9) AND S_in(0)) OR ((NOT B(9)) AND S_in(1));
    Y(10) <= (B(10) AND S_in(0)) OR ((NOT B(10)) AND S_in(1));
    Y(11) <= (B(11) AND S_in(0)) OR ((NOT B(11)) AND S_in(1));
    Y(12) <= (B(12) AND S_in(0)) OR ((NOT B(12)) AND S_in(1));
    Y(13) <= (B(13) AND S_in(0)) OR ((NOT B(13)) AND S_in(1));
    Y(14) <= (B(14) AND S_in(0)) OR ((NOT B(14)) AND S_in(1));
    Y(15) <= (B(15) AND S_in(0)) OR ((NOT B(15)) AND S_in(1));
    Y(16) <= (B(16) AND S_in(0)) OR ((NOT B(16)) AND S_in(1));
    Y(17) <= (B(17) AND S_in(0)) OR ((NOT B(17)) AND S_in(1));
    Y(18) <= (B(18) AND S_in(0)) OR ((NOT B(18)) AND S_in(1));
    Y(19) <= (B(19) AND S_in(0)) OR ((NOT B(19)) AND S_in(1));
    Y(20) <= (B(20) AND S_in(0)) OR ((NOT B(20)) AND S_in(1));
    Y(21) <= (B(21) AND S_in(0)) OR ((NOT B(21)) AND S_in(1));
    Y(22) <= (B(22) AND S_in(0)) OR ((NOT B(22)) AND S_in(1));
    Y(23) <= (B(23) AND S_in(0)) OR ((NOT B(23)) AND S_in(1));
    Y(24) <= (B(24) AND S_in(0)) OR ((NOT B(24)) AND S_in(1));
    Y(25) <= (B(25) AND S_in(0)) OR ((NOT B(25)) AND S_in(1));
    Y(26) <= (B(26) AND S_in(0)) OR ((NOT B(26)) AND S_in(1));
    Y(27) <= (B(27) AND S_in(0)) OR ((NOT B(27)) AND S_in(1));
    Y(28) <= (B(28) AND S_in(0)) OR ((NOT B(28)) AND S_in(1));
    Y(29) <= (B(29) AND S_in(0)) OR ((NOT B(29)) AND S_in(1));
    Y(30) <= (B(30) AND S_in(0)) OR ((NOT B(30)) AND S_in(1));
    Y(31) <= (B(31) AND S_in(0)) OR ((NOT B(31)) AND S_in(1));
    
end Behavioral;
