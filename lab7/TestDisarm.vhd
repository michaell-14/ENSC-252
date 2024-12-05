--Michael Lange, 301580599; Trevor Ruttan, 301580889; Rohin Gill, 301582525;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TestDisarm is
    port(
        KEY : in std_logic_vector(0 downto 0); -- System clock
        SW : in std_logic_vector(1 downto 0);  
        HEX0 : out std_logic_vector(6 downto 0); 
        HEX1 : out std_logic_vector(6 downto 0); 
        HEX2 : out std_logic_vector(6 downto 0); 
        LEDR : out std_logic
    );
end TestDisarm;

architecture Test of TestDisarm is
    -- Component Declaration for the FSM
    component DisarmSystem is
        port(
            w : in std_logic_vector(1 downto 0);     
            clk_in : in std_logic;                   
            SSeg0 : out std_logic_vector(6 downto 0); 
            SSeg1 : out std_logic_vector(6 downto 0); 
            SSeg2 : out std_logic_vector(6 downto 0); 
            disarm_main : out std_logic                   
        );
    end component;

    -- Signals to connect the FSM component
    signal clk : std_logic;                  
    signal pin_input : std_logic_vector(1 downto 0); 
    signal seg0, seg1, seg2 : std_logic_vector(6 downto 0); 
    signal disarm_signal : std_logic;         
    
begin
    -- Map the clock and keypad input to the component
    clk <= KEY(0);               
    pin_input <= SW;          

    -- Instantiate the FSM (DisarmSystem)
    FSM_Instance : DisarmSystem
        port map(
            w => pin_input,     
            clk_in => clk,         
            SSeg0 => seg2,        
            SSeg1 => seg1,         
            SSeg2 => seg0,         
            disarm_main => disarm_signal 
        );

    HEX0 <= seg0;                 
    HEX1 <= seg1;                 
    HEX2 <= seg2;               
    LEDR <= disarm_signal;        
end Test;
