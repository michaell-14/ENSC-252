--Michael Lange, 3016580599; Trevor Ruttan, 301580889; Rohin Gill, 301582525;
LIBRARY ieee ;
	USE ieee.std_logic_1164.all ;

ENTITY light_1 IS
	PORT(x1, x2 : IN STD_LOGIC ;
	f : OUT STD_LOGIC);
END light_1 ;

ARCHITECTURE LogicFunction OF light_1 IS
BEGIN
	f <= (x1 AND NOT x2) OR (NOT x1 AND x2) ;
END LogicFunction ;
