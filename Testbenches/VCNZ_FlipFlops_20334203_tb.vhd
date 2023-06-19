----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2021 02:13:29
-- Design Name: 
-- Module Name: Microprocessor32Bit_V2_20334203_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity VCNZ_FlipFlops_20334203_tb is
--  Port ( );
end VCNZ_FlipFlops_20334203_tb;

architecture Behavioral of VCNZ_FlipFlops_20334203_tb is
    COMPONENT Microprocessor32Bit_VCNZ_20334203
    Port (des_A, src_A, src_B : in std_logic_vector(5 downto 0);
        IN_CAR : in std_logic_vector(16 downto 0);
        const_in : in std_logic_vector(31 downto 0);
        instr_addr : in std_logic_vector(31 downto 0);
        Clk : in std_logic;
        N, Z, C, V : out std_logic;
        Bus_D : inout std_logic_vector(31 downto 0)
    );
    END COMPONENT;
    signal des_A, src_A, src_B : std_logic_vector(5 downto 0);
    signal IN_CAR : std_logic_vector(16 downto 0);
    signal const_in : std_logic_vector(31 downto 0);
    signal instr_addr : std_logic_vector(31 downto 0);
    signal Clk : std_logic := '0';
    signal N, Z, C, V : std_logic;
    signal Bus_D : std_logic_vector(31 downto 0);

begin
    uut : Microprocessor32Bit_VCNZ_20334203 PORT MAP(
        des_A => des_A,
        src_A => src_A,
        src_B => src_B,
        IN_CAR => IN_CAR,
        const_in => const_in,
        instr_addr => instr_addr,
        Clk => Clk,
        N => N,
        Z => Z,
        C => C,
        V => V,
        Bus_D => Bus_D
        );
        Clk <= not Clk after 175ns;
        stim_proc : process
        begin
            IN_CAR <= "00000000000000000";
            load_loop : for k in 0 to 32 loop
                wait for 350ns;
                    instr_addr <= std_logic_vector(TO_UNSIGNED(k, instr_addr'length));
                    des_A <=  std_logic_vector(TO_UNSIGNED(k, des_A'length));
            end loop load_loop;
            wait for 350ns;
            src_A <= "001000";
            src_B <= "010010";
            compute_loop : for k in 0 to 15 loop
                wait for 350ns;
                    IN_CAR <= std_logic_vector(unsigned(IN_CAR) + 1);
            end loop compute_loop;
        end process;
end Behavioral;
