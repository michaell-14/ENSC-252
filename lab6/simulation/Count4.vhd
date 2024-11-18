library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Count4 is
    port (
        clk : in std_logic;
        enable : in std_logic;
		  load : in std_logic;
        D : in std_logic_vector(3 downto 0);
        Q : out std_logic_vector(3 downto 0)
    );
end Count4;

architecture Behavioral of Count4 is
	signal Q_internal : std_logic_vector(3 downto 0) := (others => '0');
	signal and_out : std_logic_vector(3 downto 0);
	signal xor_out : std_logic_vector(3 downto 0);
	signal out_carry :std_logic;
	
	
	begin
		and_out(0) <= Q_internal(0) AND enable;
		and_out(1) <= Q_internal(1) AND enable;
		and_out(2) <= Q_internal(2) AND enable;
		and_out(3) <= Q_internal(3) AND enable; -- output carry, we dont gaf
		
		xor_out(0) <= Q_internal(0) XOR enable;
		xor_out(1) <= Q_internal(1) XOR and_out(0);
		xor_out(2) <= Q_internal(2) XOR and_out(1);
		xor_out(3) <= Q_internal(3) XOR and_out(2);
		
--register stuff
		process(clk)
		begin
			if rising_edge(clk) then
				if load = '0' then
					Q_internal <= xor_out;
				else 
					Q_internal <= D;
				end if;
			end if;
		end process;
				
Q <= Q_internal;

end Behavioral;