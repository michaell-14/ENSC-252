--michael lange, 301580599; trevor ruttan, 123456789; rohin gill, 123456789;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ripple_top is
    port (
        SW    : in std_logic_vector(8 downto 0); -- FPGA switches for inputs
        LEDR  : out std_logic_vector(4 downto 0); -- FPGA LEDs for outputs
        HEX0  : out std_logic_vector(6 downto 0)  -- 7-segment display for sum
    );
end ripple_top;

architecture behavioral of ripple_top is
    -- Intermediate signals for connecting to the ripple carry adder
    signal x    : std_logic_vector(3 downto 0); -- Input X
    signal y    : std_logic_vector(3 downto 0); -- Input Y
    signal cin  : std_logic;                    -- Carry-in
    signal sum  : std_logic_vector(3 downto 0); -- Sum output
    signal cout : std_logic;                    -- Carry-out

    -- Instantiate the ripple carry adder
    component ripple_carry
        port(
            x, y : in std_logic_vector(3 downto 0);  -- Input vectors for both operands
            Cin : in std_logic;                      -- Carry-in
            s : out std_logic_vector(3 downto 0);    -- Output sum vector
            Cout : out std_logic                     -- Carry-out
        );
    end component;

    -- 7-segment display decoder for hexadecimal numbers
    function to_seven_segment(hex: std_logic_vector(3 downto 0)) return std_logic_vector is
        variable seg : std_logic_vector(6 downto 0);
    begin
        case hex is
            when "0000" => seg := "1000000"; -- 0
            when "0001" => seg := "1111001"; -- 1
            when "0010" => seg := "0100100"; -- 2
            when "0011" => seg := "0110000"; -- 3
            when "0100" => seg := "0011001"; -- 4
            when "0101" => seg := "0010010"; -- 5
            when "0110" => seg := "0000010"; -- 6
            when "0111" => seg := "1111000"; -- 7
            when "1000" => seg := "0000000"; -- 8
            when "1001" => seg := "0010000"; -- 9
            when "1010" => seg := "0001000"; -- A
            when "1011" => seg := "0000011"; -- B
            when "1100" => seg := "1000110"; -- C
            when "1101" => seg := "0100001"; -- D
            when "1110" => seg := "0000110"; -- E
            when "1111" => seg := "0001110"; -- F
            when others => seg := "1111111"; -- Blank
        end case;
        return seg;
    end function;

begin
    -- Map switches to input signals for the ripple carry adder
    x <= SW(3 downto 0);      -- SW(3..0) = X
    y <= SW(7 downto 4);      -- SW(7..4) = Y
    cin <= SW(8);             -- SW(8) = Cin

    -- Instantiate the ripple carry adder and connect signals
    UUT: ripple_carry
        port map (
            x    => x,
            y    => y,
            Cin  => cin,
            s    => sum,
            Cout => cout
        );

    -- Map outputs to LEDs
    LEDR(3 downto 0) <= sum;   -- LEDR(3..0) = Sum
    LEDR(4) <= cout;           -- LEDR(4) = Cout

    -- Display sum on 7-segment display (HEX0)
    HEX0 <= to_seven_segment(sum); -- Display sum on HEX0

end behavioral;

