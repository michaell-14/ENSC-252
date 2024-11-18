--Michael Lange, 301580599; Trevor Ruttan, 301580889; Rohin Gill, 301582525;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PreScale is 
    port(
        clk_in : in std_logic;
        clk_out : out std_logic
    );
end entity PreScale;

architecture behavioral of PreScale is
    signal counter : std_logic_vector(19 downto 0) := (others => '0');
begin
    process(clk_in)
    begin
        if rising_edge(clk_in) then
            counter <= std_logic_vector(unsigned(counter) + 1);
            
            if unsigned(counter) = to_unsigned(2**20 - 1, 20) then --every 20 regular cylce = 1 cycle for board
                counter <= (others => '0');
            end if;
        end if;
    end process;
    
    clk_out <= counter(19);
end behavioral;