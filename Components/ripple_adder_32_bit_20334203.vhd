----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.11.2021 15:35:47
-- Design Name: 
-- Module Name: ripple_adder_32_bit_20334203 - Behavioral
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

entity ripple_adder_32_bit_20334203 is
    Port ( C_in : in std_logic;
        C_out : out std_logic;
        V_out : out std_logic;
        A, B : in std_logic_vector(31 downto 0);
        S : out std_logic_vector(31 downto 0) 
    );
end ripple_adder_32_bit_20334203;

architecture Behavioral of ripple_adder_32_bit_20334203 is
    signal C1, C2, C3, C4, C5, C6, C7, C8, C9, C10: std_logic;
    signal C11, C12, C13, C14, C15, C16, C17, C18, C19, C20: std_logic;
    signal C21, C22, C23, C24, C25, C26, C27, C28, C29, C30, C31, C32: std_logic;
    
    COMPONENT full_adder_20334203
    PORT(X, Y, C_in : in std_logic;
        S, C_out : out std_logic
    );
    END COMPONENT;
    
begin
    FA0 : full_adder_20334203 PORT MAP(
       X => A(0),
       Y => B(0),
       C_in => C_in,
       S => S(0),
       C_out => C1
       );

    FA1 : full_adder_20334203 PORT MAP(
       X => A(1),
       Y => B(1),
       C_in => C1,
       S => S(1),
       C_out => C2
       );
             
    FA2 : full_adder_20334203 PORT MAP(
       X => A(2),
       Y => B(2),
       C_in => C2,
       S => S(2),
       C_out => C3
       );
               
    FA3 : full_adder_20334203 PORT MAP(
       X => A(3),
       Y => B(3),
       C_in => C3,
       S => S(3),
       C_out => C4
       );
       
    FA4 : full_adder_20334203 PORT MAP(
       X => A(4),
       Y => B(4),
       C_in => C4,
       S => S(4),
       C_out => C5
       );

    FA5 : full_adder_20334203 PORT MAP(
       X => A(5),
       Y => B(5),
       C_in => C5,
       S => S(5),
       C_out => C6
       );

    FA6 : full_adder_20334203 PORT MAP(
       X => A(6),
       Y => B(6),
       C_in => C6,
       S => S(6),
       C_out => C7
       );

    FA7 : full_adder_20334203 PORT MAP(
       X => A(7),
       Y => B(7),
       C_in => C7,
       S => S(7),
       C_out => C8
       );

    FA8 : full_adder_20334203 PORT MAP(
       X => A(8),
       Y => B(8),
       C_in => C8,
       S => S(8),
       C_out => C9
       );

    FA9 : full_adder_20334203 PORT MAP(
       X => A(9),
       Y => B(9),
       C_in => C9,
       S => S(9),
       C_out => C10
       );

    FA10 : full_adder_20334203 PORT MAP(
       X => A(10),
       Y => B(10),
       C_in => C10,
       S => S(10),
       C_out => C11
       );

    FA11 : full_adder_20334203 PORT MAP(
       X => A(11),
       Y => B(11),
       C_in => C11,
       S => S(11),
       C_out => C12
       );

    FA12 : full_adder_20334203 PORT MAP(
       X => A(12),
       Y => B(12),
       C_in => C12,
       S => S(12),
       C_out => C13
       );

    FA13 : full_adder_20334203 PORT MAP(
       X => A(13),
       Y => B(13),
       C_in => C13,
       S => S(13),
       C_out => C14
       );

    FA14 : full_adder_20334203 PORT MAP(
       X => A(14),
       Y => B(14),
       C_in => C14,
       S => S(14),
       C_out => C15
       );

    FA15 : full_adder_20334203 PORT MAP(
       X => A(15),
       Y => B(15),
       C_in => C15,
       S => S(15),
       C_out => C16
       );

    FA16 : full_adder_20334203 PORT MAP(
       X => A(16),
       Y => B(16),
       C_in => C16,
       S => S(16),
       C_out => C17
       );

    FA17 : full_adder_20334203 PORT MAP(
       X => A(17),
       Y => B(17),
       C_in => C17,
       S => S(17),
       C_out => C18
       );

    FA18 : full_adder_20334203 PORT MAP(
       X => A(18),
       Y => B(18),
       C_in => C18,
       S => S(18),
       C_out => C19
       );

    FA19 : full_adder_20334203 PORT MAP(
       X => A(19),
       Y => B(19),
       C_in => C19,
       S => S(19),
       C_out => C20
       );

    FA20 : full_adder_20334203 PORT MAP(
       X => A(20),
       Y => B(20),
       C_in => C20,
       S => S(20),
       C_out => C21
       );

    FA21 : full_adder_20334203 PORT MAP(
       X => A(21),
       Y => B(21),
       C_in => C21,
       S => S(21),
       C_out => C22
       );
       
    FA22 : full_adder_20334203 PORT MAP(
       X => A(22),
       Y => B(22),
       C_in => C22,
       S => S(22),
       C_out => C23
       );
               
    FA23 : full_adder_20334203 PORT MAP(
       X => A(23),
       Y => B(23),
       C_in => C23,
       S => S(23),
       C_out => C24
       );
       
    FA24 : full_adder_20334203 PORT MAP(
       X => A(24),
       Y => B(24),
       C_in => C24,
       S => S(24),
       C_out => C25
       );

    FA25 : full_adder_20334203 PORT MAP(
       X => A(25),
       Y => B(25),
       C_in => C25,
       S => S(25),
       C_out => C26
       );

    FA26 : full_adder_20334203 PORT MAP(
       X => A(26),
       Y => B(26),
       C_in => C26,
       S => S(26),
       C_out => C27
       );

    FA27 : full_adder_20334203 PORT MAP(
       X => A(27),
       Y => B(27),
       C_in => C27,
       S => S(27),
       C_out => C28
       );

    FA28 : full_adder_20334203 PORT MAP(
       X => A(28),
       Y => B(28),
       C_in => C28,
       S => S(28),
       C_out => C29
       );

    FA29 : full_adder_20334203 PORT MAP(
       X => A(29),
       Y => B(29),
       C_in => C29,
       S => S(29),
       C_out => C30
       );

    FA30 : full_adder_20334203 PORT MAP(
       X => A(30),
       Y => B(30),
       C_in => C30,
       S => S(30),
       C_out => C31
       );

    FA31 : full_adder_20334203 PORT MAP(
       X => A(31),
       Y => B(31),
       C_in => C31,
       S => S(31),
       C_out => C32
       );
    V_out <= C31 XOR C32;
    C_out <= C32; 
end Behavioral;
