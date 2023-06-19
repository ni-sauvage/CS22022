----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.10.2021 17:47:57
-- Design Name: 
-- Module Name: register_file_20334203 - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity register_file_20334203 is
    Port (src_S: in std_logic_vector(5 downto 0);
          src_B: in std_logic_vector(5 downto 0);
          des_A: in std_logic_vector(5 downto 0);
          Clk : in std_logic;
          load : in std_logic;
          data : in std_logic_vector(31 downto 0);
          src_reg_A, src_reg_B : out std_logic_vector(31 downto 0)
          );
end register_file_20334203;

architecture Behavioral of register_file_20334203 is

    COMPONENT reg32_20334203
    PORT(
        D: IN std_logic_vector(31 downto 0);
        load : IN std_logic;
        Clk :IN std_logic;
        Q : OUT std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    
    COMPONENT decoder5to32_20334203
    PORT(
        A: in std_logic_vector(5 downto 0);
        Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7 : OUT std_logic;
        Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15 : OUT std_logic;
        Q16, Q17, Q18, Q19, Q20, Q21, Q22, Q23 : OUT std_logic;
        Q24, Q25, Q26, Q27, Q28, Q29, Q30, Q31 : OUT std_logic;
        QTemp: OUT std_logic
        );
    END COMPONENT;
    
    COMPONENT mux32_32bit20334203
    PORT( 
        S : IN std_logic_vector(5 downto 0);
        In0, In1, In2, In3, In4, In5, In6, In7 : IN std_logic_vector(31 downto 0);
        In8, In9, In10, In11, In12, In13, In14, In15 : IN std_logic_vector(31 downto 0);
        In16, In17, In18, In19, In20, In21, In22, In23 : IN std_logic_vector(31 downto 0);
        In24, In25, In26, In27, In28, In29, In30, In31 : IN std_logic_vector(31 downto 0);
        InTemp : IN std_logic_vector(31 downto 0);
        Z : OUT std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    
    signal load_reg00, load_reg01, load_reg02, load_reg03, load_reg04, load_reg05, load_reg06, load_reg07 : std_logic;
    signal load_reg08, load_reg09, load_reg10, load_reg11, load_reg12, load_reg13, load_reg14, load_reg15 : std_logic;
    signal load_reg16, load_reg17, load_reg18, load_reg19, load_reg20, load_reg21, load_reg22, load_reg23 : std_logic;
    signal load_reg24, load_reg25, load_reg26, load_reg27, load_reg28, load_reg29, load_reg30, load_reg31 : std_logic;
    signal load_temp : std_logic;
    signal load_reg00_init, load_reg01_init, load_reg02_init, load_reg03_init, load_reg04_init, load_reg05_init, load_reg06_init, load_reg07_init : std_logic;
    signal load_reg08_init, load_reg09_init, load_reg10_init, load_reg11_init, load_reg12_init, load_reg13_init, load_reg14_init, load_reg15_init : std_logic;
    signal load_reg16_init, load_reg17_init, load_reg18_init, load_reg19_init, load_reg20_init, load_reg21_init, load_reg22_init, load_reg23_init : std_logic;
    signal load_reg24_init, load_reg25_init, load_reg26_init, load_reg27_init, load_reg28_init, load_reg29_init, load_reg30_init, load_reg31_init : std_logic;
    signal load_temp_init : std_logic;
    signal reg00_q, reg01_q, reg02_q, reg03_q, reg04_q, reg05_q, reg06_q, reg07_q : std_logic_vector(31 downto 0);
    signal reg08_q, reg09_q, reg10_q, reg11_q, reg12_q, reg13_q, reg14_q, reg15_q : std_logic_vector(31 downto 0);
    signal reg16_q, reg17_q, reg18_q, reg19_q, reg20_q, reg21_q, reg22_q, reg23_q : std_logic_vector(31 downto 0);
    signal reg24_q, reg25_q, reg26_q, reg27_q, reg28_q, reg29_q, reg30_q, reg31_q : std_logic_vector(31 downto 0);
    signal reg_temp_q : std_logic_vector(31 downto 0);
    
begin
    reg0r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg00,
                        Clk => Clk,
                        Q => reg00_q
    );
    reg1r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg01,
                        Clk => Clk,
                        Q => reg01_q
    );
    reg2r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg02,
                        Clk => Clk,
                        Q => reg02_q
    );
    reg3r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg03,
                        Clk => Clk,
                        Q => reg03_q
    );
    reg4r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg04,
                        Clk => Clk,
                        Q => reg04_q
    );
    reg5r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg05,
                        Clk => Clk,
                        Q => reg05_q
    );
    reg6r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg06,
                        Clk => Clk,
                        Q => reg06_q
    );
    reg7r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg07,
                        Clk => Clk,
                        Q => reg07_q
    );
    reg8r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg08,
                        Clk => Clk,
                        Q => reg08_q
    );
    reg9r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg09,
                        Clk => Clk,
                        Q => reg09_q
    );
    reg10r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg10,
                        Clk => Clk,
                        Q => reg10_q
    );
    reg11r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg11,
                        Clk => Clk,
                        Q => reg11_q
    );
    reg12r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg12,
                        Clk => Clk,
                        Q => reg12_q
    );
    reg13r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg13,
                        Clk => Clk,
                        Q => reg13_q
    );
    reg14r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg14,
                        Clk => Clk,
                        Q => reg14_q
    );
    reg15r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg15,
                        Clk => Clk,
                        Q => reg15_q
    );
    reg16r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg16,
                        Clk => Clk,
                        Q => reg16_q
    );
    reg17r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg17,
                        Clk => Clk,
                        Q => reg17_q
    );
    reg18r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg18,
                        Clk => Clk,
                        Q => reg18_q
    );
    reg19r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg19,
                        Clk => Clk,
                        Q => reg19_q
    );
    reg20r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg20,
                        Clk => Clk,
                        Q => reg20_q
    );
    reg21r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg21,
                        Clk => Clk,
                        Q => reg21_q
    );
    reg22r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg22,
                        Clk => Clk,
                        Q => reg22_q
    );
    reg23r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg23,
                        Clk => Clk,
                        Q => reg23_q
    );
    reg24r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg24,
                        Clk => Clk,
                        Q => reg24_q
    );
    reg25r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg25,
                        Clk => Clk,
                        Q => reg25_q
    );
    reg26r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg26,
                        Clk => Clk,
                        Q => reg26_q
    );
    reg27r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg27,
                        Clk => Clk,
                        Q => reg27_q
    );
    reg28r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg28,
                        Clk => Clk,
                        Q => reg28_q
    );
    reg29r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg29,
                        Clk => Clk,
                        Q => reg29_q
    );
    reg30r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg30,
                        Clk => Clk,
                        Q => reg30_q
    );
    reg31r: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_reg31,
                        Clk => Clk,
                        Q => reg31_q
    );
    temp: reg32_20334203 PORT MAP(
                        D => data,
                        load => load_temp,
                        Clk => Clk,
                        Q => reg_temp_q
    );
    des_decoder_5to32: decoder5to32_20334203 PORT MAP(
                A => des_A,
                Q0 => load_reg00_init,
                Q1 => load_reg01_init,
                Q2 => load_reg02_init,
                Q3 => load_reg03_init,
                Q4 => load_reg04_init,
                Q5 => load_reg05_init,
                Q6 => load_reg06_init,
                Q7 => load_reg07_init,
                Q8 => load_reg08_init,
                Q9 => load_reg09_init,
                Q10=> load_reg10_init,
                Q11=> load_reg11_init,
                Q12=> load_reg12_init,
                Q13=> load_reg13_init,
                Q14=> load_reg14_init,
                Q15=> load_reg15_init,
                Q16=> load_reg16_init,
                Q17=> load_reg17_init,
                Q18=> load_reg18_init,
                Q19=> load_reg19_init,
                Q20=> load_reg20_init,
                Q21=> load_reg21_init,
                Q22=> load_reg22_init,
                Q23=> load_reg23_init,
                Q24=> load_reg24_init,
                Q25=> load_reg25_init,
                Q26=> load_reg26_init,
                Q27=> load_reg27_init,
                Q28=> load_reg28_init,
                Q29=> load_reg29_init,
                Q30=> load_reg30_init,
                Q31=> load_reg31_init,
                QTemp => load_temp_init
    );
    
    Inst_mux32_32bit_A: mux32_32bit20334203 PORT MAP(
                In0 => reg00_q,
                In1 => reg01_q,
                In2 => reg02_q,
                In3 => reg03_q,
                In4 => reg04_q,
                In5 => reg05_q,
                In6 => reg06_q,
                In7 => reg07_q,
                In8 => reg08_q,
                In9 => reg09_q,
                In10=> reg10_q,
                In11=> reg11_q,
                In12=> reg12_q,
                In13=> reg13_q,
                In14=> reg14_q,
                In15=> reg15_q,
                In16=> reg16_q,
                In17=> reg17_q,
                In18=> reg18_q,
                In19=> reg19_q,
                In20=> reg20_q,
                In21=> reg21_q,
                In22=> reg22_q,
                In23=> reg23_q,
                In24=> reg24_q,
                In25=> reg25_q,
                In26=> reg26_q,
                In27=> reg27_q,
                In28=> reg28_q,
                In29=> reg29_q,
                In30=> reg30_q,
                In31=> reg31_q,
                InTemp => reg_temp_q,
                S => src_S,
                Z => src_reg_A
    );
    Inst_mux32_32bit_B: mux32_32bit20334203 PORT MAP(
                In0 => reg00_q,                      
                In1 => reg01_q,                      
                In2 => reg02_q,                      
                In3 => reg03_q,                      
                In4 => reg04_q,                      
                In5 => reg05_q,                      
                In6 => reg06_q,                      
                In7 => reg07_q,                      
                In8 => reg08_q,                      
                In9 => reg09_q,                      
                In10=> reg10_q,                      
                In11=> reg11_q,                      
                In12=> reg12_q,                      
                In13=> reg13_q,                      
                In14=> reg14_q,                      
                In15=> reg15_q,                      
                In16=> reg16_q,                      
                In17=> reg17_q,                      
                In18=> reg18_q,                      
                In19=> reg19_q,                      
                In20=> reg20_q,                      
                In21=> reg21_q,                      
                In22=> reg22_q,                      
                In23=> reg23_q,                      
                In24=> reg24_q,                      
                In25=> reg25_q,                      
                In26=> reg26_q,                      
                In27=> reg27_q,                      
                In28=> reg28_q,                      
                In29=> reg29_q,                      
                In30=> reg30_q,                      
                In31=> reg31_q,
                InTemp => reg_temp_q,                      
                S => src_B,                          
                Z => src_reg_B                        
    );                                               
    
    
    load_reg00  <= load_reg00_init AND load;
    load_reg01  <= load_reg01_init AND load;
    load_reg02  <= load_reg02_init AND load;
    load_reg03  <= load_reg03_init AND load;
    load_reg04  <= load_reg04_init AND load;
    load_reg05  <= load_reg05_init AND load;
    load_reg06  <= load_reg06_init AND load;
    load_reg07  <= load_reg07_init AND load;
    load_reg08  <= load_reg08_init AND load;
    load_reg09  <= load_reg09_init AND load;
    load_reg10  <= load_reg10_init AND load;
    load_reg11  <= load_reg11_init AND load;
    load_reg12  <= load_reg12_init AND load;
    load_reg13  <= load_reg13_init AND load;
    load_reg14  <= load_reg14_init AND load;
    load_reg15  <= load_reg15_init AND load;
    load_reg16  <= load_reg16_init AND load;
    load_reg17  <= load_reg17_init AND load;
    load_reg18  <= load_reg18_init AND load;
    load_reg19  <= load_reg19_init AND load;
    load_reg20  <= load_reg20_init AND load;
    load_reg21  <= load_reg21_init AND load;
    load_reg22  <= load_reg22_init AND load;
    load_reg23  <= load_reg23_init AND load;
    load_reg24  <= load_reg24_init AND load;
    load_reg25  <= load_reg25_init AND load;
    load_reg26  <= load_reg26_init AND load;
    load_reg27  <= load_reg27_init AND load;
    load_reg28  <= load_reg28_init AND load;
    load_reg29  <= load_reg29_init AND load;
    load_reg30  <= load_reg30_init AND load;
    load_reg31  <= load_reg31_init AND load;
    load_temp <= load_temp_init AND load; 

end Behavioral;
