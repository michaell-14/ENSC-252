--michael lange, 301580599; trevor ruttan, 123456789; rohin gill, 123456789;

library IEEE;
use ieee.std_logic_1164.all;

entity ripple_carry is 
    port(
        x, y : in std_logic_vector(3 downto 0);  -- Input vectors for both operands
        Cin : in std_logic;  -- Carry-in
        s : out std_logic_vector(3 downto 0);  -- Output sum vector
        Cout : out std_logic  -- Carry-out
    );
end ripple_carry;

architecture RippleCarry of ripple_carry is
    signal c : std_logic_vector(3 downto 1); -- Internal carry signals

    component FullAdder
        port(
            A, B, C : in std_logic;  -- A and B are the bits to be added, C is the carry-in
            sum, carry : out std_logic  -- Output sum and carry
        );
    end component;
    
begin
    -- Full adder instantiations with downto notation
    FA_0 : FullAdder port map(x(0), y(0), Cin, s(0), c(1));
    FA_1 : FullAdder port map(x(1), y(1), c(1), s(1), c(2));
    FA_2 : FullAdder port map(x(2), y(2), c(2), s(2), c(3));
    FA_3 : FullAdder port map(x(3), y(3), c(3), s(3), Cout);

end RippleCarry;
