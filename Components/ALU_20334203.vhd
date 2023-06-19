----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.11.2021 13:01:29
-- Design Name: 
-- Module Name: ALU_20334203 - Behavioral
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

entity ALU_20334203 is
    Port (A, B : in std_logic_vector(31 downto 0);
        G_S : in std_logic_vector(3 downto 0);
        G_out : out std_logic_vector(31 downto 0);
        C_out : out std_logic;
        V_out : out std_logic
    );
end ALU_20334203;

architecture Behavioral of ALU_20334203 is
    
    COMPONENT Adder_Subtractor_Ripple_32_bit_20334203
    Port ( A, B : in std_logic_vector(31 downto 0);
           S_in : in std_logic_vector(1 downto 0);
           C_in : in std_logic;
           G_ar_out : out std_logic_vector(31 downto 0);
           C_out : out std_logic;
           V_out : out std_logic
    );
    END COMPONENT;
    
    COMPONENT LogicCircuit_32bit_20334203
    Port ( S_in: in std_logic_vector(1 downto 0);
        A, B: in std_logic_vector(31 downto 0);
        G_log_out: out std_logic_vector(31 downto 0)
    );
    END COMPONENT;
    
    COMPONENT mux2_32bit20334203 is
    port(In0 : in std_logic_vector(31 downto 0);
        In1 : in std_logic_vector(31 downto 0);
        S : in std_logic;
        Z : out std_logic_vector(31 downto 0)
    );
    END COMPONENT;
    signal In0, In1 : std_logic_vector(31 downto 0);
begin
    adder_sub : Adder_Subtractor_Ripple_32_bit_20334203 PORT MAP(
        A => A,
        B => B,
        C_in => G_S(0),
        C_out => C_out,
        S_in => G_S(2 downto 1),
        V_out => V_out,
        G_ar_out => In0
        );
    logic : LogicCircuit_32bit_20334203 PORT MAP(
        A => A,
        B => B,
        S_in => G_S(2 downto 1),
        G_log_out => In1
        );
    mux : mux2_32bit20334203 PORT MAP(
        In0 => In0,
        In1 => In1,
        S => G_S(3),
        Z => G_out
        );

end Behavioral;
