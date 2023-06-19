----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2022 01:32:30
-- Design Name: 
-- Module Name: CarryLookAheadAdder4Bit_20334203 - Behavioral
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

entity CarryLookAheadAdder4Bit_20334203 is
    Port ( C_in : in std_logic;
        C_out, V_out, P_out, G_out : out std_logic;
        A, B : in std_logic_vector(3 downto 0);
        S : out std_logic_vector(3 downto 0) 
    );
end CarryLookAheadAdder4Bit_20334203;

architecture Behavioral of CarryLookAheadAdder4Bit_20334203 is
    signal C : std_logic_vector(4 downto 0); 
    signal p, g : std_logic_vector(3 downto 0);
    
    COMPONENT full_adder_20334203
    PORT(X, Y, C_in : in std_logic;
        S, C_out : out std_logic
    );
    END COMPONENT;

begin
    g(3) <= A(3) AND B(3);
    g(2) <= A(2) AND B(2);
    g(1) <= A(1) AND B(1);
    g(0) <= A(0) AND B(0);
    p(3) <= A(3) OR B(3);
    p(2) <= A(2) OR B(2);
    p(1) <= A(1) OR B(1);
    p(0) <= A(0) OR B(0);
    G_out <= g(3) OR (p(3) AND g(2)) OR (p(2) AND p(3) AND g(1)) OR (p(1) AND p(2) AND p(3) AND g(0)) after 2ns;
    C(4) <= g(3) OR (p(3) AND g(2)) OR (p(2) AND p(3) AND g(1)) OR (p(1) AND p(2) AND p(3) AND g(0)) OR (p(0) AND p(1) AND p(2) AND p(3) AND C_in) after 2ns; 
    C(3) <= g(2) OR (p(2) AND g(1)) OR (p(1) AND p(2) AND g(0)) OR (p(0) AND p(1) AND p(2) AND C_in) after 2ns;
    C(2) <= g(1) OR (p(1) AND g(0)) OR (p(0) AND p(1) AND C_in) after 2ns;
    C(1) <= g(0) OR (C_in AND p(0)) after 2ns;
    C(0) <= C_in;
    P_out <= p(3) AND p(2) AND p(1) AND p(0);
    FA0 : full_adder_20334203 PORT MAP(
       X => A(0),
       Y => B(0),
       C_in => C_in,
       S => S(0),
       C_out => open
       );

    FA1 : full_adder_20334203 PORT MAP(
       X => A(1),
       Y => B(1),
       C_in => C(1),
       S => S(1),
       C_out => open
       );
             
    FA2 : full_adder_20334203 PORT MAP(
       X => A(2),
       Y => B(2),
       C_in => C(2),
       S => S(2),
       C_out => open
       );
               
    FA3 : full_adder_20334203 PORT MAP(
       X => A(3),
       Y => B(3),
       C_in => C(3),
       S => S(3),
       C_out => open
       );
    V_out <= C(4) XOR C(3);
    C_out <= C(4);
end Behavioral;
