-- incr.vhdl
-- Incrementer with parallel load and enable functionality

library ieee;
use ieee.std_logic_1164.all;

ENTITY incr_port5 is
    PORT (
        clk     : in std_logic;
        load    : in std_logic;
        enable  : in std_logic;
        D       : in std_logic_vector(3 downto 0);
        Q       : out std_logic_vector(3 downto 0)
    );
END incr_port5;

ARCHITECTURE Behavioral of incr_port5 is
       signal accumulator : std_logic_vector(3 downto 0) := (others => '0');
begin
    process (clk)
        variable carry : std_logic_vector(3 downto 0); -- Internal carries
        variable next_value : std_logic_vector(3 downto 0); -- MUX output
    begin
        if rising_edge(clk) then
            -- MUX logic: select between load (D) and increment operation
            if load = '1' then
                next_value := D; -- Load D into accumulator
            elsif enable = '1' then
                -- Calculate carry signals for increment operation
                carry(0) := enable;                             -- Carry into the first bit (Enable acts as carry for LSB)
                carry(1) := accumulator(0) AND carry(0);        -- Carry for bit 1
                carry(2) := accumulator(1) AND carry(1);        -- Carry for bit 2
                carry(3) := accumulator(2) AND carry(2);        -- Carry for bit 3

                -- Perform increment using XOR gates and carry bits
                next_value(0) := accumulator(0) XOR carry(0);
                next_value(1) := accumulator(1) XOR carry(1);
                next_value(2) := accumulator(2) XOR carry(2);
                next_value(3) := accumulator(3) XOR carry(3);
            else
                next_value := accumulator; -- Hold the current value if not loading or enabling
            end if;

            -- Update accumulator with the selected next value
            accumulator <= next_value;
        end if;
    end process;

    -- Assign accumulator to output Q
    Q <= accumulator;
END Behavioral;