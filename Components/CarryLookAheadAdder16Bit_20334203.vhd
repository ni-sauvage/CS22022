----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2022 01:57:41
-- Design Name: 
-- Module Name: CarryLookAheadAdder16Bit_20334203 - Behavioral
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

entity CarryLookAheadAdder16Bit_20334203 is
    Port ( C_in : in std_logic;
        C_out, V_out, P_out, G_out : out std_logic;
        A, B : in std_logic_vector(15 downto 0);
        S : out std_logic_vector(15 downto 0) 
    );
end CarryLookAheadAdder16Bit_20334203;

architecture Behavioral of CarryLookAheadAdder16Bit_20334203 is
    signal C : std_logic_vector(4 downto 0); 
    signal p, g : std_logic_vector(3 downto 0);
    
    COMPONENT CarryLookAheadAdder4Bit_20334203
    Port ( C_in : in std_logic;
        C_out, V_out, P_out, G_out : out std_logic;
        A, B : in std_logic_vector(3 downto 0);
        S : out std_logic_vector(3 downto 0) 
    );
    END COMPONENT;

begin
    G_out <= g(3) OR (p(3) AND g(2)) OR (p(2) AND p(3) AND g(1)) OR (p(1) AND p(2) AND p(3) AND g(0)) after 2ns;
    C(4) <= g(3) OR (p(3) AND g(2)) OR (p(2) AND p(3) AND g(1)) OR (p(1) AND p(2) AND p(3) AND g(0)) OR (p(0) AND p(1) AND p(2) AND p(3) AND C_in) after 2ns; 
    C(3) <= g(2) OR (p(2) AND g(1)) OR (p(1) AND p(2) AND g(0)) OR (p(0) AND p(1) AND p(2) AND C_in) after 2ns;
    C(2) <= g(1) OR (p(1) AND g(0)) OR (p(0) AND p(1) AND C_in) after 2ns;
    C(1) <= g(0) OR (C_in AND p(0)) after 2ns;
    C(0) <= C_in;
    P_out <= p(3) AND p(2) AND p(1) AND p(0);
    CLA0 : CarryLookAheadAdder4Bit_20334203 PORT MAP(
       A => A(3 downto 0),
       B => B(3 downto 0),
       C_in => C_in,
       S => S(3 downto 0),
       C_out => open,
       V_out => open,
       P_out => p(0),
       G_out => g(0)
       );

    CLA1 : CarryLookAheadAdder4Bit_20334203 PORT MAP(
       A => A(7 downto 4),
       B => B(7 downto 4),
       C_in => C(1),   
       S => S(7 downto 4),
       C_out => open,
       V_out => open,
       P_out => p(1),
       G_out => g(1)
       );
             
    CLA2 : CarryLookAheadAdder4Bit_20334203 PORT MAP(
       A => A(11 downto 8),
       B => B(11 downto 8),
       C_in => C(2),
       S => S(11 downto 8),
       C_out => open,
       V_out => open,
       P_out => p(2),
       G_out => g(2)
       );
               
    CLA3 : CarryLookAheadAdder4Bit_20334203 PORT MAP(
       A => A(15 downto 12),
       B => B(15 downto 12),
       C_in => C(3),
       S => S(15 downto 12),
       C_out => open,
       V_out => V_out,
       P_out => p(3),
       G_out => g(3)
       );
    C_out <= C(4);
    
end Behavioral;