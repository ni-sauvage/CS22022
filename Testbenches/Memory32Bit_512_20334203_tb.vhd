----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.12.2021 16:35:39
-- Design Name: 
-- Module Name: Memory32Bit_512_20334203_tb - Behavioral
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

entity Memory32Bit_512_20334203_tb is
--  Port ( );
end Memory32Bit_512_20334203_tb;

architecture Behavioral of Memory32Bit_512_20334203_tb is
    COMPONENT Memory32Bit_512_20334203 is
        Port (address : in std_logic_vector(31 downto 0);
            write_data : in std_logic_vector(31 downto 0);
            write_enable : in std_logic;
            clock : in std_logic;
            read_data : out std_logic_vector(31 downto 0));
    END COMPONENT;
    signal address : std_logic_vector(31 downto 0);
    signal write_data : std_logic_vector(31 downto 0);
    signal write_enable : std_logic;
    signal clock : std_logic := '1';
    signal read_data : std_logic_vector(31 downto 0);
begin
    uut : Memory32Bit_512_20334203 PORT MAP(
        address => address,
        write_data => write_data,
        write_enable => write_enable,
        clock => clock,
        read_data => read_data
    );
    clock <= not clock after 175ns;
    stim_proc : process
    begin
        read_loop : for k in 0 to 511 loop
            write_enable <= '0';
            wait for 350ns;
                address <= std_logic_vector(TO_UNSIGNED(k, address'length));
                write_data <= x"FFFFFFFF";
        end loop read_loop;
        overwrite_loop : for k in 3 to 35 loop
            write_enable <= '1';
            wait for 350ns;
                address <= std_logic_vector(TO_UNSIGNED(k, address'length));
                write_data <= x"00142857";   
        end loop overwrite_loop;             
    end process;
end Behavioral;
