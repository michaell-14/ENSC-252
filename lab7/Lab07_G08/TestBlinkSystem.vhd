--Michael Lange, 301580599; Trevor Ruttan, 301580889; Rohin Gill, 301582525;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TestBlinkSystem is
    port(
        CLOCK_50 : in STD_LOGIC;
        SW : in STD_LOGIC_VECTOR(0 downto 0);
        HEX5 : out STD_LOGIC_VECTOR(6 downto 0);
        HEX4 : out STD_LOGIC_VECTOR(6 downto 0);
        HEX3 : out STD_LOGIC_VECTOR(6 downto 0);
        LEDR : out STD_LOGIC_VECTOR(17 downto 0);
		  LEDG : out STD_LOGIC_VECTOR(7 downto 0)
    );
end entity TestBlinkSystem;

architecture Behavioral of TestBlinkSystem is

    component BlinkSystem is
        port(
            clk : in STD_LOGIC;
            enable : in STD_LOGIC;
            HEX5 : out STD_LOGIC_VECTOR(6 downto 0);
            HEX4 : out STD_LOGIC_VECTOR(6 downto 0);
            HEX3 : out STD_LOGIC_VECTOR(6 downto 0);
            red_LEDs : out STD_LOGIC_VECTOR(17 downto 0)
				---green_LEDs : out std_LOGIC_VECTOR(7 downto 0)
        );
    end component;

begin

    -- Instantiate BlinkSystem
    blink_system_inst : BlinkSystem
        port map (
            clk => CLOCK_50,
            enable => SW(0),
            HEX5 => HEX5,
            HEX4 => HEX4,
            HEX3 => HEX3,
            red_LEDs => LEDR
				---green_LEDs => LEDG
        );
end Behavioral;