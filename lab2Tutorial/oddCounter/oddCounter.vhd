LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY oddCounter is 
	PORT(
			x1 : in STD_LOGIC;
			x2 : in STD_LOGIC;
			x3 : in STD_LOGIC;
			x4 : in STD_LOGIC;
			f : out STD_LOGIC
		);
	END oddCounter;
	
	
architecture Behavorial of oddCounter is
signal a,b : std_logic;
component light_1
	PORT(x1, x2 : IN STD_LOGIC ;
	f : OUT STD_LOGIC);
	end component;

	begin
		stage1: light_1 port map(x1, x2, a);
		stage2: light_1 port map(x3, x4, b);
		stage3: light_1 port map(a,b,f);
	
end behavorial;