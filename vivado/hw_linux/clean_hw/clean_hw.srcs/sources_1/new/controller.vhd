----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/23/2021 06:17:37 PM
-- Design Name: 
-- Module Name: controller - Behavioral
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

entity controller is
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
    
           datmem_convert_o : out std_logic;
           
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
end controller;

architecture Behavioral of controller is
	
ATTRIBUTE X_INTERFACE_INFO                    : string;
ATTRIBUTE X_INTERFACE_PARAMETER 			  : STRING;


ATTRIBUTE X_INTERFACE_INFO OF ctl_addr_i     : SIGNAL IS "xilinx.com:interface:bram:1.0 ctl_BRAM ADDR";
ATTRIBUTE X_INTERFACE_INFO OF ctl_clk_i      : SIGNAL IS "xilinx.com:interface:bram:1.0 ctl_BRAM CLK";
ATTRIBUTE X_INTERFACE_INFO OF ctl_data_i     : SIGNAL IS "xilinx.com:interface:bram:1.0 ctl_BRAM DIN";
ATTRIBUTE X_INTERFACE_INFO OF ctl_data_o     : SIGNAL IS "xilinx.com:interface:bram:1.0 ctl_BRAM DOUT";
ATTRIBUTE X_INTERFACE_INFO OF ctl_ena_i      : SIGNAL IS "xilinx.com:interface:bram:1.0 ctl_BRAM EN";
ATTRIBUTE X_INTERFACE_INFO OF ctl_wea_i      : SIGNAL IS "xilinx.com:interface:bram:1.0 ctl_BRAM WE";
ATTRIBUTE X_INTERFACE_INFO OF ctl_rst_i      : SIGNAL IS "xilinx.com:interface:bram:1.0 ctl_BRAM RST";

signal clk              : std_logic := '0';
signal rst              : std_logic := '0';
signal clk_en           : std_logic := '0';
signal clk_counter      : integer := 0;         -- updated from ctl interface, divider for clk_en

-- ctl interface registers
signal ctl_reg_downcounter   : std_logic_vector (31 downto 0) := X"00000008";
signal ctl_reg_bits_to_write : std_logic_vector (31 downto 0) := X"00000004";
signal ctl_reg_control       : std_logic_vector (31 downto 0) := X"00000000";
signal ctl_reg_options       : std_logic_vector (31 downto 0) := X"00000000";
signal ctl_reg_shutter       : std_logic_vector (31 downto 0) := X"00000000";

--synchronisation domain (slow)
signal sync_reg_control : std_logic_vector (31 downto 0) := X"00000000";

-- events between processes
signal clk_update_counter       : std_logic := '0';
signal ctl_reg_control_event    : std_logic := '0';

-- FSM types/signals
type T_FSM_STATE is (FSM_STATE_IDLE, FSM_STATE_START, FSM_STATE_SCK_FALLING, FSM_STATE_SCK_RISING, FSM_STATE_END, FSM_STATE_SHUTTER);

signal fsm_State : T_FSM_STATE := FSM_STATE_IDLE; 

signal fsm_start_ack : std_logic := '0';

-- temporary register for tx data
signal mosidata :std_logic_vector( 31 downto 0);
--address to load from to tmp rx register
signal mosiaddress :unsigned (31 downto 0);
--pointer to current bit in word beeing written
signal mosibitptr: std_logic_vector(4 downto 0);

-- temporary register for rx data
signal misodata :std_logic_vector( 31 downto 0);
--address to load from to tmp rx register !! moved to writer process
--signal misoaddress :unsigned (31 downto 0);
--pointer to current bit in word beeing written
signal misobitptr: std_logic_vector(4 downto 0);

-- communicaiton between spi fsm and bram writer process
signal ipc_data: std_logic_vector (31 downto 0);
-- trigger to start writer fsm
signal ipc_write : std_logic := '0';
-- option to convert value - lfsr decode
signal ipc_convert :std_logic := '0';
-- reset fsm
signal ipc_reset :std_logic := '0';

