LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY oddCounter is 
	PORT(
			a : in STD_LOGIC;
			b : in STD_LOGIC;
			c : in STD_LOGIC;
			d : in STD_LOGIC;
			E : inout STD_LOGIC;
			F : inout STD_LOGIC;
			G : out STD_LOGIC
		);
	END oddCounter;
	
architecture Behavorial of oddCounter is
	begin
		E <= (a AND NOT b) OR (NOT a AND b);
		F <= (c AND NOT d) OR (NOT c AND d);
		G <= (E AND NOT F) OR (NOT E AND F);
	end behavorial;