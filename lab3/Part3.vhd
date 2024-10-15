-- Michael Lange, 301580599; Trevor Ruttan, 301580889; Rohin Gill, 301582525;

library IEEE;
use ieee.std_logic_1164.all;

entity Part3 is 
	port (
		SW : in std_logic_vector(9 downto 0);      -- 10 switches as input (only 8 are used)
		KEY : in std_logic_vector(0 downto 0);      -- Push button
		HEX0, HEX1, HEX4, HEX5 : out std_logic_vector(6 downto 0)  -- Outputs for four 7-segment displays
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
	
	--toggle signal
	-- := is for variable assignment; <= is for signal assignment
	signal toggle_state : std_logic := '0';  -- Signal to store the toggle state (0 or 1)
	signal prev_key : std_logic := '0';      -- Signal to store the previous key state for edge detection

	--signal for controlling which disp using
	signal hex0_but, hex1_but : std_logic_vector(3 downto 0);
	signal hex4_but, hex5_but : std_logic_vector(3 downto 0);

begin
	-- Process to toggle the state on rising edge of KEY(0)
	-- RisingEdge dectects a change in signal
	-- Is using a flip flop in this process
	process(KEY)
	begin
		if rising_edge(KEY(0)) then
			toggle_state <= NOT toggle_state;  -- Flip the state on rising edge
		end if;
	end process;

	--conditional signal hex0, hex1, hex4, hex5
	hex0_but <= SW(3 downto 0) when toggle_state = '0' else (others => '0');  -- Control HEX0 or clear
	hex1_but <= SW(7 downto 4) when toggle_state = '0' else (others => '0');  -- Control HEX1 or clear
	hex4_but <= SW(3 downto 0) when toggle_state = '1' else (others => '0');  -- Control HEX4 or clear
	hex5_but <= SW(7 downto 4) when toggle_state = '1' else (others => '0');  -- Control HEX5 or clear


	
	-- Instance of SegDecoder for HEX0
	-- The lower 4 switches (SW(3 downto 0)) are connected to the decoder's input (D)
	-- and the decoder's output (Y) is connected to HEX0, controlling the first display.
	hex0_decoder : SegDecoder
	port map (
		D => hex0_but,   -- Lower 4 switches control HEX0
		Y => HEX0              -- Output to the first 7-segment display
	);

	-- Instance of SegDecoder for HEX1
	-- The next 4 switches (SW(7 downto 4)) are connected to the decoder's input (D)
	-- and the decoder's output (Y) is connected to HEX1, controlling the second display.
	hex1_decoder : SegDecoder
	port map (
		D => hex1_but,   -- Upper 4 switches control HEX1
		Y => HEX1             -- Output to the second 7-segment display
	);
	
	hex4_decoder : SegDecoder
	port map (
		D => hex4_but,   
		Y => HEX4
	);
	
	hex5_decoder : SegDecoder
	port map (
		D => hex5_but,   
		Y => HEX5        
	);
	

end behavorial;
