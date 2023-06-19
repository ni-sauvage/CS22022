----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2021 17:18:25
-- Design Name: 
-- Module Name: datapath_20334203 - Behavioral
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

entity datapath_20334203 is
    Port (des_A, src_A, src_B : in std_logic_vector(5 downto 0);
        FS : in std_logic_vector(4 downto 0);
        load : in std_logic;
        const_in, data_in : in std_logic_vector(31 downto 0);
        MB_S, MD_S : in std_logic;
        Clk : in std_logic;
        N, Z, C, V : out std_logic;
        Addr_out, Data_out : out std_logic_vector(31 downto 0);
        Bus_D : inout std_logic_vector(31 downto 0)
    );
end datapath_20334203;

architecture Behavioral of datapath_20334203 is
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
    
    COMPONENT functional_unit_20334203    
    Port (A, B : in std_logic_vector(31 downto 0);
        FS : in std_logic_vector(4 downto 0);
        N, Z, C, V : out std_logic;
        F : out std_logic_vector(31 downto 0)
    );
    END COMPONENT;
    COMPONENT mux2_32bit20334203 
    port(In0 : in std_logic_vector(31 downto 0);
        In1 : in std_logic_vector(31 downto 0);
        S : in std_logic;
        Z : out std_logic_vector(31 downto 0));
    end COMPONENT; 
    
    signal B_data, A_data, F_out, MuxB_out : std_logic_vector(31 downto 0);
    
    
    
    
begin
   registers : register_file_20334203 PORT MAP(
        src_S => src_A,
        src_B => src_B,
        Clk => Clk,
        des_A => des_A,
        load => load,
        data => Bus_D,
        src_reg_A => A_data,
        src_reg_B => B_data
   );
   
   functional_unit : functional_unit_20334203 PORT MAP(
        A => A_data,
        B => MuxB_out,
        FS => FS,
        N => N,
        Z => Z,
        V => V,
        C => C,
        F => F_out
    );
    
    MUX_D : mux2_32bit20334203 PORT MAP(
        In0 => F_out,
        In1 => data_in,
        S => MD_S,
        Z => Bus_D
    );
    
    MUX_B : mux2_32bit20334203 PORT MAP(
        In0 => B_data,
        In1 => const_in,
        S => MB_S,
        Z => MuxB_out
    );
    Addr_out <= A_data;
    Data_out <= B_data;

end Behavioral;
