--Michael Lange, 301580599; Trevor Ruttan, 301580889; Rohin Gill, 301582525;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY incr is
    PORT (
        clk : in std_logic;
        f : out unsigned(5 downto 0)
    );
END ENTITY incr;

ARCHITECTURE Behavioral of incr is
    signal accumulator : unsigned(5 downto 0) := (others => '0');
begin
    process (clk)
    begin
        if rising_edge(clk) then
            accumulator <= accumulator + 1;
        end if;
    end process;

    f <= accumulator;
END ARCHITECTURE Behavioral;