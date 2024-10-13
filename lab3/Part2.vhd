--Michael Lange, 301580599; Trevor Ruttan, 301580889; Rohin Gill, 301582525;

library IEEE;
use ieee.std_logic_1164.all;

entity Part2 is
	Port ( 
			SW : in std_logic_vector( 9 downto 0 );
			LEDR : out std_logic_vector( 9 downto 0 ) 
			);
			
end Part2;

architecture behavorial of Part2 is
	begin
	
		LEDR <= SW;
		
	end behavorial;