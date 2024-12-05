--q7_AAAAAAAH
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity q7_AAAAAAAH is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           w : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (2 downto 0));
end q7_AAAAAAAH;

architecture Behavioral of q7_AAAAAAAH is
    signal count : STD_LOGIC_VECTOR (2 downto 0) := "000";
begin

    process(clk, reset)
    begin
        if reset = '1' then
            count <= "000";
        elsif rising_edge(clk) then
            if w = '1' then
                count <= count + 2;
                if count = "110" or count = "111" then
                    count <= count - 8;
                end if;
            else
                count <= count - 1;
            end if;
        end if;
    end process;

    q <= count;

end Behavioral;