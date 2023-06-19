----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2021 12:41:40
-- Design Name: 
-- Module Name: functional_unit_20334203 - Behavioral
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

entity functional_unit_20334203 is
    Port (A, B : in std_logic_vector(31 downto 0);
        FS : in std_logic_vector(4 downto 0);
        N, Z, C, V : out std_logic;
        F : out std_logic_vector(31 downto 0)
    );
end functional_unit_20334203;

architecture Behavioral of functional_unit_20334203 is
    COMPONENT ALU_20334203
    Port (A, B : in std_logic_vector(31 downto 0);
        G_S : in std_logic_vector(3 downto 0);
        G_out : out std_logic_vector(31 downto 0);
        C_out : out std_logic;
        V_out : out std_logic
    );
    END COMPONENT;
    
    COMPONENT single_shifter_20334203
    Port (B : in std_logic_vector(31 downto 0);
        S : in std_logic_vector(1 downto 0);
        Ir : in std_logic;
        Il : in std_logic;
        H : out std_logic_vector(31 downto 0)
    );
    END COMPONENT;
    
    COMPONENT mux2_32bit20334203
    port(In0 : in std_logic_vector(31 downto 0);
        In1 : in std_logic_vector(31 downto 0);
        S : in std_logic;
        Z : out std_logic_vector(31 downto 0)
    );
    END COMPONENT;
    
    signal G_out, H : std_logic_vector(31 downto 0);
    signal Ir, Il : std_logic;
begin
    Ir <= '0';
    Il <= '0';
    Z <= '1' when G_out = x"00000000" else '0';
    N <= '1' when G_out(31) = '1' else '0';
    ALU : ALU_20334203 PORT MAP(
        A => A,
        B => B,
        C_out => C,
        V_out => V,
        G_S => FS(3 downto 0),
        G_out => G_out
        );
    
    Shifter : single_shifter_20334203 PORT MAP(
        B => B,
        S => FS(3 downto 2),
        H => H,
        Ir => Ir,
        Il => Il
        );
    
    mux : mux2_32bit20334203 PORT MAP(
        S => FS(4),
        In0 => G_out,
        In1 => H,
        Z => F
        );

end Behavioral;
