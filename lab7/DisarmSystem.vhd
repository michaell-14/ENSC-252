--Michael Lange, 301580599; Trevor Ruttan, 301580889; Rohin Gill, 301582525;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DisarmSystem is 
	port(
			w : in std_logic_vector(1 downto 0);
			clk_in : in std_logic;
			SSeg0 : out std_logic_vector(6 downto 0);
			SSeg1 : out std_logic_vector(6 downto 0);
			SSeg2 : out std_logic_vector(6 downto 0);
			disarm_main : out std_logic;
			rLED : out std_logic_vector(17 downto 0)
	);
end DisarmSystem;
architecture mooreFSM of DisarmSystem is 
	type state is (A, B, C, D); --A (first digit), B (second digit), C (third digit), D (disarm)
	signal current_state, next_state : state;
	
	--using constant because this is the code and shouldnt be altered by anything
	constant s_seg0 : STD_LOGIC_VECTOR(6 downto 0) := "0110000";
	constant s_seg1 : STD_LOGIC_VECTOR(6 downto 0) := "1111001"; 
   constant s_seg2 : STD_LOGIC_VECTOR(6 downto 0) := "0100100"; 
   constant seg_blank : STD_LOGIC_VECTOR(6 downto 0) := "1111111"; 
	
	begin
	
	process(clk_in)
	begin
		if rising_edge(clk_in) then 
			current_state <= next_state;
		end if;
	end process;
	
	process(current_state, w)
	begin
		case current_state is
		
			when A => 
				if w = "11" then --3 is entered
					next_state <= B;
				else
					next_state <= A;
				end if;
				
			when B =>
				if w = "01" then --1 is entered
					next_state <= C;
				else 
					next_state <= A;
				end if;
				
			when C => 
				if w = "10" then --2 is entered
					next_state <= D;
				else 
					next_state <= A;
				end if;
				
			when D => 
				next_state <= A;
			
			--error-care case
			when others =>
				next_state <= A;
		end case;
	end process;
			
			
	--	outputs
	
	process(current_state)
	begin
		case current_state is 
		
			when A =>
				SSeg0 <= seg_blank;
				SSeg1 <= seg_blank;
				SSeg2 <= seg_blank;
				disarm_main <= '0';
			
			when B =>
				SSeg0 <= s_seg0; -- signal for "3" is assigned
				SSeg1 <= seg_blank;
				SSeg2 <= seg_blank;
				disarm_main <= '0';
			
			when C => 
				SSeg0 <= s_seg0; 
				SSeg1 <= s_seg1; -- signal for "1" is assigned
				SSeg2 <= seg_blank;
				disarm_main <= '0';
			
			when D => 
				SSeg0 <= s_seg0; 
				SSeg1 <= s_seg1;
				SSeg2 <= s_seg2; --signal for "2" is assigned
				disarm_main <= '1'; -- therefore disarm is active 
		
			when others => 
				SSeg0 <= seg_blank;
				SSeg1 <= seg_blank;
				SSeg2 <= seg_blank;
				disarm_main <= '0';
		end case;
	end process;
end architecture mooreFSM;