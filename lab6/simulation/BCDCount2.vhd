-- Michael Lange, 301580599; Trevor Ruttan, 301580889; Rohin Gill, 301582525;

-- BCDCount2

library ieee;
use ieee.std_logic_1164.all;

entity BCDCount2 is 
    port(
        clear : in std_logic;
        en1 : in std_logic;
        clk1 : in std_logic;
        Din : in std_logic_vector(3 downto 0);
        BCD_0 : out std_logic_vector(3 downto 0);
        BCD_1 : out std_logic_vector(3 downto 0)
    );
end BCDCount2;

architecture behavioral_BCD of BCDCount2 is

    component Count4
        port (
            clk : in std_logic;
            enable : in std_logic;
            load : in std_logic;
            D : in std_logic_vector(3 downto 0);
            Q : out std_logic_vector(3 downto 0)
        );
    end component;
    
    signal Q_inter1 : std_logic_vector(3 downto 0);
    signal Q_inter2 : std_logic_vector(3 downto 0);

    signal and_out : std_logic_vector(1 downto 0);
    signal or_out : std_logic_vector(1 downto 0); 
	 
begin 
    -- load is managed in Count4
    Count4_1 : Count4
        port map(
            clk => clk1,
            D => Din,
            Q => Q_inter1,
            enable => en1,
            load => or_out(0)
        );
        
    Count4_2 : Count4
        port map(
            clk => clk1,
            D => Din,
            Q => Q_inter2,
            enable => and_out(0),
            load => or_out(1)
        );
        
    and_out(0) <= Q_inter1(0) AND Q_inter1(3);
    and_out(1) <= and_out(0) AND Q_inter2(3) AND Q_inter2(3);
    
    or_out(0) <= and_out(0) OR clear;
    or_out(1) <= and_out(1) OR clear;
    
    -- Assign outputs
    BCD_0 <= Q_inter1;
    BCD_1 <= Q_inter2;
    
end behavioral_BCD;