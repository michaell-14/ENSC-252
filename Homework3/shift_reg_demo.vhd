library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity shift_reg_demo is 
    port(
        clk : in std_logic;
        reset : in std_logic;
        selec : in std_logic; -- load (0) or shift (1)
        B_in : in std_logic_vector (3 downto 0);
        Q_out : out std_logic_vector (3 downto 0)
    );
end shift_reg_demo;

architecture behavioral of shift_reg_demo is
    signal load : std_logic;
    signal shift : std_logic;
    signal Q : std_logic_vector (3 downto 0);
begin
    load <= NOT selec; -- load is when shift signal (selec) = 0 
    shift <= selec; -- shift is when selec = 1

    process(clk, reset)
    begin 
        if reset = '1' then
            Q <= "0000";
        elsif rising_edge(clk) then 
            if load = '1' then 
                Q <= B_in;
            elsif shift = '1' then 
                Q <= Q(2 downto 0) & '0'; -- shift right one bit and assigns 0 to first FF
            end if;
        end if;
    end process;

    Q_out <= Q;
end behavioral;