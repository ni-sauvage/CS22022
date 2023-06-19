----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.10.2021 16:31:03
-- Design Name: 
-- Module Name: register_file_20334203_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reg_file_20334203_tb is
end reg_file_20334203_tb;

architecture Behavioral of reg_file_20334203_tb is
    COMPONENT register_file_20334203
    Port (src_S: in std_logic_vector(5 downto 0);
          src_B: in std_logic_vector(5 downto 0);
          des_A: in std_logic_vector(5 downto 0);
          Clk : in std_logic;
          load : in std_logic;
          data : in std_logic_vector(31 downto 0);
          src_reg_A, src_reg_B : out std_logic_vector(31 downto 0)
          );                                                  
    END COMPONENT;
    
    --Inputs
    signal src_S: std_logic_vector(5 downto 0);
    signal src_B: std_logic_vector(5 downto 0);
    signal des_A: std_logic_vector(5 downto 0);
    signal Clk : std_logic := '1';
    signal load : std_logic;
    signal data : std_logic_vector(31 downto 0);
    
    --Outputs
    signal src_reg_A, src_reg_B : std_logic_vector(31 downto 0);
    
BEGIN

    uut: register_file_20334203 PORT MAP(
        load => load,
        src_B => src_B,
        src_S => src_S,
        des_A => des_A,
        Clk => Clk,
        src_reg_A => src_reg_A,
        src_reg_B => src_reg_B,
        data => data
    );
    Clk <= not Clk after 25ns;
    stim_proc: process
    begin
    load <= '0';
    wait for 300ns;
        des_A <= "000000";
        src_S <= "000000";
        src_B <= "000000";
        data <= x"20334203";

    wait for 300ns;
        des_A <= "000001";
        src_S <= "000001";
        src_B <= "000001";
        data <= x"20334202";

    wait for 300ns;
        des_A <= "000010";
        src_S <= "000010";
        src_B <= "000010";
        data <= x"20334201";

    wait for 300ns;
        des_A <= "000011";
        src_S <= "000011";
        src_B <= "000011";
        data <= x"20334200";
    
    wait for 50ns;
        load <= '1';
        data <= x"20334203";
    load_loop : for k in 0 to 32 loop
        des_A <= std_logic_vector(TO_UNSIGNED(k, des_A'length));
        src_S <= std_logic_vector(TO_UNSIGNED(k, src_S'length));
        src_B <= std_logic_vector(TO_UNSIGNED(k, src_B'length));
        wait for 300ns;
            data <= std_logic_vector(unsigned(unsigned(data) - 1));
    end loop;
    wait for 300ns;
        load <= '0';
        
    wait for 300ns;
        des_A <= "011111";
        src_S <= "011111";
        src_B <= "011111";
        data <= x"00142857";
    end process;
end Behavioral;