-- BRAM WRITER FSM
type T_WRITER_STATE is (WRITER_STATE_IDLE, WRITER_STATE_1, WRITER_STATE_2, WRITER_STATE_3, WRITER_STATE_DECODE);
signal writer_state : T_WRITER_STATE := WRITER_STATE_IDLE;

--address to write to, we are using byte addressing => increment by 4
signal writer_address : std_logic_vector (31 downto 0);

-- user controls this variable
signal fsm_bits_sent : unsigned (31 downto 0) := X"00000000";

-- variable for skipping beginning(104b) of chips, if enabled by ctrl_reg_options(0)
signal fsm_skip_counter :unsigned (31 downto 0) := X"00000000";

-- counter for shutter delay 
signal fsm_shutter_counter : unsigned( 31 downto 0) := X"00000000";

-- decoded word to be stored in memory, enabled by ctl_reg_options(1)
signal decoded_word : std_logic_vector(31 downto 0);
signal decode_enable : std_logic;
-- simmilar function to fsm_bit sent, but this is internal ponter to every
-- possible bit ( 32 bit address + 5 bit  position of selected bit in memory word
-- to get specific bit we take upper 32 bit as memory address and lower 5 bits as 
-- position in that word 
-- same for rx
constant CTL_ADDR_REG_DOWNCOUNTER   : std_logic_vector (31 downto 0) := X"00000000";
constant CTL_ADDR_REG_BITS_TO_WRITE : std_logic_vector (31 downto 0) := X"00000004";
constant CTL_ADDR_REG_CONTROL       : std_logic_vector (31 downto 0) := X"00000008";
constant CTL_ADDR_REG_OPTIONS       : std_logic_vector (31 downto 0) := X"0000000C";
constant CTL_ADDR_REG_SHUTTER       : std_logic_vector (31 downto 0) := X"00000010";

-- ctl_reg_options: 0: rx align
--                  1: convert
--                  2: freerun


function reverse_any_vector (a: in std_logic_vector)
return std_logic_vector is
  variable result: std_logic_vector(a'RANGE);
  alias aa: std_logic_vector(a'REVERSE_RANGE) is a;
begin
  for i in aa'RANGE loop
    result(i) := aa(i);
  end loop;
  return result;
end; -- function reverse_any_vector


begin



    -- use clk from ctl bram interface as main clk
    clk <= ctl_clk_i;
    rst <= ctl_rst_i;

    cfgmem_rst_o <= '0';
    datmem_rst_o <= '0';
    
    cfgmem_clk_o <= ctl_clk_i;
    datmem_clk_o <= ctl_clk_i;
    -- process for clock dividing
    proc_clk : process(clk)
    begin
        if rising_edge(clk) then
            if clk_counter = to_integer(unsigned(ctl_reg_downcounter)) then
                -- update from control interface
                -- possible too high values
                clk_counter <= 0;
                clk_en <= '1';
            else
                clk_counter <= clk_counter + 1;
                clk_en <= '0';
            end if;

        -- seset counter if new value is set
            if clk_update_counter = '1' then
                clk_counter <= 0;
            end if;

        end if;
    end process proc_clk;

-- fake RAM interface with control/status registers
    proc_ctl: process (clk)
        
        -- procedure wor updating only bytes specified by WEN bits
        procedure write_selected (signal dst : inout std_logic_vector (31 downto 0);
                                  signal src : in std_logic_vector (31 downto 0 );
                                  signal wen : in std_logic_vector (3 downto 0 )
                              ) is
        begin
            if wen(0) = '1' then
                dst(7 downto 0) <= src(7 downto 0);
            end if;
            if wen(1) = '1' then
                dst(15 downto 8) <= src(15 downto 8);
            end if;
            if wen(2) = '1' then
                dst(23 downto 16) <= src(23 downto 16);
            end if;
            if wen(3) = '1' then
                dst(31 downto 24) <= src(31 downto 24);
            end if;
        end procedure;

    begin

        if rising_edge(clk) then
            -- reset in fast domain
            if rst = '1' then
                null;
            else
                -- default assigments
                clk_update_counter <= '0';
                ctl_reg_control_event <= '0';
                ctl_reg_control <= X"00000000";
                
                -- write to internal memory
                if ctl_ena_i = '1' then
                    
                    case ctl_addr_i is
                        when CTL_ADDR_REG_DOWNCOUNTER => 
                            write_selected( ctl_reg_downcounter ,ctl_data_i, ctl_wea_i);
                            clk_update_counter <= '1';

                        when CTL_ADDR_REG_BITS_TO_WRITE =>
                            write_selected(ctl_reg_bits_to_write, ctl_data_i, ctl_wea_i);

                        when CTL_ADDR_REG_CONTROL =>
                            write_selected(ctl_reg_control, ctl_data_i, ctl_wea_i);
                            ctl_reg_control_event <= '1';

                        when CTL_ADDR_REG_OPTIONS =>
                            write_selected(ctl_reg_options, ctl_data_i, ctl_wea_i);
                        
                        when CTL_ADDR_REG_SHUTTER =>
                            write_selected(ctl_reg_shutter, ctl_data_i, ctl_wea_i);

                        when others =>
                            null;
                    end case;
                end if;
            end if;
        end if;
    end process;


    proc_domain_sync: process (clk)
    begin
        if rising_edge(clk) then
            -- new data from cpu
            if ctl_reg_control_event = '1' then 
                -- copy from "fast" domain to long term register witk clken
                sync_reg_control <= ctl_reg_control;
            end if;
             
            -- bit 0 of sync reg starts fsm 
            -- zero back when fsm starts
            if fsm_start_ack = '1' then
                sync_reg_control(0) <= '0';
            end if;

        end if;
    end process proc_domain_sync;

    proc_fsm: process (clk)
    begin
        if rising_edge(clk) then


            if clk_en = '1' then 
                --do stuff here
            cfgmem_ena_o <= '0';

            -- ipc control
            --ipc_data <= X"00000000";
            ipc_write <= '0';
            ipc_convert <= '0';
            ipc_reset <= '0';    
                case fsm_state is

                    when FSM_STATE_IDLE =>
                        fsm_state <= FSM_STATE_IDLE;

                        sck_o <= '1';
                        cfgmem_ena_o <= '0';
                        cs_o <= '1';
                        mosi_o <= '1';
                        mosiaddress <= X"00000000";
                        mosidata <= X"00000000";
                        mosibitptr <=  "00000";

                        misodata <= X"00000000";
                        --misoaddress <= X"00000000"; -- movet to writer process
                        ipc_reset <= '1';
                        misobitptr <=  "00000";
                        fsm_bits_sent <= (others => '0');
                        fsm_skip_counter <= (others => '0');
                        datmem_convert_o <= ctl_reg_options(1);

                        if (sync_reg_control(0) = '1')  or (ctl_reg_options(2) = '1') then
                            fsm_state <= FSM_STATE_START;
                            fsm_start_ack <= '1';
                            
                            cfgmem_ena_o <= '1';
                            cfgmem_addr_o <= std_logic_vector(mosiaddress);
                        end if;

                    when FSM_STATE_SHUTTER =>
                        --simple delay

                        -- check if freerun enabled, if so skip idle
                        if fsm_shutter_counter < unsigned(ctl_reg_shutter) then 
                            fsm_shutter_counter <= fsm_shutter_counter + 1;
                            FSM_STATE <= FSM_STATE_SHUTTER;
                        else
                            fsm_shutter_counter <= X"00000000";
                            FSM_STATE <= FSM_STATE_IDLE;
                        end if;


                    when FSM_STATE_START =>
                        fsm_state <= FSM_STATE_SCK_FALLING;
                        -- clears bit in sync_reg_control, prevents loop
                        fsm_start_ack <= '0';

                        cs_o <= '0';
                        -- load data from ram to tmp register 
                        mosidata <= cfgmem_data_i;

                    when FSM_STATE_SCK_FALLING =>
                        sck_o <= '0';
                        cfgmem_ena_o <= '0';

                        mosi_o <= mosidata(to_integer(unsigned(mosibitptr)));
                        mosibitptr <= std_logic_vector(unsigned(mosibitptr) + 1);

                        if unsigned(mosibitptr) =29 then
                            mosiaddress <= unsigned(mosiaddress) + 4;
                        end if;

                        if unsigned(mosibitptr) =30 then
                            cfgmem_addr_o <= std_logic_vector(mosiaddress);
                            cfgmem_ena_o <= '1';
                        end if;

                        if unsigned(mosibitptr) = 31 then
                            mosidata <= cfgmem_data_i;
                            cfgmem_ena_o <= '1';
                        end if;
                        fsm_state <= FSM_STATE_SCK_RISING;

                    
                    when FSM_STATE_SCK_RISING =>
                        sck_o <= '1';

                        misodata(to_integer(unsigned(misobitptr))) <= miso_i;
                        misobitptr <= std_logic_vector(unsigned(misobitptr) + 1);

                        if unsigned(misobitptr) = 31 then
                    --        datmem_addr_o <= std_logic_vector(misoaddress);
                    --        datmem_ena_o <= '1';
                    --        datmem_wea_o <= X"f";
                    --        datmem_data_o <= misodata;
                    --       misoaddress <= unsigned(misoaddress) + 4;
                       ipc_data <= misodata;
                       ipc_write <= '1';
                        end if;
                        -- last bit delayed
                        if unsigned(misobitptr) = 0 then
                       ipc_data(31) <= misodata(31);
                        end if;

                        -- total bits sent counter
                        fsm_bits_sent <= fsm_bits_sent + 1;
                        fsm_skip_counter <= fsm_skip_counter + 1;

                        fsm_state <= FSM_STATE_SCK_FALLING;

                        if unsigned(ctl_reg_bits_to_write) -1 = fsm_bits_sent then
                            fsm_state <= FSM_STATE_END;
                     --       datmem_ena_o <= '1';
                     --       datmem_wea_o <= X"f";
                     --       datmem_data_o <= misodata;
                       ipc_data <= misodata;
                       ipc_write <= '1';
                        end if;
                        
                    -- don't write if skip enabled 
                        if ctl_reg_options(0) = '1' then
                            if fsm_skip_counter < 104 then
                                ipc_write <= '0';
                                misobitptr <= "00000";
                            end if;
                        -- skip on beginning of every chips
                            if fsm_skip_counter = 615 then
                                fsm_skip_counter <= X"00000000";
                            end if;
                        end if;

                        
                    when FSM_STATE_END =>
                        cs_o <= '1';
                        fsm_state <= FSM_STATE_SHUTTER;

                    when others =>
                        fsm_State <= FSM_STATE_IDLE;
                end case;
                    end if;
        end if;
    end process proc_fsm;

    -- process to writing retreived(miso) words to BRAM
    proc_write: process(clk)
    begin
        if rising_edge(clk) then
            
            if ipc_reset = '1' then
                writer_state <= WRITER_STATE_IDLE;
                writer_address <= X"00000000";
                decoded_word(31 downto 29) <= "000";
                decoded_word(15 downto 13) <= "000";
            end if;


            if clk_en = '1' then

                datmem_ena_o <= '0';
                datmem_wea_o <= X"0";

                case writer_state is 
                    
                    when WRITER_STATE_IDLE =>
                        if ipc_write = '1' then
                            writer_state <= WRITER_STATE_1;
                            datmem_data_o <= ipc_data;
                            datmem_addr_o <= writer_address;

                        end if;

                    when WRITER_STATE_1 =>
                        datmem_ena_o <= '1';
                        datmem_wea_o <= X"F";
                        writer_state <= WRITER_STATE_2;

                    when WRITER_STATE_2 =>
                        --wen and ena cleared by default assigments
                        writer_address <= std_logic_vector(unsigned(writer_address) + 4);
                        writer_state <= WRITER_STATE_IDLE;

                    
                    when others =>
                        writer_state <= WRITER_STATE_IDLE;


                end case;
                end if;
            end if;
    end process proc_write;

end Behavioral;
