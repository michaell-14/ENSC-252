--Michael Lange, 301580599; Trevor Ruttan, 301580889; Rohin Gill, 301582525;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--PreScale

entity PreScale is 
	port(
			clk_in : in std_logic;
			clk_out : out std_logic
		);
end entity PreScale;

architecture behavioral of PreScale is
--internal signal; aka 20 bit guy
signal counter : unsigned(19 downto 0) := (others => '0'); -- := (others => '0') intializes the vector to 0 across the board (terminology, not the fpga)
--using unsigned for the above becuase we only go up (only need positve values) and is easier... (we use + further below)
begin
	process(clk_in)
	begin
		if rising_edge(clk_in) then
			counter <= counter + 1; -- the plus is from numberic library 
			
			if counter = to_unsigned(2**20 - 1, 20) then 
			counter <= (others => '0'); --resets to 0 becuase overflow lol
			end if;
		
		end if;
	end process;
	
  -- MSB of counter to clk_out
    clk_out <= counter(19);
	 
end behavioral;
