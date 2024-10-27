--Michael Lange, 301580599; Trevor Ruttan, 301580889; Rohin Gill, 301582525;
library IEEE;
use ieee.std_logic_1164.all;

entity FullAdder is
    port (
        A, B, C : in std_logic;  -- A and B are the bits to be added, C is the carry-in
        sum, carry : out std_logic  -- sum is the result, carry is the carry-out
    );
end FullAdder;

architecture adderFunc of FullAdder is
begin
    -- Sum is calculated as A XOR B XOR C
    sum <= A XOR B XOR C;

    -- Carry is true if at least two of the inputs are true
    carry <= (A and B) or (B and C) or (A and C);
end adderFunc;
