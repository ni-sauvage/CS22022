----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.12.2021 14:30:05
-- Design Name: 
-- Module Name: Microprocessor32Bit_V1_20334203_tb - Behavioral
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

entity Microprocessor32Bit_V1_20334203_tb is
--  Port ( );
end Microprocessor32Bit_V1_20334203_tb;

architecture Behavioral of Microprocessor32Bit_V1_20334203_tb is
    COMPONENT Microprocessor32Bit_V1_20334203
        Port (des_A, src_A, src_B : in std_logic_vector(5 downto 0);
            FS : in std_logic_vector(4 downto 0);         
            load, MW : in std_logic;                      
            const_in : in std_logic_vector(31 downto 0);  
            instr_addr : in std_logic_vector(31 downto 0);
            MB_S, MD_S, MM_S : in std_logic;              
            Clk : in std_logic;                           
            N, Z, C, V : out std_logic;                   
            Bus_D : inout std_logic_vector(31 downto 0)   
        );
    END COMPONENT;
    signal des_A, src_A, src_B : std_logic_vector(5 downto 0);
    signal FS : std_logic_vector(4 downto 0);         
    signal load, MW : std_logic;                      
    signal const_in : std_logic_vector(31 downto 0);  
    signal instr_addr : std_logic_vector(31 downto 0);
    signal MB_S, MD_S, MM_S : std_logic;              
    signal Clk : std_logic := '1';                           
    signal N, Z, C, V : std_logic;                   
    signal Bus_D : std_logic_vector(31 downto 0);
    
begin

    uut : Microprocessor32Bit_V1_20334203 PORT MAP(
        des_A => des_A,
        src_A => src_A,
        src_B => src_B,
        FS => FS,
        load => load,
        MW => MW,
        const_in => const_in,
        instr_addr => instr_addr,
        MB_S => MB_S,
        MD_S => MD_S,
        MM_S => MM_S,
        Clk => Clk,
        N => N,
        Z => Z,
        C => C,
        V => V,
        Bus_D => Bus_D
        );
    Clk <= not Clk after 175ns;
    stim_proc: process
    begin
        load_loop : for k in 3 to 35 loop
            load <= '1';
            MW <= '0';
            MD_S <= '1';
            MM_S <= '1';
            wait for 350ns;
                instr_addr <= std_logic_vector(TO_UNSIGNED(k, instr_addr'length));
                des_A <=  std_logic_vector(TO_UNSIGNED((k - 3), des_A'length));
        end loop load_loop;
        wait for 350ns;
            FS <= "01110";
        TwosCLoop : for k in 3 to 35 loop
            MW <= '0';
            load <= '1';
            MD_S <= '0';
            MB_S <= '0';
            src_B <= std_logic_vector(TO_UNSIGNED((k-3), src_B'length));
            src_A <= std_logic_vector(TO_UNSIGNED((k-3), src_A'length));
            des_A <=  std_logic_vector(TO_UNSIGNED((k - 3), des_A'length));
            wait for 350ns;
                FS <= "00001";
            wait for 350ns;
                FS <= "01110";
        end loop TwosCLoop;
        load <= '0';
        wait for 350ns;
        write_loop : for k in 3 to 35 loop
            MW <= '1';
            MM_S <= '1';
            MB_S <= '0';
            wait for 350ns;
                instr_addr <= std_logic_vector(TO_UNSIGNED(k, instr_addr'length));
                src_B <= std_logic_vector(TO_UNSIGNED((k-3), src_B'length));
       end loop write_loop;
    end process;
end Behavioral;
