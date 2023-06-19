----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2021 18:28:33
-- Design Name: 
-- Module Name: Adder_Subtractor_Ripple_32_bit_20334203 - Behavioral
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

entity Adder_Subtractor_Ripple_32_bit_20334203 is
    Port ( A, B : in std_logic_vector(31 downto 0);
           S_in : in std_logic_vector(1 downto 0);
           C_in : in std_logic;
           G_ar_out : out std_logic_vector(31 downto 0);
           C_out : out std_logic;
           V_out : out std_logic
    );
end Adder_Subtractor_Ripple_32_bit_20334203;

architecture Behavioral of Adder_Subtractor_Ripple_32_bit_20334203 is
    COMPONENT B_input_logic_20334203
    Port ( B : in std_logic_vector(31 downto 0);
        S_in : in std_logic_vector(1 downto 0);
        Y : out std_logic_vector(31 downto 0)
    );
    END COMPONENT;
    
    COMPONENT ripple_adder_32_bit_20334203
    PORT( A, B : in std_logic_vector(31 downto 0);
        S : out std_logic_vector(31 downto 0);
        C_in : in std_logic;
        C_out : out std_logic;
        V_out : out std_logic
        );
    END component;
    
    --signals
    signal B_in : std_logic_vector(31 downto 0);
begin
    adder : ripple_adder_32_bit_20334203 PORT MAP(
        B => B_in,
        A => A,
        S => G_ar_out,
        C_in => C_in,
        C_out => C_out,
        V_out => V_out
        );
    inputLogic : B_input_logic_20334203 PORT MAP(
        S_in => S_in,
        B => B,
        Y => B_in
        );
        
end Behavioral;
