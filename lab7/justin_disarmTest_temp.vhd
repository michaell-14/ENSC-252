LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;


ENTITY justin_disarmTest_temp IS
	PORT (KEY : IN STD_LOGIC_VECTOR (0 DOWNTO 0);
			SW : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			HEX2 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
			HEX1 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
			HEX0 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
			LEDR : OUT STD_LOGIC_VECTOR (9 DOWNTO 0));
	END justin_disarmTest_temp;
	
	
ARCHITECTURE Structural OF justin_disarmTest_temp IS
	COMPONENT justin_disarm_temp
		PORT (Clock : IN STD_LOGIC;
				w : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
				sseg2 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
				sseg1 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
				sseg0 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
				disarm : OUT STD_LOGIC);
		END COMPONENT;
		
		SIGNAL DisarmSignal : STD_LOGIC;
		
		
BEGIN 
	DisarmInstantiate: justin_disarm_temp
		PORT MAP (Clock => KEY(0),
					 w => SW,
					 sseg2 => HEX2,
					 sseg1 => HEX1,
					 sseg0 => HEX0,
					 disarm => DisarmSignal);
					 
		LEDR <= (OTHERS => '0');

END Structural;	