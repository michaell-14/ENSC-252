library ieee;
use ieee.std_logic_1164.all;

entity TestReaction is
    port(
        SW : in std_logic_vector(0 downto 0);  -- Enable signal (active high)
        KEY : in std_logic_vector(1 downto 0); -- KEY(0) = clock enable, KEY(1) = async reset
        CLOCK_50 : in std_logic;              -- System clock
        LEDR : out std_logic;                 -- LED to indicate enable state
        HEX0 : out std_logic_vector(6 downto 0); -- 7-segment display (ones place)
        HEX1 : out std_logic_vector(6 downto 0)  -- 7-segment display (tens place)
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
    signal BCD0, BCD1 : std_logic_vector(3 downto 0);      -- BCD counter outputs
    signal mux_out : std_logic := '0';                     -- Counter enable signal
    signal reset_sync : std_logic := '0';                  -- Synchronized reset
    signal hex0_int, hex1_int : std_logic_vector(6 downto 0); -- Internal signals for HEX0/HEX1

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
            en1 => mux_out,           -- Enable signal
            clk1 => clk_prescaled,    -- Clock input
            Din => (others => '0'),   -- Unused
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

    -- LED Output: Indicate whether the counter is enabled (SW = high)
    LEDR <= SW(0);

    -- Reset Logic: Asynchronous reset on KEY(1)
    process(KEY(1), SW(0))
    begin
        if KEY(1) = '1' then
            reset_sync <= '1';  -- Active high reset
        elsif SW(0) = '0' then
            reset_sync <= '1';  -- Force reset if SW(0) is low
        else
            reset_sync <= '0';  -- Normal operation
        end if;
    end process;

    -- Enable Logic: Counter only runs when SW(0) is high and KEY(0) is pressed
    process(clk_prescaled)
    begin
        if rising_edge(clk_prescaled) then
            if SW(0) = '1' and KEY(0) = '1' then
                mux_out <= '1';  -- Enable counter
            else
                mux_out <= '0';  -- Disable counter
            end if;
        end if;
    end process;

    -- Display Logic: Drive HEX0 and HEX1 outputs
    process(SW(0), hex0_int, hex1_int)
    begin
        if SW(0) = '0' then
            HEX0 <= "1000000"; -- Display blank (all segments off)
            HEX1 <= "1000000"; -- Display blank (all segments off)
        else
            HEX0 <= hex0_int;  -- Drive HEX0 with decoded BCD0
            HEX1 <= hex1_int;  -- Drive HEX1 with decoded BCD1
        end if;
    end process;

end test_react;
