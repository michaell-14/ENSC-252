library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Fcount is
    port (
			clk : in std_logic;
			reset : in std_logic;
			D : in std_logic_vector(3 downto 0);
			Y : out std_logic_vector(5 downto 0)
    );
end entity Fcount;

architecture Behavioral of Fcount is
    signal acc : unsigned(5 downto 0) := (others => '0');
begin
    process (clk, reset)
    begin
        if reset = '1' then
            acc <= (others => '0');
        elsif rising_edge(clk) then
            acc <= acc + unsigned(D);
				--plus is addition but doesnt need full adder; plus (+) operater
				--from numeric library 
				--When the accumulated value exceeds 63, it wraps around to 0 due to the nature of unsigned arithmetic (overflow behavior).
        end if;
    end process;

    Y <= std_logic_vector(acc);
end architecture Behavioral;

