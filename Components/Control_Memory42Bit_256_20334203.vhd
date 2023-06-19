----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2021 01:05:12
-- Design Name: 
-- Module Name: Control_Memory42Bit_256_20334203 - Behavioral
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

entity Control_Memory42Bit_256_20334203 is
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
end Control_Memory42Bit_256_20334203;

architecture Behavioral of Control_Memory42Bit_256_20334203 is

type mem_array is array(0 to 255) of std_logic_vector(41 downto 0);
-- initialise the control memory
signal control_mem : mem_array := (
-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
-- "00000000000000000 000 0 0 0 0 0 0 0 0 00000 0 0 0 0 0 0 0 0 0"
    -- ID is 20334203, last digit is 03, the order is
    --increment
    --store
    --shift left 1 bit
    --shift right n bits
    --load
    --XOR
    --Shift Right N process:
    --If N is in memory:
    --  Load R32 register with N
    --If N is in register SA:
    --  Move R[SA] into R32
    --  Compare R[SA] to 0, Jump to IF it is is
    --With the same destination and source register, shift R[SB] right once and store it in R[SB]
    --Decrement R32
    --Compare R32 to 0
    --Conditional Jump if Z is set to IF
    --repeat until jump occurs
   --N                M  MIPPTTTMF    MRMMRRRRF
   --A................S..CLILDABBS....DWMWVCNZL
    "000000000000001100010000000000001010000000",-- INC 0x00
    "000000000000001100010000000000000000100000",-- STR 0x01
    "000000000000001100010000000011000010000000",-- SLB 0x02,
    "000000000000010100010000100000000010000001",-- SRN 0x03 Start of chain of operations which shift R[SA] right by R[SB] and store it in R[DA]. This micro-op moves R[SA] to R32, while setting flags, so that if R[SA] is 0, the operation can be skipped
    "000000000000001100010000000000000110000000",-- LDR 0x04
    "000000000000001100010000000001100010000000",-- XOR 0x05 
    "000000000000001110010110000000000001000000",-- IF  0x06 Instruction Fetch
    "000000000000000000011000000000000000000000",-- EXO 0x07 Execute
    "000000000000010100010000110000110010000001",-- DEC 0x08 
    "000000000000000000000000000000000000000000",
    -- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
-- "00000000000000000 000 0 0 0 0 0 0 0 0 00000 0 0 0 0 0 0 0 0 0"
    "000000000000001101000000000000000000000000",-- JZS 0x0A Conditional Jump to IF if Z flag is set
    "000000000000011110010000000000000000000000",-- J   0x0B Unconditional jump
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000010000010000000010100010000000",-- SRB 0x0F
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000"
     
    
    );
signal content_at_address : std_logic_vector(41 downto 0);
begin
    content_at_address <= control_mem(to_integer(unsigned(IN_CAR(8 downto 0)))) after 2ns;
    FL <= content_at_address(0); -- 0
    RZ <= content_at_address(1); -- 1
    RN <= content_at_address(2); -- 2
    RC <= content_at_address(3); -- 3
    RV <= content_at_address(4); -- 4
    MW <= content_at_address(5); -- 5
    MM <= content_at_address(6); -- 6
    RW <= content_at_address(7); -- 7
    MD <= content_at_address(8); -- 8
    FS <= content_at_address(13 downto 9); -- 9 to 13
    MB <= content_at_address(14); -- 14
    TB <= content_at_address(15); -- 15
    TA <= content_at_address(16); -- 16
    TD <= content_at_address(17); -- 17
    PL <= content_at_address(18); -- 18
    PI <= content_at_address(19); -- 19
    IL <= content_at_address(20); -- 20
    MC <= content_at_address(21); -- 21
    MS <= content_at_address(24 downto 22); -- 22 to 24
    NA <= content_at_address(41 downto 25); -- 25 to 41

end Behavioral;
