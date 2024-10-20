library IEEE;
use ieee.std_logic_1164.all;

entity Part3 is
    port (
        SW : in std_logic_vector(9 downto 0);      -- 10 switches as input (only 8 are used)
        KEY : in std_logic_vector(0 downto 0);     -- Push button input (KEY[0])
        HEX0, HEX1, HEX4, HEX5 : out std_logic_vector(6 downto 0)  -- Outputs for four 7-segment displays
    );
end Part3;

architecture behavioral of Part3 is
    component SegDecoder
        port (
            D : in std_logic_vector(3 downto 0);  -- 4-bit input for decoding input
            Y : out std_logic_vector(6 downto 0)  -- 7-bit output for 7-segment display
        );
    end component;

    -- Signals for decoded output
    signal hex0_out, hex1_out, hex4_out, hex5_out : std_logic_vector(6 downto 0);

    -- Signals for the data to be sent to the decoder
    signal hex0_but, hex1_but, hex4_but, hex5_but : std_logic_vector(3 downto 0);

begin

    -- Assign switch values based on the state of the KEY button
    process(KEY, SW)
    begin
        if (KEY(0) = '1') then
            -- If button is pressed, display values on HEX0 and HEX1
            hex0_but <= SW(3 downto 0);  -- Lower 4 bits of SW for HEX0
            hex1_but <= SW(7 downto 4);  -- Upper 4 bits of SW for HEX1
            -- Blank HEX4 and HEX5
            hex4_but <= "0000";
            hex5_but <= "0000";
        else
            -- If button is not pressed, display values on HEX4 and HEX5
            hex4_but <= SW(3 downto 0);  -- Lower 4 bits of SW for HEX4
            hex5_but <= SW(7 downto 4);  -- Upper 4 bits of SW for HEX5
            -- Blank HEX0 and HEX1
            hex0_but <= "0000";
            hex1_but <= "0000";
        end if;
    end process;

    -- Assign display values based on the decoded outputs
    HEX0 <= hex0_out when (KEY(0) = '1') else "1111111";  -- Display value or blank when KEY is not pressed
    HEX1 <= hex1_out when (KEY(0) = '1') else "1111111";
    HEX4 <= hex4_out when (KEY(0) = '0') else "1111111";
    HEX5 <= hex5_out when (KEY(0) = '0') else "1111111";

    -- Instances of SegDecoder for HEX0 and HEX1
    hex0_decoder : SegDecoder
        port map (
            D => hex0_but,
            Y => hex0_out
        );

    hex1_decoder : SegDecoder
        port map (
            D => hex1_but,
            Y => hex1_out
        );

    -- Instances of SegDecoder for HEX4 and HEX5
    hex4_decoder : SegDecoder
        port map (
            D => hex4_but,
            Y => hex4_out
        );

    hex5_decoder : SegDecoder
        port map (
            D => hex5_but,
            Y => hex5_out
        );

end behavioral;
