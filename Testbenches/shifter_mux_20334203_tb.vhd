----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.11.2021 14:48:45
-- Design Name: 
-- Module Name: shifter_mux_20334203_tb - Behavioral
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

entity shifter_mux_20334203_tb is
--  Port ( );
end shifter_mux_20334203_tb;

architecture Behavioral of shifter_mux_20334203_tb is
    COMPONENT shifter_mux_20334203
    PORT( in0, in1, in2 : in std_logic;
        S : in std_logic_vector(1 downto 0);
        G : out std_logic
    );
    END COMPONENT;
    
    signal  in0, in1, in2 : std_logic;
    signal  S : std_logic_vector(1 downto 0);
    signal  G : std_logic;
begin

    uut : shifter_mux_20334203 PORT MAP(
       in0 => in0, 
       in1 => in1,
       in2 => in2,
       S => S,
       G => G
       );
       stim_proc : process
       begin
           wait for 250ns;
               in0 <= '0';
               in1 <= '1';
               in2 <= '1';
               S <= "10";
               
           wait for 250ns;
               in0 <= '0';
               in1 <= '1';
               in2 <= '1';
               S <= "00";
           
           wait for 250ns;
               in0 <= '0';
               in1 <= '1';
               in2 <= '1';
               S <= "01";
       
       end process;
end Behavioral;
