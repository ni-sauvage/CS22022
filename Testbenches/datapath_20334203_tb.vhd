----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.11.2021 15:15:22
-- Design Name: 
-- Module Name: datapath_20334203_tb - Behavioral
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

entity datapath_20334203_tb is
--  Port ( );
end datapath_20334203_tb;

architecture Behavioral of datapath_20334203_tb is
    COMPONENT datapath_20334203
    Port (des_A, src_A, src_B: in std_logic_vector(5 downto 0);
        FS : in std_logic_vector(4 downto 0);
        load : in std_logic;
        const_in, data_in : in std_logic_vector(31 downto 0);
        MB_S, MD_S : in std_logic;
        Clk : in std_logic;
        N, Z, C, V : out std_logic;
        Addr_out, Data_out : out std_logic_vector(31 downto 0);
        Bus_D : inout std_logic_vector(31 downto 0)
    );
    END COMPONENT;
    --inputs
    signal FS : std_logic_vector(4 downto 0);
    signal des_A, src_A, src_B: std_logic_vector(5 downto 0); 
    signal load : std_logic;                                        
    signal const_in, data_in : std_logic_vector(31 downto 0);       
    signal MB_S, MD_S : std_logic;                                  
    signal Clk : std_logic := '1';
    --outputs;                                         
    signal N, Z, C, V : std_logic;                                 
    signal Addr_out, Data_out, Bus_D : std_logic_vector(31 downto 0);      
