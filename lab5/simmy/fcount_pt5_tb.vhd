--Michael Lange, 301580599; Trevor Ruttan, 301580889; Rohin Gill, 301582525;
--for part 5
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fcount_tb is
end entity fcount_tb;

architecture Behavioral of fcount_tb is
    signal clk : std_logic := '0';
    signal reset : std_logic := '0';
    signal D : std_logic_vector(3 downto 0) := (others => '0');
    signal Y : std_logic_vector(5 downto 0);

    -- Instantiate the Unit Under Test (UUT)
    component Fcount is
        port (
            clk : in std_logic;
            reset : in std_logic;
            D : in std_logic_vector(3 downto 0);
            Y : out std_logic_vector(5 downto 0)
        );
    end component;

begin
    UUT: Fcount
        port map (
            clk => clk,
            reset => reset,
            D => D,
            Y => Y
        );

    -- Clock generation
    clk_process : process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Test reset functionality
        reset <= '1'; wait for 20 ns;
        reset <= '0'; wait for 20 ns;

        -- Test increment with various values
        D <= "0001"; wait for 20 ns;
        D <= "0010"; wait for 20 ns;
        D <= "0011"; wait for 20 ns;
        D <= "1000"; wait for 20 ns;
        D <= "1111"; wait for 20 ns;

        -- Test overflow condition
        D <= "1111"; wait for 200 ns;

        wait;
    end process;
end architecture Behavioral;