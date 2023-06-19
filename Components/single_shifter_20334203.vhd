----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.11.2021 14:20:55
-- Design Name: 
-- Module Name: single_shifter_20334203 - Behavioral
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

entity single_shifter_20334203 is
  Port (B : in std_logic_vector(31 downto 0);
        S : in std_logic_vector(1 downto 0);
        Ir : in std_logic;
        Il : in std_logic;
        H : out std_logic_vector(31 downto 0)
  );
end single_shifter_20334203;

architecture Behavioral of single_shifter_20334203 is
    COMPONENT shifter_mux_20334203
    PORT( in0, in1, in2 : in std_logic;
        S : in std_logic_vector(1 downto 0);
        G : out std_logic
    );
    END COMPONENT;
begin
    mux0 : shifter_mux_20334203 PORT MAP(
        in0 => B(0),
        in1 => B(1),
        in2 => Il,
        S => S,
        G => H(0)
        );
    mux1 : shifter_mux_20334203 PORT MAP(
        in0 => B(1),
        in1 => B(2),
        in2 => B(0),
        S => S,
        G => H(1)
        );
    mux2 : shifter_mux_20334203 PORT MAP(
        in0 => B(2),
        in1 => B(3),
        in2 => B(1),
        S => S,
        G => H(2)
        );
    mux3 : shifter_mux_20334203 PORT MAP(
        in0 => B(3),
        in1 => B(4),
        in2 => B(2),
        S => S,
        G => H(3)
        );
    mux4 : shifter_mux_20334203 PORT MAP(
        in0 => B(4),
        in1 => B(5),
        in2 => B(3),
        S => S,
        G => H(4)
        );
    mux5 : shifter_mux_20334203 PORT MAP(
        in0 => B(5),
        in1 => B(6),
        in2 => B(4),
        S => S,
        G => H(5)
        );
    mux6 : shifter_mux_20334203 PORT MAP(
        in0 => B(6),
        in1 => B(7),
        in2 => B(5),
        S => S,
        G => H(6)
        );
    mux7 : shifter_mux_20334203 PORT MAP(
        in0 => B(7),
        in1 => B(8),
        in2 => B(6),
        S => S,
        G => H(7)
        );
    mux8 : shifter_mux_20334203 PORT MAP(
        in0 => B(8),
        in1 => B(9),
        in2 => B(7),
        S => S,
        G => H(8)
        );
    mux9 : shifter_mux_20334203 PORT MAP(
        in0 => B(9),
        in1 => B(10),
        in2 => B(8),
        S => S,
        G => H(9)
        );
    mux10 : shifter_mux_20334203 PORT MAP(
        in0 => B(10),
        in1 => B(11),
        in2 => B(9),
        S => S,
        G => H(10)
        );
    mux11 : shifter_mux_20334203 PORT MAP(
        in0 => B(11),
        in1 => B(12),
        in2 => B(10),
        S => S,
        G => H(11)
        );
    mux12 : shifter_mux_20334203 PORT MAP(
        in0 => B(12),
        in1 => B(13),
        in2 => B(11),
        S => S,
        G => H(12)
        );
    mux13 : shifter_mux_20334203 PORT MAP(
        in0 => B(13),
        in1 => B(14),
        in2 => B(12),
        S => S,
        G => H(13)
        );
    mux14 : shifter_mux_20334203 PORT MAP(
        in0 => B(14),
        in1 => B(15),
        in2 => B(13),
        S => S,
        G => H(14)
        );
    mux15 : shifter_mux_20334203 PORT MAP(
        in0 => B(15),
        in1 => B(16),
        in2 => B(14),
        S => S,
        G => H(15)
        );
    mux16 : shifter_mux_20334203 PORT MAP(
        in0 => B(16),
        in1 => B(17),
        in2 => B(15),
        S => S,
        G => H(16)
        );
    mux17 : shifter_mux_20334203 PORT MAP(
        in0 => B(17),
        in1 => B(18),
        in2 => B(16),
        S => S,
        G => H(17)
        );
    mux18 : shifter_mux_20334203 PORT MAP(
        in0 => B(18),
        in1 => B(19),
        in2 => B(17),
        S => S,
        G => H(18)
        );
    mux19 : shifter_mux_20334203 PORT MAP(
        in0 => B(19),
        in1 => B(20),
        in2 => B(18),
        S => S,
        G => H(19)
        );
    mux20 : shifter_mux_20334203 PORT MAP(
        in0 => B(20),
        in1 => B(21),
        in2 => B(19),
        S => S,
        G => H(20)
        );
    mux21 : shifter_mux_20334203 PORT MAP(
        in0 => B(21),
        in1 => B(22),
        in2 => B(20),
        S => S,
        G => H(21)
        );
    mux22 : shifter_mux_20334203 PORT MAP(
        in0 => B(22),
        in1 => B(23),
        in2 => B(21),
        S => S,
        G => H(22)
        );
    mux23 : shifter_mux_20334203 PORT MAP(
        in0 => B(23),
        in1 => B(24),
        in2 => B(22),
        S => S,
        G => H(23)
        );
    mux24 : shifter_mux_20334203 PORT MAP(
        in0 => B(24),
        in1 => B(25),
        in2 => B(23),
        S => S,
        G => H(24)
        );
    mux25 : shifter_mux_20334203 PORT MAP(
        in0 => B(25),
        in1 => B(26),
        in2 => B(24),
        S => S,
        G => H(25)
        );
    mux26 : shifter_mux_20334203 PORT MAP(
        in0 => B(26),
        in1 => B(27),
        in2 => B(25),
        S => S,
        G => H(26)
        );
    mux27 : shifter_mux_20334203 PORT MAP(
        in0 => B(27),
        in1 => B(28),
        in2 => B(26),
        S => S,
        G => H(27)
        );
    mux28 : shifter_mux_20334203 PORT MAP(
        in0 => B(28),
        in1 => B(29),
        in2 => B(27),
        S => S,
        G => H(28)
        );
    mux29 : shifter_mux_20334203 PORT MAP(
        in0 => B(29),
        in1 => B(30),
        in2 => B(28),
        S => S,
        G => H(29)
        );
    mux30 : shifter_mux_20334203 PORT MAP(
        in0 => B(30),
        in1 => B(31),
        in2 => B(29),
        S => S,
        G => H(30)
        );
    mux31 : shifter_mux_20334203 PORT MAP(
        in0 => B(31),
        in1 => Ir,
        in2 => B(30),
        S => S,
        G => H(31)
        );

end Behavioral;
