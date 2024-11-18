-- Michael Lange, 301580599; Trevor Ruttan, 301580889; Rohin Gill, 301582525;
library ieee;
use ieee.std_logic_1164.all;

entity TestBCDCount2 is
    port(
        CLOCK_50 : in std_logic;                     
        KEY : in std_logic_vector(1 downto 0);       
        SW : in std_logic_vector(0 downto 0);        
        LEDR : out std_logic_vector(7 downto 0)      
    );
end TestBCDCount2;

architecture test of TestBCDCount2 is

    -- COMPONENT DECLARATION
    component BCDCount2
        port(
            clear : in std_logic;                    
            en1 : in std_logic;                      
            clk1 : in std_logic;                     
            Din : in std_logic_vector(3 downto 0);   --not used here
            BCD_0 : out std_logic_vector(3 downto 0);
            BCD_1 : out std_logic_vector(3 downto 0) 
        );
    end component;

    -- INTERNAL SIGNALS
    signal clear_signal : std_logic;                 
    signal enable_signal : std_logic;                
    signal clock_signal : std_logic;                 
    signal BCD0, BCD1 : std_logic_vector(3 downto 0);

begin

    -- MAP INPUTS TO SIGNALS
    clear_signal <= NOT KEY(1);                      -- KEY(1) is active-low; invert to make it active-high
    clock_signal <= NOT KEY(0);                      -- KEY(0) is active-low; invert to make it active-high
    enable_signal <= SW(0);                         

    -- INSTANTIATE BCDCount2
    BCDCounter : BCDCount2
        port map(
            clear => clear_signal,                   
            en1 => enable_signal,                   
            clk1 => clock_signal,                   
            Din => (others => '0'),                  
            BCD_0 => BCD0,                           
            BCD_1 => BCD1                            
        );

    -- CONNECT BCD OUTPUTS TO LEDS
    LEDR(3 downto 0) <= BCD0;                        
    LEDR(7 downto 4) <= BCD1;                        

end test;
