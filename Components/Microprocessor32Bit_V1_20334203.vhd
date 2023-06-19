----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.12.2021 01:08:45
-- Design Name: 
-- Module Name: Microprocessor32Bit_V1_20334203 - Behavioral
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

entity Microprocessor32Bit_V1_20334203 is
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
end Microprocessor32Bit_V1_20334203;

architecture Behavioral of Microprocessor32Bit_V1_20334203 is
    COMPONENT Memory32Bit_512_20334203
        Port (address : in std_logic_vector(31 downto 0);
            write_data : in std_logic_vector(31 downto 0);
            write_enable : in std_logic;
            clock : in std_logic;
            read_data : out std_logic_vector(31 downto 0));
    END COMPONENT;
    
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
    
    COMPONENT mux2_32bit20334203
        PORT(
            In0 : IN std_logic_vector(31 downto 0);
            In1 : IN std_logic_vector(31 downto 0);
            S : IN std_logic;
            Z : OUT std_logic_vector(31 downto 0)
            );
    END COMPONENT;
    signal mem_data, Bus_B, Bus_A, address : std_logic_vector(31 downto 0);
begin
    mux_m : mux2_32bit20334203 PORT MAP(
        In0 => Bus_A,
        In1 => instr_addr,
        S => MM_S,
        Z => address
        );
    
    
    datapath : datapath_20334203 PORT MAP(
        des_A => des_A,
        src_A => src_A,
        src_B => src_B,
        FS => FS,
        load => load,
        const_in => const_in,
        data_in => mem_data,
        MB_S => MB_S,
        MD_S => MD_S,
        Clk => Clk,
        N => N,
        Z => Z,
        C => C,
        V => V,
        Bus_D => Bus_D,
        Addr_out => Bus_A,
        Data_out => Bus_B
        );
    
    memory : Memory32Bit_512_20334203 PORT MAP(
        address => address,
        write_enable => MW,
        Clock => Clk,
        read_data => mem_data,
        write_data => Bus_B
        );

end Behavioral;
