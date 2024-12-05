--bogos
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bogos is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        W1 : in STD_LOGIC;
        W2 : in STD_LOGIC;
        Z : out STD_LOGIC
    );
end bogos;

architecture Behavioral of bogos is
    type state_type is (S0, S1, S2, S3, S4);
    signal current_state, next_state : state_type;
    signal C : STD_LOGIC; -- Comparison result
begin

    -- Compare W1 and W2
    C <= '1' when (W1 = W2) else '0';

    -- State transition process
    process (clk, reset)
    begin
        if reset = '1' then
            current_state <= S0;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;

    -- Next state logic
    process (current_state, C)
    begin
        case current_state is
            when S0 =>
                if C = '1' then
                    next_state <= S1;
                else
                    next_state <= S0;
                end if;
            when S1 =>
                if C = '1' then
                    next_state <= S2;
                else
                    next_state <= S0;
                end if;
            when S2 =>
                if C = '1' then
                    next_state <= S3;
                else
                    next_state <= S0;
                end if;
            when S3 =>
                if C = '1' then
                    next_state <= S4;
                else
                    next_state <= S0;
                end if;
            when S4 =>
                if C = '1' then
                    next_state <= S4;
                else
                    next_state <= S0;
                end if;
            when others =>
                next_state <= S0;
        end case;
    end process;

    -- Output logic
    Z <= '1' when current_state = S4 else '0';

end Behavioral;
