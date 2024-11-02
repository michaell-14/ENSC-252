library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_test is
    port (
        SW : in unsigned(5 downto 0);      -- Switches for input
        HEX0 : out std_logic_vector(6 downto 0); -- 7-segment display 0
        HEX1 : out std_logic_vector(6 downto 0)  -- 7-segment display 1
    );
end entity top_test;

architecture Behavioral of top_test is
    -- Instantiate the DispHEX component
    component DispHEX is
        port (
            D : in unsigned(5 downto 0);
            HEX0 : out std_logic_vector(6 downto 0);
            HEX1 : out std_logic_vector(6 downto 0)
        );
    end component;

begin
    -- Map the inputs and outputs to the DispHEX component
	 --UUT is Unit Under Test
	 --We are testing DispHEX here
    UUT: DispHEX
        port map (
            D => SW,
            HEX0 => HEX0,
            HEX1 => HEX1
        );
end architecture Behavioral;