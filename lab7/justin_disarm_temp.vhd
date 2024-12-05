LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;


ENTITY justin_disarm_temp IS
	PORT (Clock : IN STD_LOGIC;
			w : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			sseg2 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
			sseg1 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
			sseg0 : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
			disarm : OUT STD_LOGIC);
	END justin_disarm_temp;
	
	
ARCHITECTURE Behavior OF justin_disarm_temp IS
	TYPE State_type IS (A, B, C, D);
	SIGNAL y_present : State_type;
	SIGNAL y_next : State_type;
		CONSTANT Display3 : STD_LOGIC_VECTOR (6 DOWNTO 0) := "0110000";
		CONSTANT Display1 : STD_LOGIC_VECTOR (6 DOWNTO 0) := "1111001";
		CONSTANT Display2 : STD_LOGIC_VECTOR (6 DOWNTO 0) := "0100100";
		
BEGIN
	PROCESS (w, y_present)
		BEGIN
			sseg2 <= "1111111";
			sseg1 <= "1111111";
			sseg0 <= "1111111";
			disarm <= '0';
			y_next <= A;
			
			CASE y_present IS
				WHEN A =>
					IF w = "11" THEN
						y_next <= B;
					ELSE 
						y_next <= A;
					END IF;
				WHEN B =>
					sseg2 <= Display3;
					IF w = "01" THEN
						y_next <= C;
					ELSE 
						y_next <= A;
					END IF;
				WHEN C =>
					sseg2 <= Display3;
					sseg1 <= Display1;
					IF w = "10" THEN
						y_next <= D;
					ELSE
						y_next <= A;
					END IF;
				WHEN D =>
					sseg2 <= Display3;
					sseg1 <= Display1;
					sseg0 <= Display2;
					y_next <= D;
					disarm <= '1';
				WHEN OTHERS =>
					y_next <= A;
			END CASE;
	END PROCESS;
	
	PROCESS(Clock)
	BEGIN
		IF RISING_EDGE(Clock) THEN
			y_present <= y_next;
		END IF;
	END PROCESS;
		
END Behavior;
				
						
					
				
			