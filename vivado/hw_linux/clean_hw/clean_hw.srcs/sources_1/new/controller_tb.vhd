library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controller_tb is
end controller_tb;

architecture tb of controller_tb is
    signal clk : std_logic;

    constant clk_period :time := 20 ns;

signal cfgmem_clk_o_signal  : STD_LOGIC;
signal cfgmem_rst_o_signal  : STD_LOGIC;
signal cfgmem_data_i_signal : STD_LOGIC_VECTOR (31 downto 0);
signal cfgmem_data_o_signal : STD_LOGIC_VECTOR (31 downto 0);
signal cfgmem_ena_o_signal  : STD_LOGIC;
signal cfgmem_wea_o_signal  : STD_LOGIC_VECTOR (3 downto 0);
signal cfgmem_addr_o_signal : STD_LOGIC_VECTOR (31 downto 0);

signal datmem_clk_o_signal  : STD_LOGIC;
signal datmem_rst_o_signal  : STD_LOGIC;
signal datmem_data_i_signal : STD_LOGIC_VECTOR (31 downto 0);
signal datmem_data_o_signal : STD_LOGIC_VECTOR (31 downto 0);
signal datmem_ena_o_signal  : STD_LOGIC;
signal datmem_wea_o_signal  : STD_LOGIC_VECTOR (3 downto 0);
signal datmem_addr_o_signal : STD_LOGIC_VECTOR (31 downto 0);

signal ctl_clk_i_signal  : STD_LOGIC;
signal ctl_rst_i_signal  : STD_LOGIC;
signal ctl_data_i_signal : STD_LOGIC_VECTOR (31 downto 0);
signal ctl_data_o_signal : STD_LOGIC_VECTOR (31 downto 0);
signal ctl_ena_i_signal  : STD_LOGIC;
signal ctl_wea_i_signal  : STD_LOGIC_VECTOR (3 downto 0);
signal ctl_addr_i_signal : STD_LOGIC_VECTOR (31 downto 0);

signal mosi_o_signal  : std_logic;
signal miso_i_signal  : std_logic;
signal sck_o_signal   : std_logic;
signal cs_o_signal    : std_logic;
signal leds_o_signal  : std_logic_vector (7 downto 0);

type memory_t is array (2 downto 0) of std_logic_vector (31 downto 0);

signal cfgmem : memory_t := ((X"00000000"), (X"cffffff3"), ( X"80001111"));
signal datmem : memory_t ;

constant CTL_ADDR_REG_DOWNCOUNTER   : std_logic_vector (31 downto 0) := X"00000000";
constant CTL_ADDR_REG_BITS_TO_WRITE : std_logic_vector (31 downto 0) := X"00000004";


    component controller 
    Port ( 
            -- config data for sending to phpix
           cfgmem_clk_o  : out STD_LOGIC;
           cfgmem_rst_o  : out STD_LOGIC;
           cfgmem_data_i : in  STD_LOGIC_VECTOR (31 downto 0);
           cfgmem_data_o : out STD_LOGIC_VECTOR (31 downto 0);
           cfgmem_ena_o  : out STD_LOGIC;
           cfgmem_wea_o  : out STD_LOGIC_VECTOR (3 downto 0);
           cfgmem_addr_o : out STD_LOGIC_VECTOR (31 downto 0);
           
           -- received phpix data
           datmem_clk_o  : out STD_LOGIC;
           datmem_rst_o  : out STD_LOGIC;
           datmem_data_i : in  STD_LOGIC_VECTOR (31 downto 0);
           datmem_data_o : out STD_LOGIC_VECTOR (31 downto 0);
           datmem_ena_o  : out STD_LOGIC;
           datmem_wea_o  : out STD_LOGIC_VECTOR (3 downto 0);
           datmem_addr_o : out STD_LOGIC_VECTOR (31 downto 0);
           
           -- control interface (slave)
           ctl_clk_i  : in  STD_LOGIC;
           ctl_rst_i  : in  STD_LOGIC;
           ctl_data_i : in  STD_LOGIC_VECTOR (31 downto 0);
           ctl_data_o : out STD_LOGIC_VECTOR (31 downto 0);
           ctl_ena_i  : in  STD_LOGIC;
           ctl_wea_i  : in  STD_LOGIC_VECTOR (3 downto 0);
           ctl_addr_i : in  STD_LOGIC_VECTOR (31 downto 0);
    
            --phpix interface
            mosi_o  : out std_logic;
            miso_i  : in  std_logic;
            sck_o   : out std_logic;
            cs_o    : out std_logic;

           -- misc
           leds_o   : out std_logic_vector (7 downto 0)
           );
    end component;

