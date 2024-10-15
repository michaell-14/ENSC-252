-- Michael Lange, 301580599; Trevor Ruttan, 301580889; Rohin Gill, 301582525;

library IEEE;
use ieee.std_logic_1164.all;

entity Part3 is 
	port (
		SW : in std_logic_vector(9 downto 0);      -- 10 switches as input (only 8 are used)
		HEX0, HEX1 : out std_logic_vector(6 downto 0)  -- Outputs for two 7-segment displays
	);
end Part3;

architecture behavorial of Part3 is 
	-- Declaration of an internal signal (not used here, but declared as D and Y)
	-- Component declaration of SegDecoder
	
	component SegDecoder
		port (
			D : in std_logic_vector(3 downto 0);  -- 4-bit input for decoding input
			Y : out std_logic_vector(6 downto 0)  -- 7-bit output for 7-segment display
		);
	end component;

begin
	-- Instance of SegDecoder for HEX0
	-- The lower 4 switches (SW(3 downto 0)) are connected to the decoder's input (D)
	-- and the decoder's output (Y) is connected to HEX0, controlling the first display.
	hex0_decoder : SegDecoder
	port map (
		D => SW(3 downto 0),   -- Lower 4 switches control HEX0
		Y => HEX0(6 downto 0)              -- Output to the first 7-segment display
	);

	-- Instance of SegDecoder for HEX1
	-- The next 4 switches (SW(7 downto 4)) are connected to the decoder's input (D)
	-- and the decoder's output (Y) is connected to HEX1, controlling the second display.
	hex1_decoder : SegDecoder
	port map (
		D => SW(7 downto 4),   -- Upper 4 switches control HEX1
		Y => HEX1(6 downto 0)              -- Output to the second 7-segment display
	);

end behavorial;
