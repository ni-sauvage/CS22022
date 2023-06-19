----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2021 17:03:17
-- Design Name: 
-- Module Name: LogicCircuit_32bit_20334203 - Behavioral
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

entity LogicCircuit_32bit_20334203 is
    Port ( S_in: in std_logic_vector(1 downto 0);
        A, B: in std_logic_vector(31 downto 0);
        G_log_out: out std_logic_vector(31 downto 0)
    );
end LogicCircuit_32bit_20334203;

architecture Behavioral of LogicCircuit_32bit_20334203 is
    COMPONENT logic_circuit_bitslice_20334203
        Port ( S_in : in std_logic_vector(1 downto 0);
            A, B : in std_logic;
            G_log_out : out std_logic
        );
    END COMPONENT;
begin
    logBitSl_00 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(0),
        B => B(0),
        G_log_out => G_log_out(0)
        );
    logBitSl_01 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(1),
        B => B(1),
        G_log_out => G_log_out(1)
        );
    logBitSl_02 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(2),
        B => B(2),
        G_log_out => G_log_out(2)
        );
    logBitSl_03 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(3),
        B => B(3),
        G_log_out => G_log_out(3)
        );
    logBitSl_04 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(4),
        B => B(4),
        G_log_out => G_log_out(4)
        );
    logBitSl_05 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(5),
        B => B(5),
        G_log_out => G_log_out(5)
        );
    logBitSl_06 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(6),
        B => B(6),
        G_log_out => G_log_out(6)
        );
    logBitSl_07 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(7),
        B => B(7),
        G_log_out => G_log_out(7)
        );
    logBitSl_08 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(8),
        B => B(8),
        G_log_out => G_log_out(8)
        );
    logBitSl_09 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(9),
        B => B(9),
        G_log_out => G_log_out(9)
        );
    logBitSl_10 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(10),
        B => B(10),
        G_log_out => G_log_out(10)
        );
    logBitSl_11 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(11),
        B => B(11),
        G_log_out => G_log_out(11)
        );
    logBitSl_12 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(12),
        B => B(12),
        G_log_out => G_log_out(12)
        );
    logBitSl_13 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(13),
        B => B(13),
        G_log_out => G_log_out(13)
        );
    logBitSl_14 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(14),
        B => B(14),
        G_log_out => G_log_out(14)
        );
    logBitSl_15 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(15),
        B => B(15),
        G_log_out => G_log_out(15)
        );
    logBitSl_16 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(16),
        B => B(16),
        G_log_out => G_log_out(16)
        );
    logBitSl_17 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(17),
        B => B(17),
        G_log_out => G_log_out(17)
        );
    logBitSl_18 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(18),
        B => B(18),
        G_log_out => G_log_out(18)
        );
    logBitSl_19 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(19),
        B => B(19),
        G_log_out => G_log_out(19)
        );
    logBitSl_20 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(20),
        B => B(20),
        G_log_out => G_log_out(20)
        );
    logBitSl_21 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(21),
        B => B(21),
        G_log_out => G_log_out(21)
        );
    logBitSl_22 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(22),
        B => B(22),
        G_log_out => G_log_out(22)
        );
    logBitSl_23 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(23),
        B => B(23),
        G_log_out => G_log_out(23)
        );
    logBitSl_24 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(24),
        B => B(24),
        G_log_out => G_log_out(24)
        );
    logBitSl_25 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(25),
        B => B(25),
        G_log_out => G_log_out(25)
        );
    logBitSl_26 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(26),
        B => B(26),
        G_log_out => G_log_out(26)
        );
    logBitSl_27 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(27),
        B => B(27),
        G_log_out => G_log_out(27)
        );
    logBitSl_28 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(28),
        B => B(28),
        G_log_out => G_log_out(28)
        );
    logBitSl_29 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(29),
        B => B(29),
        G_log_out => G_log_out(29)
        );
    logBitSl_30 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(30),
        B => B(30),
        G_log_out => G_log_out(30)
        );
    logBitSl_31 : logic_circuit_bitslice_20334203 PORT MAP(
        S_in(0) => S_in(0),
        S_in(1) => S_in(1),
        A => A(31),
        B => B(31),
        G_log_out => G_log_out(31)
        );

end Behavioral;
