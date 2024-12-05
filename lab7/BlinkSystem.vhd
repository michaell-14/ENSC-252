--Michael Lange, 301580599; Trevor Ruttan, 301580889; Rohin Gill, 301582525;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BlinkSystem is 
    port(
        clk : in STD_LOGIC;
        enable : in STD_LOGIC;
        HEX5 : out STD_LOGIC_VECTOR(6 downto 0);
        HEX4 : out STD_LOGIC_VECTOR(6 downto 0);
        HEX3 : out STD_LOGIC_VECTOR(6 downto 0);
        red_LEDs : out STD_LOGIC_VECTOR(17 downto 0)
		  --green_LEDs : out std_LOGIC_VECTOR(7 downto 0)
    );
end entity BlinkSystem;

architecture sos of BlinkSystem is 
    signal blink : STD_LOGIC := '0';
    signal Seg0 : STD_LOGIC_VECTOR(6 downto 0) := "0010010";
    signal Seg1 : STD_LOGIC_VECTOR(6 downto 0) := "1000000";
    signal Seg2 : STD_LOGIC_VECTOR(6 downto 0) := "0010010";
	 signal Seg3 : std_logic_vector(6 downto 0) := "1111111";
    signal prescaled_clk : STD_LOGIC;

    component PreScale is 
        port(
            Inclock : in STD_LOGIC;
            Outclock : out STD_LOGIC
        );
    end component;
begin 
    scale : PreScale 
        port map(
            Inclock => clk,
            Outclock => prescaled_clk
        );
        
    process(prescaled_clk)
    begin
        if rising_edge(prescaled_clk) then
            blink <= NOT blink; -- Invert to toggle state
        end if;
    end process;

    -- Main driver
    process(enable, blink)
    begin
        if enable = '1' then
            if blink = '1' then
                HEX5 <= Seg0;
                HEX4 <= Seg1;
                HEX3 <= Seg2;
                red_LEDs <= (others => '1');
					 --green_LEDs <= (others => '1');
            else 
                HEX5 <= Seg3; -- All segments off
                HEX4 <= Seg3;
                HEX3 <= Seg3;
                red_LEDs <= (others => '0');
					 --green_LEDs <= (others => '0');
            end if;
        else 
          HEX5 <= Seg3; -- All segments off
          HEX4 <= Seg3;
          HEX3 <= Seg3;
          red_LEDs <= (others => '0');
			 --green_LEDs <= (others => '0'); 
        end if;
    end process;
end sos;