begin
    uut : datapath_20334203 PORT MAP(
        des_A => des_A, 
        src_A => src_A,
        src_B => src_B,
        FS => FS,
        load => load,
        const_in => const_in,
        data_in => data_in,
        MB_S => MB_S,
        MD_S => MD_S,
        N => N,
        Z => Z,
        C => C,
        V => V,
        Clk => Clk,
        Addr_out => Addr_out,
        Data_out => Data_out,
        Bus_D => Bus_D
     );
     Clk <= not Clk after 160ns;
     stim_proc : process
     begin
        data_in <= X"20334203";
        MD_S <= '1';
        load <= '1';
        load_loop : for k in 0 to 32 loop
            wait for 350ns;
                data_in <= std_logic_vector(unsigned(data_in) - 1);     
                des_A <= std_logic_vector(TO_UNSIGNED(k, des_A'length));
        end loop;
        wait for 350ns;    
            src_A <= "001000";
            src_B <= "010010";
            des_A <= "000011";
            MB_S  <= '0';
            FS <= "00100";
            load <= '1';
            MD_S <= '0';
        
        wait for 350ns;    
            src_A <= "001000";
            src_B <= "010010";
            des_A <= "000011";
            MB_S  <= '0';
            FS <= "01010";
            load <= '1';
            MD_S <= '0';
        
        wait for 350ns;    
            src_A <= "001000";
            src_B <= "010010";
            des_A <= "000011";
            MB_S  <= '0';
            FS <= "00011";
            load <= '1';
            MD_S <= '0';
        
        wait for 350ns;    
            src_A <= "001000";
            src_B <= "010010";
            des_A <= "000011";
            MB_S  <= '0';
            FS <= "01100";
            load <= '1';
            MD_S <= '0';
        
        wait for 350ns;    
            src_A <= "001000";
            src_B <= "010010";
            des_A <= "000011";
            MB_S  <= '0';
            FS <= "00010";
            load <= '1';
            MD_S <= '0';
         
        wait for 350ns;    
            src_A <= "001000";
            src_B <= "010010";
            des_A <= "000011";
            MB_S  <= '0';
            FS <= "11000";
            load <= '1';
            MD_S <= '0';
        
        wait for 350ns;    
            src_A <= "001000";
            src_B <= "010010";
            des_A <= "000011";
            MB_S  <= '0';
            FS <= "00000";
            load <= '1';
            MD_S <= '0';
            
        wait for 350ns;    
            src_A <= "001000";
            src_B <= "010010";
            des_A <= "000011";
            MB_S  <= '0';
            FS <= "10000";
            load <= '1';
            MD_S <= '0';
        
        wait for 350ns;    
            src_A <= "001000";
            src_B <= "010010";
            des_A <= "000011";
            MB_S  <= '0';
            FS <= "00001";
            load <= '1';
            MD_S <= '0';    
            
        wait for 350ns;    
            src_A <= "001000";
            src_B <= "010010";
            des_A <= "000011";
            MB_S  <= '0';
            FS <= "00101";
            load <= '1';
            MD_S <= '0';
        
        wait for 350ns;    
            src_A <= "001000";
            src_B <= "010010";
            des_A <= "000011";
            MB_S  <= '0';
            FS <= "00110";
            load <= '1';
            MD_S <= '0';
        
        wait for 350ns;    
            src_A <= "001000";
            src_B <= "010010";
            des_A <= "000011";
            MB_S  <= '0';
            FS <= "01110";
            load <= '1';
            MD_S <= '0';
            
         wait for 350ns;    
            src_A <= "001000";
            src_B <= "010010";
            des_A <= "000011";
            MB_S  <= '0';
            FS <= "01000";
            load <= '1';
            MD_S <= '0';
        
        wait for 350ns;    
            src_A <= "001000";
            src_B <= "010010";
            des_A <= "000011";
            MB_S  <= '0';
            FS <= "10100";
            load <= '1';
            MD_S <= '0';
            
        wait for 350ns;    
            src_A <= "001000";
            src_B <= "010010";
            des_A <= "000011";
            MB_S  <= '0';
            FS <= "00111";
            load <= '1';
            MD_S <= '0';
        
        wait for 350ns;    
            src_A <= "001000";
            const_in <= x"20334203";
            des_A <= "000011";
            MB_S  <= '1';
            FS <= "00100";
            load <= '1';
            MD_S <= '0';
        
        wait for 350ns;    
            src_A <= "001000";
            const_in <= x"20334203";
            des_A <= "000011";
            MB_S  <= '1';
            FS <= "01010";
            load <= '1';
            MD_S <= '0';
        
        wait for 350ns;    
            src_A <= "001000";
            const_in <= x"20334203";
            des_A <= "000011";
            MB_S  <= '1';
            FS <= "00011";
            load <= '1';
            MD_S <= '0';
        
        wait for 350ns;    
            src_A <= "001000";
            const_in <= x"20334203";
            des_A <= "000011";
            MB_S  <= '1';
            FS <= "01100";
            load <= '1';
            MD_S <= '0';
        
        wait for 350ns;    
            src_A <= "001000";
            const_in <= x"20334203";
            des_A <= "000011";
            MB_S  <= '1';
            FS <= "00010";
            load <= '1';
            MD_S <= '0';
        
        wait for 350ns;    
            src_A <= "001000";
            const_in <= x"20334203";
            des_A <= "000011";
            MB_S  <= '1';
            FS <= "11000";
            load <= '1';
            MD_S <= '0';
        
        wait for 350ns;    
            src_A <= "001000";
            const_in <= x"20334203";
            des_A <= "000011";
            MB_S  <= '1';
            FS <= "10000";
            load <= '1';
            MD_S <= '0';
        
        wait for 350ns;    
            src_A <= "001000";
            const_in <= x"20334203";
            des_A <= "000011";
            MB_S  <= '1';
            FS <= "00101";
            load <= '1';
            MD_S <= '0';
        
        wait for 350ns;    
            src_A <= "001000";
            const_in <= x"20334203";
            des_A <= "000011";
            MB_S  <= '1';
            FS <= "01000";
            load <= '1';
            MD_S <= '0';
            
        wait for 350ns;    
            src_A <= "001000";
            const_in <= x"20334203";
            des_A <= "000011";
            MB_S  <= '1';
            FS <= "10100";
            load <= '1';
            MD_S <= '0';
         
     end process;
end Behavioral;
