library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DispHEX is
    port (
        D : in unsigned(5 downto 0);
        HEX0 : out std_logic_vector(6 downto 0);
        HEX1 : out std_logic_vector(6 downto 0)
    );
end entity DispHEX;

architecture Structural of DispHEX is
    signal lower_4_bits : std_logic_vector(3 downto 0);
    signal upper_2_bits : std_logic_vector(3 downto 0);
begin
    -- Split the 6-bit input into two parts
    lower_4_bits <= std_logic_vector(D(3 downto 0));
    upper_2_bits <= std_logic_vector("00" & D(5 downto 4));

    -- Instantiate SegDecoder modules
    SegDecoder0: entity work.SegDecoder --work.SegDecoder --> is referencing SegDecoder from the work file to avoid confusion
        port map (
            D => lower_4_bits,
            Y => HEX0
        );

    SegDecoder1: entity work.SegDecoder
        port map (
            D => upper_2_bits,
            Y => HEX1
        );
end architecture Structural;