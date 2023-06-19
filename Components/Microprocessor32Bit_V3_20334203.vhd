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

entity Microprocessor32Bit_V3_20334203 is
    Port (reset : in std_logic;
        Clk : in std_logic;
        Bus_D : inout std_logic_vector(31 downto 0)
    );
end Microprocessor32Bit_V3_20334203;

architecture Behavioral of Microprocessor32Bit_V3_20334203 is
    COMPONENT Memory32Bit_512_InitProcessorV3_20334203
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
    COMPONENT Control_Memory42Bit_256_20334203
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
    COMPONENT VCNZ_FlipFlops_20334203
        Port ( reset : in std_logic_vector(3 downto 0);
            N, Z, C, V : in std_logic;
            FL : in std_logic;
            Clk : in std_logic;
            FL_OUT : out std_logic_vector(3 downto 0)
        );           
    END COMPONENT;
    COMPONENT IR32Bit_20334203
    Port (
        instr : in std_logic_vector(31 downto 0);
        Clk, IL : in std_logic;
        DR, SA, SB : out std_logic_vector(4 downto 0);
        instr_out : out std_logic_vector(16 downto 0)
    );
    END COMPONENT;
    
    COMPONENT CAR17Bit_20334203
    Port ( 
        LAddr : in std_logic_vector(16 downto 0);
        Clk, L_S, reset : in std_logic;
        Addr_out : inout std_logic_vector(16 downto 0)
    );
    END COMPONENT;
    
    COMPONENT Multiplexer1Bit_8to1_20334203
    Port ( NZ, NC, N, Z, C, V, T, F : in std_logic;
        MS : in std_logic_vector(2 downto 0);
        G : out std_logic
    );
    END COMPONENT;
    
    COMPONENT PC_32Bit_20334203
    Port ( 
        Clk, PI, PL, reset : in std_logic;
        extended_inp : in std_logic_vector(31 downto 0);
        counter : inout std_logic_vector (31 downto 0)
    );
    END COMPONENT;
    
    COMPONENT ExtendLogic_20334203
    Port ( in_val : in std_logic_vector(9 downto 0);
         out_val : out std_logic_vector(31 downto 0)
    );
    END COMPONENT;
    
    COMPONENT ZeroFillLogic_20334203
    Port (  SB : in std_logic_vector(4 downto 0);
        operand : out std_logic_vector(31 downto 0)
    );
    END COMPONENT;
    
    COMPONENT mux2_17Bit_20334203
    Port( In0 : in std_logic_vector(16 downto 0);
        In1 : in std_logic_vector(16 downto 0);
        S : in std_logic;
        Z : out std_logic_vector(16 downto 0)
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
    signal N_sig, V_sig, Z_sig, C_sig : std_logic;
    signal N_mux, V_mux, Z_mux, C_mux : std_logic;
    signal NZ_mux, NC_mux : std_logic;
    signal DR, SA, SB : std_logic_vector(4 downto 0);
    signal opcode, control_addr_out, IN_CAR : std_logic_vector(16 downto 0);
    signal CAR_L : std_logic;
    signal PC_in_pre_extend : std_logic_vector(9 downto 0);
    signal mem_data, Bus_B, Bus_A, address, counter, PC_in_ext, const_in : std_logic_vector(31 downto 0);
begin
    NZ_mux <= NOT Z_mux;
    NC_mux <= NOT C_mux;
    PC_in_pre_extend(9 downto 5) <= DR;
    PC_in_pre_extend(4 downto 0) <= SB;
    mux_m : mux2_32bit20334203 PORT MAP(
        In0 => Bus_A,
        In1 => counter,
        S => MM,
        Z => address
        );
    instr_reg : IR32Bit_20334203 PORT MAP(
        instr => mem_data,
        Clk => Clk,
        IL => IL,
        DR => DR,
        SA => SA,
        SB => SB,
        instr_out => opcode
    );
    
    mux_c : mux2_17Bit_20334203 PORT MAP(
        In0 => NA,
        In1 => opcode,
        S => MC,
        Z => control_addr_out
    );
    
    CAR : CAR17Bit_20334203 PORT MAP(
        LAddr => control_addr_out,
        L_S => CAR_L,
        Addr_out => IN_CAR,
        Clk => Clk,
        reset => reset
    );
    Extend : ExtendLogic_20334203 PORT MAP(
        in_val => PC_in_pre_extend,
        out_val => PC_in_ext
    );
    
    
    PC : PC_32Bit_20334203 PORT MAP(
        Clk => Clk,
        PI => PI,
        PL => PL,
        reset => reset,
        counter => counter,
        extended_inp => PC_in_ext
    );    
    
    mux_s : Multiplexer1Bit_8to1_20334203 PORT MAP(
        NZ => NZ_mux,
        NC => NC_mux,
        N => N_mux,
        C => C_mux,
        Z => Z_mux,
        V => V_mux,
        T => '1',
        F => '0',
        MS => MS,
        G => CAR_L
    );    
        
    zerofill : ZeroFillLogic_20334203 PORT MAP(
        SB => SB,
        operand => const_in
    );
        
    datapath : datapath_20334203 PORT MAP(
        des_A(4 downto 0) => DR,
        des_A(5) => TD,
        src_A(4 downto 0) => SA,
        src_A(5) => TA,
        src_B(4 downto 0) => SB,
        src_B(5) => TB,
        FS => FS,
        load => RW,
        const_in => const_in,
        data_in => mem_data,
        MB_S => MB,
        MD_S => MD,
        Clk => Clk,
        N => N_sig,
        Z => Z_sig,
        C => C_sig,
        V => V_sig,
        Bus_D => Bus_D,
        Addr_out => Bus_A,
        Data_out => Bus_B
        );
    
    memory : Memory32Bit_512_InitProcessorV3_20334203 PORT MAP(
        address => address,
        write_enable => MW,
        Clock => Clk,
        read_data => mem_data,
        write_data => Bus_B
        );
        
    control_mem : Control_Memory42Bit_256_20334203 PORT MAP(
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
        
    flip_flops : VCNZ_FlipFlops_20334203 PORT MAP(
        reset(3) => RV,
        reset(2) => RC,
        reset(1) => RN,
        reset(0) => RZ,
        FL => FL,
        Clk => Clk,
        FL_OUT(3) => V_mux,
        FL_OUT(2) => C_mux,
        FL_OUT(1) => N_mux,
        FL_OUT(0) => Z_mux,
        N => N_sig,
        V => V_sig,
        Z => Z_sig,
        C => C_sig
    );
end Behavioral;
