-- Michael Lange, 301580599; Trevor Ruttan, 301580889; Rohin Gill, 301582525;

library ieee;
use ieee.std_logic_1164.all;

entity TestReaction is
    port(
        SW : in std_logic_vector(0 downto 0);  -- Enable signal
        KEY : in std_logic_vector(1 downto 0); -- KEY(0) = clock enable, KEY(1) = async reset
        CLOCK_50 : in std_logic;              -- from instructions, 50MHz 50*10^6 = 1/T 
        HEX0 : out std_logic_vector(6 downto 0); -- ones place
        HEX1 : out std_logic_vector(6 downto 0)  -- tens place
    );
end TestReaction;

architecture test_react of TestReaction is

    -- COMPONENTS
    component BCDCount2
        port(
            clear : in std_logic;
            en1 : in std_logic;
            clk1 : in std_logic;
            Din : in std_logic_vector(3 downto 0);
            BCD_0 : out std_logic_vector(3 downto 0);
            BCD_1 : out std_logic_vector(3 downto 0)
        );
    end component;

    component Segdecoder_lab
        port(
            X : in std_logic_vector(3 downto 0);
            Y : out std_logic_vector(6 downto 0)
        );
    end component;

    component PreScale
        port(
            clk_in : in std_logic;
            clk_out : out std_logic
        );
    end component;

    -- Internal Signals
    signal clk_prescaled : std_logic;                      -- Prescaled clock
    signal BCD0, BCD1 : std_logic_vector(3 downto 0);      -- BCD outputs
    signal mux_out : std_logic := '0';                     -- enable
    signal reset_sync : std_logic := '0';                  
    signal hex0_int, hex1_int : std_logic_vector(6 downto 0); -- for HEX0/HEX1
	 signal w : std_logic;

begin

    -- Clock Prescaler
    clk_pre : PreScale
        port map(
            clk_in => CLOCK_50,
            clk_out => clk_prescaled
        );

    -- BCD Counter
    BCDC : BCDCount2
        port map(
            clear => reset_sync,      -- Asynchronous reset
            en1 => mux_out,           -- Enable
            clk1 => clk_prescaled,    -- Clock 
            Din => (others => '0'),   -- we dont use
            BCD_0 => BCD0,
            BCD_1 => BCD1
        );

    -- 7-Segment Decoders
    HEX_DEC0 : Segdecoder_lab
        port map(
            X => BCD0,
            Y => hex0_int
        );

    HEX_DEC1 : Segdecoder_lab
        port map(
            X => BCD1,
            Y => hex1_int
        );

	w <= SW(0);

    -- Reset Logic: Asynchronous reset on KEY(1)
    process(KEY(1), w)
    begin
        if KEY(1) = '1' then
            reset_sync <= '0';  -- Active high reset
        elsif w = '0' then
            reset_sync <= '0';  -- Force reset if SW(0) is low
        else
            reset_sync <= '1';  -- Normal operation
        end if;
    end process;

    -- Enable Logic: Counter only runs when SW(0) is high and KEY(0) is pressed
    process(clk_prescaled)
    begin
        if rising_edge(clk_prescaled) then
            if w = '1' AND KEY(0) = '1' then
                mux_out <= '0';  -- Enable counter
            else
                mux_out <= '1';  -- Disable counter
            end if;
        end if;
    end process;

    -- Display Logic: Drive HEX0 and HEX1 outputs
    process(w, hex0_int, hex1_int)
    begin
        if w = '0' then
            HEX0 <= "1000000"; -- Display blank (all segments off)
            HEX1 <= "1000000"; -- Display blank (all segments off)
        else
            HEX0 <= hex0_int;  -- Drive HEX0 with decoded BCD0
            HEX1 <= hex1_int;  -- Drive HEX1 with decoded BCD1
        end if;
    end process;

end test_react;