begin

    uut: controller 
    port map (
           cfgmem_clk_o  => cfgmem_clk_o_signal,  
           cfgmem_rst_o  => cfgmem_rst_o_signal,  
           cfgmem_data_i => cfgmem_data_i_signal, 
           cfgmem_data_o => cfgmem_data_o_signal, 
           cfgmem_ena_o  => cfgmem_ena_o_signal,  
           cfgmem_wea_o  => cfgmem_wea_o_signal,  
           cfgmem_addr_o => cfgmem_addr_o_signal, 
           
           datmem_clk_o  => datmem_clk_o_signal,  
           datmem_rst_o  => datmem_rst_o_signal,  
           datmem_data_i => datmem_data_i_signal, 
           datmem_data_o => datmem_data_o_signal, 
           datmem_ena_o  => datmem_ena_o_signal,   
           datmem_wea_o  => datmem_wea_o_signal,  
           datmem_addr_o => datmem_addr_o_signal, 

           ctl_clk_i  => ctl_clk_i_signal,  
           ctl_rst_i  => ctl_rst_i_signal,  
           ctl_data_i => ctl_data_i_signal, 
           ctl_data_o => ctl_data_o_signal, 
           ctl_ena_i  => ctl_ena_i_signal, 
           ctl_wea_i  => ctl_wea_i_signal, 
           ctl_addr_i => ctl_addr_i_signal, 

           mosi_o  => mosi_o_signal, 
           miso_i  => '1', 
           sck_o   => sck_o_signal, 
           cs_o    => cs_o_signal, 
           
           leds_o   => leds_o_signal 
           );

    proc_clk: process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    -- main clk
    ctl_clk_i_signal <= clk;

    -- assign cfgmem interface (read only)
   -- cfgmem_data_i_signal <= cfgmem(to_integer(unsigned(cfgmem_addr_o_signal)));
   -- datmem(to_integer(unsigned(datmem_addr_o_signal))) <= datmem_data_o_signal;

    -- loop SPI = data in memories should be identical
    miso_i_signal <= mosi_o_signal;

    process 
    begin
        wait for clk_period;

        ctl_addr_i_signal <= X"00000001";
        ctl_data_i_signal <= X"DEADBABE";
        wait for clk_period;

        -- single byte write test
        ctl_ena_i_signal <=  '1';
        wait for clk_period;

        ctl_wea_i_signal <= X"1";
        wait for clk_period;

        ctl_wea_i_signal <= X"2";
        wait for clk_period;

        ctl_wea_i_signal <= X"4";
        ctl_ena_i_signal <= '0';
        wait for clk_period;

        ctl_wea_i_signal <= X"F";
        ctl_ena_i_signal <= '1';
        ctl_data_i_signal <= X"87654321";
        wait for clk_period;

        ctl_ena_i_signal <= '0';
        ctl_data_i_signal <= X"00000000";
        wait for clk_period * 10;

        -- clock division and update 
        ctl_addr_i_signal <= CTL_ADDR_REG_DOWNCOUNTER;
        ctl_data_i_signal <= X"00000003";
        ctl_ena_i_signal <= '1';
        wait for clk_period;

        ctl_addr_i_signal <= X"00000000";
        ctl_data_i_signal <= X"00000000";
        ctl_wea_i_signal <= X"0";
        ctl_ena_i_signal <= '0';
        wait for clk_period*20;

        -- set number of bits to send 
        ctl_addr_i_signal <= CTL_ADDR_REG_BITS_TO_WRITE;
        ctl_data_i_signal <= X"00000100";
        ctl_wea_i_signal <= X"F";
        ctl_ena_i_signal <= '1';
        wait for clk_period;

        ctl_addr_i_signal <= X"00000000";
        ctl_data_i_signal <= X"00000000";
        ctl_wea_i_signal <= X"0";
        ctl_ena_i_signal <= '0';
        wait for clk_period;
        
                -- skip header and convert and freerun
        ctl_addr_i_signal <= X"0000000C";
        ctl_data_i_signal <= X"00000007";
        ctl_wea_i_signal <= X"F";
        ctl_ena_i_signal <= '1';
        wait for clk_period;

        ctl_addr_i_signal <= X"00000000";
        ctl_data_i_signal <= X"00000000";
        ctl_wea_i_signal <= X"0";
        ctl_ena_i_signal <= '0';
        wait for clk_period;
        
       -- shutter
        ctl_addr_i_signal <= X"00000010";
        ctl_data_i_signal <= X"000000ff";
        ctl_wea_i_signal <= X"F";
        ctl_ena_i_signal <= '1';
        wait for clk_period;

        ctl_addr_i_signal <= X"00000000";
        ctl_data_i_signal <= X"00000000";
        ctl_wea_i_signal <= X"0";
        ctl_ena_i_signal <= '0';
        wait for clk_period;

--        cfgmem(0) <=  (X"00000000");


        -- start transmissio
        ctl_addr_i_signal <= X"00000008";
        ctl_data_i_signal <= X"00000001";
        ctl_wea_i_signal <= X"F";
        ctl_ena_i_signal <= '1';
        wait for clk_period;

        ctl_addr_i_signal <= X"00000000";
        ctl_data_i_signal <= X"00000000";
        ctl_wea_i_signal <= X"0";
        ctl_ena_i_signal <= '0';
        wait for clk_period*1000;
        
                -- start transmissio
        ctl_addr_i_signal <= X"00000008";
        ctl_data_i_signal <= X"00000001";
        ctl_wea_i_signal <= X"F";
        ctl_ena_i_signal <= '1';
        wait for clk_period;

        ctl_addr_i_signal <= X"00000000";
        ctl_data_i_signal <= X"00000000";
        ctl_wea_i_signal <= X"0";
        ctl_ena_i_signal <= '0';
        wait for clk_period*20;
        

        wait;
    end process;
end tb;
