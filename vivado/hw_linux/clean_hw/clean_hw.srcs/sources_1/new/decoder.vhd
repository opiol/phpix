----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
----------------------------------------------------------------------------------

ENTITY decoder IS
  PORT(
        conv_enable_i   : std_logic;
        -- input interface
        clk_i  : in STD_LOGIC;
        data_i : in  STD_LOGIC_VECTOR (31 downto 0);
        addr_i : in STD_LOGIC_VECTOR (31 downto 0);
        ena_i  : in STD_LOGIC;
        wea_i  : in STD_LOGIC_VECTOR (3 downto 0);
        
        -- output interface
        clk_o  : out STD_LOGIC;
        data_o : out  STD_LOGIC_VECTOR (31 downto 0);
        addr_o : out STD_LOGIC_VECTOR (31 downto 0);
        ena_o  : out STD_LOGIC;
        wea_o  : out STD_LOGIC_VECTOR (3 downto 0)
      );
END decoder;

ARCHITECTURE Behavioral OF decoder IS

component LFSR_convert_LUT IS
  PORT(
    LFSR_in             : IN    STD_LOGIC_VECTOR(12 DOWNTO 0);
    BIN_out             : OUT   STD_LOGIC_VECTOR(12 DOWNTO 0));
END component LFSR_convert_LUT;

signal decoded_word_h : std_logic_vector(12 downto 0);
signal decoded_word_l : std_logic_vector(12 downto 0);

BEGIN

    lfsr_decoder_h : LFSR_convert_LUT 
    port map (
        LFSR_in => data_i(28 downto 16),
        BIN_OUT => decoded_word_h
    );

    lfsr_decoder_l : LFSR_convert_LUT 
    port map (
        LFSR_in => data_i(12 downto 0),
        BIN_OUT => decoded_word_l
    );
 
--data_o <= data_i;
--addr_o <= addr_i;
--ena_o <= ena_i;
--wea_o <= wea_i;

    clk_o <= clk_i;
    
    main_proc: process(clk_i)
    BEGIN
  
        if rising_edge(clk_i) then
        
            --defaults
            wea_o <= X"0";
            ena_o <= '0';

            if wea_i = X"F" and ena_i = '1' then
                data_o <= data_i;
                addr_o <= addr_i;
                wea_o <= X"F";
                ena_o <= '1';
            end if;

            if conv_enable_i = '1' and wea_i = X"F" and ena_i = '1' then
                data_o <= "000" & decoded_word_h & "000" & decoded_word_l ;
                addr_o <= addr_i;
                wea_o <= X"F";
                ena_o <= '1';
            end if;
        end if;
        end process main_proc;

END Behavioral;

