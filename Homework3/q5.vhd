library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity q5 is
    Port (
        Clk     : in  STD_LOGIC;
        Load1   : in  STD_LOGIC;
        Load2   : in  STD_LOGIC;
        Data1   : in  STD_LOGIC_VECTOR(3 downto 0);
        Data2   : in  STD_LOGIC_VECTOR(3 downto 0);
        Q       : out STD_LOGIC_VECTOR(3 downto 0)
    );
end q5;

architecture Behavioral of q5 is
    signal MUX_out : STD_LOGIC_VECTOR(3 downto 0);
    signal Reg     : STD_LOGIC_VECTOR(3 downto 0);
begin
    -- Multiplexer selection logic
    process(Load1, Load2, Data1, Data2)
    begin
        if (Load1 = '1' and Load2 = '0') then
            MUX_out <= Data1;
        elsif (Load1 = '0' and Load2 = '1') then
            MUX_out <= Data2;
        else
            MUX_out <= Reg; -- Hold current state if neither load signal is active
        end if;
    end process;

    -- Negative-edge triggered D flip-flop logic
    process(Clk)
    begin
        if falling_edge(Clk) then
            Reg <= MUX_out;
        end if;
    end process;

    -- Output assignment
    Q <= Reg;

end Behavioral;
