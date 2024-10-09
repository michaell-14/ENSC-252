--Michael Lange, 301580599; Trevor Ruttan, ; Rohin Gill, 
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY oddThing IS
	PORT (A,B,C,D : IN STD_LOGIC;
			f 		  : OUT STD_LOGIC);
END oddThing;

ARCHITECTURE oddFunction OF oddThing IS
	BEGIN
		f <= (A XOR B) XOR (C XOR D);
	END oddFunction;