----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2022 00:11:23
-- Design Name: 
-- Module Name: CarryLookAheadAdder32Bit_20334203 - Behavioral
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

entity CarryLookAheadAdder32Bit_20334203 is
    Port ( C_in : in std_logic;
        C_out : out std_logic;
        V_out : out std_logic;
        A, B : in std_logic_vector(31 downto 0);
        S : out std_logic_vector(31 downto 0) 
    );
end CarryLookAheadAdder32Bit_20334203;

architecture Behavioral of CarryLookAheadAdder32Bit_20334203 is
    COMPONENT CarryLookAheadAdder16Bit_20334203
    Port ( C_in : in std_logic;
        C_out, V_out, P_out, G_out : out std_logic;
        A, B : in std_logic_vector(15 downto 0);
        S : out std_logic_vector(15 downto 0) 
    );
    END COMPONENT;
    signal C : std_logic_vector(2 downto 0); 
    signal p, g : std_logic_vector(1 downto 0);
    
begin
    C(2) <= g(1) OR (p(1) AND g(0)) OR (p(0) AND p(1) AND C_in) after 2ns;
    C(1) <= g(0) OR (C_in AND p(0)) after 2ns;
    C(0) <= C_in;
    CLA0 : CarryLookAheadAdder16Bit_20334203 PORT MAP(
        A => A(15 downto 0),
        B => B(15 downto 0),
        C_in => C_in,
        S => S(15 downto 0),
        C_out => open,
        V_out => open,
        P_out => p(0),
        G_out => g(0)
    );  
    CLA1 : CarryLookAheadAdder16Bit_20334203 PORT MAP(
        A => A(31 downto 16),
        B => B(31 downto 16),
        C_in => C(1),
        S => S(31 downto 16),
        C_out => open,
        V_out => V_out,
        P_out => p(1),
        G_out => g(1)
    );
    C_out <= C(2);
end Behavioral;
