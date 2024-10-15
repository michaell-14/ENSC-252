library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ButtonToggle is
    port (
        KEY      : in std_logic;          -- Input button (KEY(0))
        toggle_state : out std_logic      -- Output signal to be toggled
    );
end ButtonToggle;

architecture Behavioral of ButtonToggle is
    signal internal_toggle_state : std_logic := '0';  -- Internal signal to track the state
begin

    -- Process to toggle the state on rising edge of the push button KEY
    process(KEY)
    begin
        if rising_edge(KEY) then
            internal_toggle_state <= not internal_toggle_state;  -- Flip the state on rising edge
        end if;
    end process;

    -- Output the toggle state
    toggle_state <= internal_toggle_state;

end Behavioral;
