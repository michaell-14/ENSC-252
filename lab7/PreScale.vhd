--Michael Lange, 301580599; Trevor Ruttan, 301580889; Rohin Gill, 301582525;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PreScale is 
    port(
        Inclock : in STD_LOGIC;
        Outclock : out STD_LOGIC
    );
end entity PreScale;

architecture PreScaling of PreScale is 
    signal counter : unsigned(24 downto 0) := (others => '0'); -- 25 bit counter
    constant N : unsigned(24 downto 0) := to_unsigned(25000000, 25); -- Prescaler factor (25 million) aka 25Mhz
begin 
    process(Inclock)
    begin
        if rising_edge(Inclock) then
            if counter = N - 1 then
                counter <= (others => '0');  -- Reset counter
            else
                counter <= counter + 1;  -- Increment counter
            end if;
        end if;
    end process;
     
    -- MSB
    Outclock <= counter(24); -- Assigning MSB to Outclock
end PreScaling;