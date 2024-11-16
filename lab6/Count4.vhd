--Michael Lange, 301580599; Trevor Ruttan, 301580889; Rohin Gill, 301582525;

library ieee;
use ieee.std_logic_1164.all;

ENTITY Count4 is
    PORT (
        clk     : in std_logic;
        load    : in std_logic;
        enable  : in std_logic;
        D       : in std_logic_vector(3 downto 0);
        Q       : out std_logic_vector(3 downto 0)
    );
END Count4;

ARCHITECTURE structure of Count4 is
    -- Declare the component for instantiation
    COMPONENT incr_port5
        PORT (
            clk     : in std_logic;
            load    : in std_logic;
            enable  : in std_logic;
            D       : in std_logic_vector(3 downto 0);
            Q       : out std_logic_vector(3 downto 0)
        );
    END COMPONENT;

    -- Signal declaration for connecting the component
    signal internal_Q : std_logic_vector(3 downto 0);

begin
    -- Instantiate the incr component
    U1: incr_port5
        PORT MAP (
            clk     => clk,
            load    => load,
            enable  => enable,
            D       => D,
            Q       => internal_Q
        );

    -- Output assignment
    Q <= internal_Q;

END structure;
