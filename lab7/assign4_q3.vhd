--assignment4 q3
--assign4_q3
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity assign4_q3 is
    Port (
        clk   : in  STD_LOGIC;     -- Clock input
        rst   : in  STD_LOGIC;     -- Asynchronous reset
        X     : in  STD_LOGIC;     -- Serial input bit
        Y     : out STD_LOGIC      -- Serial output bit (2's complement result)
    );
end assign4_q3;

architecture Behavioral of assign4_q3 is
    signal inverted_bit : STD_LOGIC;      -- Inverted bit
    signal carry        : STD_LOGIC := '1'; -- Initialize carry to 1 for 2's complement addition
begin

    process(clk, rst)
    begin
        if rst = '1' then
            carry <= '1';                -- Reset carry to 1
        elsif rising_edge(clk) then
            -- Step 1: Invert the input bit
            inverted_bit <= X xor '1';

            -- Step 2: Compute the output bit (current 2's complement bit)
            Y <= inverted_bit xor carry;

            -- Step 3: Update the carry for the next bit
            carry <= (inverted_bit and carry) or (carry and X) or (inverted_bit and X); -- Full adder carry logic
        end if;
    end process;

end Behavioral;
