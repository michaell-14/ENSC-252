--Michael Lange, 301580599; Trevor Ruttan, 301580889; Rohin Gill, 301582525;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity AlarmSystem is 
    port(
        CLOCK_50 : in std_logic;
        SW : in std_logic_vector(9 downto 0); -- SW[9..7]: sensors; SW[2..1]: code; SW[0]: alarm on/off
        KEY : in std_logic_vector(0 downto 0); -- clock for DisarmSystem
        LEDR : out std_logic_vector(17 downto 0); -- LEDs for alarm
        HEX5 : out std_logic_vector(6 downto 0); -- HEX display connections
        HEX4 : out std_logic_vector(6 downto 0);
        HEX3 : out std_logic_vector(6 downto 0);
        HEX2 : out std_logic_vector(6 downto 0);
        HEX1 : out std_logic_vector(6 downto 0);
        HEX0 : out std_logic_vector(6 downto 0)
    );
end AlarmSystem;

architecture BeepBoop of AlarmSystem is 
    -- Internal signals
    signal trigger : std_logic;
    signal disarm : std_logic;
    signal seg_0, seg_1, seg_2 : std_logic_vector(6 downto 0);

    -- Components
    component BlinkSystem is
        port(
            clk : in std_logic;
            enable : in std_logic;
            HEX5 : out std_logic_vector(6 downto 0);
            HEX4 : out std_logic_vector(6 downto 0);
            HEX3 : out std_logic_vector(6 downto 0);
            red_LEDs : out std_logic_vector(17 downto 0)
        );
    end component;

    component DisarmSystem is
        port(
            w : in std_logic_vector(1 downto 0);
            clk_in : in std_logic;
            SSeg0 : out std_logic_vector(6 downto 0);
            SSeg1 : out std_logic_vector(6 downto 0);
            SSeg2 : out std_logic_vector(6 downto 0);
            disarm_main : out std_logic
        );
    end component;

begin
    -- BlinkSystem instance
    Blinky : BlinkSystem
        port map(
            clk => CLOCK_50,
            enable => trigger,
            HEX5 => HEX5,
            HEX4 => HEX4,
            HEX3 => HEX3,
            red_LEDs => LEDR
        );

    -- DisarmSystem instance
    DSystem : DisarmSystem
        port map(
            w => SW(2 downto 1),
            clk_in => KEY(0),
            SSeg0 => HEX2,
            SSeg1 => HEX1,
            SSeg2 => HEX0,
            disarm_main => disarm
        );

    -- Trigger logic
    process(SW, disarm)
    begin
        if SW(0) = '1' then -- Alarm system is active
            trigger <= (SW(9) OR SW(8) OR SW(7)) AND NOT disarm;
        elsif SW(0) = '0' AND trigger = '1' then
				trigger <= (SW(9) OR SW(8) OR SW(7)) AND NOT disarm; 
		  else
            trigger <= '0'; -- Alarm system off
        end if;
    end process;

end BeepBoop;
