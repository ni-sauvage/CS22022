----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2021 18:58:13
-- Design Name: 
-- Module Name: Multiplexer1Bit_8to1_20334203_tb - Behavioral
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

entity Multiplexer1Bit_8to1_20334203_tb is
--  Port ( );
end Multiplexer1Bit_8to1_20334203_tb;

architecture Behavioral of Multiplexer1Bit_8to1_20334203_tb is
    COMPONENT Multiplexer1Bit_8to1_20334203
    Port ( NZ, NC, N, Z, C, V, T, F : in std_logic;
        MS : in std_logic_vector(2 downto 0);
        G : out std_logic
    );
    END COMPONENT;
    
    signal NZ, NC, N, Z, C, V, G, T, F : std_logic;
    signal MS : std_logic_vector(2 downto 0);
    
begin
    uut : Multiplexer1Bit_8to1_20334203 PORT MAP(
        NZ => NZ,
        NC => NC,
        N => N,
        Z => Z,
        C => C,
        V => V,
        T => T,
        F => F,
        MS => MS,
        G => G
        );
    stim_proc : process
    begin
        wait for 350ns;
            NZ <= '0';
            NC <= '0';
            N <= '0';
            Z <= '0';
            C <= '0';
            V <= '0';
            T <= '0';
            F <= '1';
            MS <= "000";
            
        wait for 350ns;
            NZ <= '0';
            NC <= '0';
            N <= '0';
            Z <= '0';
            C <= '0';
            V <= '0';
            T <= '1';
            F <= '0';
            MS <= "001";
            
        wait for 350ns;
            NZ <= '0';
            NC <= '0';
            N <= '0';
            Z <= '0';
            C <= '1';
            V <= '0';
            T <= '0';
            F <= '0';
            MS <= "010";
            
        wait for 350ns;
            NZ <= '0';
            NC <= '0';
            N <= '0';
            Z <= '0';
            C <= '0';
            V <= '1';
            T <= '0';
            F <= '0';
            MS <= "011";
            
        wait for 350ns;
            NZ <= '0';
            NC <= '0';
            N <= '0';
            Z <= '1';
            C <= '0';
            V <= '0';
            T <= '0';
            F <= '0';
            MS <= "100";
            
        wait for 350ns;
            NZ <= '0';
            NC <= '0';
            N <= '1';
            Z <= '0';
            C <= '0';
            V <= '0';
            T <= '0';
            F <= '0';
            MS <= "101";
            
        wait for 350ns;
            NZ <= '0';
            NC <= '1';
            N <= '0';
            Z <= '0';
            C <= '0';
            V <= '0';
            T <= '0';
            F <= '0';
            MS <= "110";
            
        wait for 350ns;
            NZ <= '1';
            NC <= '0';
            N <= '0';
            Z <= '0';
            C <= '0';
            V <= '0';
            T <= '0';
            F <= '0';
            MS <= "111";
            
    end process;
end Behavioral;
