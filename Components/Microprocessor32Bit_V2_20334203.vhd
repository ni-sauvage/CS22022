----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.12.2021 01:08:45
-- Design Name: 
-- Module Name: Microprocessor32Bit_V2_20334203 - Behavioral
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

entity Microprocessor32Bit_V2_20334203 is
    Port (des_A, src_A, src_B : in std_logic_vector(5 downto 0);
        IN_CAR : in std_logic_vector(16 downto 0);
        const_in : in std_logic_vector(31 downto 0);
        instr_addr : in std_logic_vector(31 downto 0);
        Clk : in std_logic;
        N, Z, C, V : out std_logic;
        Bus_D : inout std_logic_vector(31 downto 0)
    );
end Microprocessor32Bit_V2_20334203;

architecture Behavioral of Microprocessor32Bit_V2_20334203 is
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
    COMPONENT Control_Memory42Bit_256_InitV2_20334203
        Port (IN_CAR : in std_logic_vector(16 downto 0);
        FL : out std_logic; -- 0
        RZ : out std_logic; -- 1
        RN : out std_logic; -- 2
        RC : out std_logic; -- 3
        RV : out std_logic; -- 4
        MW : out std_logic; -- 5
        MM : out std_logic; -- 6
        RW : out std_logic; -- 7
        MD : out std_logic; -- 8
        FS : out std_logic_vector(4 downto 0); -- 9 to 13
        MB : out std_logic; -- 14
        TB : out std_logic; -- 15
        TA : out std_logic; -- 16
        TD : out std_logic; -- 17
        PL : out std_logic; -- 18
        PI : out std_logic; -- 19
        IL : out std_logic; -- 20
        MC : out std_logic; -- 21
        MS : out std_logic_vector(2 downto 0); -- 22 to 24
        NA : out std_logic_vector(16 downto 0) -- 25 to 41
    );           
    END COMPONENT;
    signal FL : std_logic; -- 0
    signal RZ : std_logic; -- 1
    signal RN : std_logic; -- 2
    signal RC : std_logic; -- 3
    signal RV : std_logic; -- 4
    signal MW : std_logic; -- 5
    signal MM : std_logic; -- 6
    signal RW : std_logic; -- 7
    signal MD : std_logic; -- 8
    signal FS : std_logic_vector(4 downto 0); -- 9 to 13
    signal MB : std_logic; -- 14
    signal TB : std_logic; -- 15
    signal TA : std_logic; -- 16
    signal TD : std_logic; -- 17
    signal PL : std_logic; -- 18
    signal PI : std_logic; -- 19
    signal IL : std_logic; -- 20
    signal MC : std_logic; -- 21
    signal MS : std_logic_vector(2 downto 0); -- 22 to 24
    signal NA : std_logic_vector(16 downto 0); -- 25 to 41
    signal mem_data, Bus_B, Bus_A, address : std_logic_vector(31 downto 0);
begin
    mux_m : mux2_32bit20334203 PORT MAP(
        In0 => Bus_A,
        In1 => instr_addr,
        S => MM,
        Z => address
        );
    
    
    datapath : datapath_20334203 PORT MAP(
        des_A => des_A,
        src_A => src_A,
        src_B => src_B,
        FS => FS,
        load => RW,
        const_in => const_in,
        data_in => mem_data,
        MB_S => MB,
        MD_S => MD,
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
        
    control_mem : Control_Memory42Bit_256_InitV2_20334203 PORT MAP(
        IN_CAR => IN_CAR,
        FL => FL,
        RZ => RZ,
        RN => RN,
        RC => RC,
        RV => RV,
        MW => MW,
        MM => MM,
        RW => RW,
        MD => MD,
        FS => FS,
        MB => MB,
        TB => TB,
        TA => TA,
        TD => TD,
        PL => PL,
        PI => PI,
        IL => IL,
        MC => MC,
        MS => MS,
        NA => NA
        );

end Behavioral;
