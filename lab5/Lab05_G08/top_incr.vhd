--Michael Lange, 301580599; Trevor Ruttan, 301580889; Rohin Gill, 301582525;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_incr is
    port (
        SW : in std_logic_vector(3 downto 0);
        KEY : in std_logic_vector(1 downto 0);
        HEX0 : out std_logic_vector(6 downto 0);
        HEX1 : out std_logic_vector(6 downto 0)
    );
end top_incr;

architecture behavioural of top_incr is
    -- Internal component signals
    signal incr_val : std_logic_vector(3 downto 0);          -- Increment from SW
    signal incr_count_out : std_logic_vector(5 downto 0);    -- Output of Fcount to DispHEX
    signal incr_count_unsigned : unsigned(5 downto 0);       -- Unsigned version of incr_count_out

    -- Component declarations
    component Fcount
        port (
            clk : in std_logic;
            reset : in std_logic;
            D : in std_logic_vector(3 downto 0);
            Y : out std_logic_vector(5 downto 0)
        );
    end component;

    component DispHEX
        port (
            D : in unsigned(5 downto 0);
            Y0 : out std_logic_vector(6 downto 0);
            Y1 : out std_logic_vector(6 downto 0)
        );
    end component;

begin
    incr_val <= SW;

    -- Instantiate Fcount
    Fcount_0 : Fcount
        port map (
            D => incr_val,
            clk => KEY(0),
            reset => KEY(1),
            Y => incr_count_out
        );

    -- Convert std_logic_vector to unsigned
    incr_count_unsigned <= unsigned(incr_count_out); -- Internal signal

    -- Instantiate DispHEX
    DispHEX_0 : DispHEX
        port map (
            D => incr_count_unsigned,
            Y0 => HEX0,
            Y1 => HEX1
        );
end behavioural;