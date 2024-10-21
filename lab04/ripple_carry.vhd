--michael lange, 301580599; trevor ruttan, 123456789; rohin gill, 123456789;

library IEEE;
use ieee.std_logic_1164.all;

entity RippleCarry is 
	port(
			x0, x1, x2, x3, y0, y1, y2, y3, Cin : in std_logic;
			s0, s1, s2, s3, Cout : out std_logic 
			);
	