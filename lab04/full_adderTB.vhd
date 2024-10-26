--------------------------------------
-- Testbench for Full Adder
-- Course: ENSC 252
-- Original Creator: Anita Tino
-- Edited: Sahaj Singh
---------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- Declare the testbench. The testbench entity is always empty
ENTITY FullAdder_tb IS
END FullAdder_tb;

ARCHITECTURE Behaviour OF FullAdder_tb IS
    COMPONENT FullAdder IS -- The component or DEVICE UNDER TEST (DUT) we would like to verify
        PORT (
            A, B, C : IN STD_LOGIC;
            sum, carry : OUT STD_LOGIC
        );
    END COMPONENT;

    -- Signals used to connect the above component to the testbench
    -- Apply stimulus to input signals (seen below in the stimulus process)
    -- We view the output signals on the waveform, and verify that the DUT behaves as expected
    SIGNAL in1, in2, in3, out_s, out_c : STD_LOGIC;

BEGIN

    DUT: FullAdder -- Declare the device under test (DUT) to be FullAdder
        PORT MAP (
            A => in1,
            B => in2,
            C => in3,
            sum => out_s,
            carry => out_c
        ); -- Map test signals to DUT

    stimulus: PROCESS
    BEGIN
        in1 <= '0'; -- Assign test stimulus "0000"
        in2 <= '0';
        in3 <= '0';
        wait for 20 ns; -- Wait for data to propagate

        in3 <= '1'; -- Assign test stimulus "0001"
        wait for 20 ns;

        in3 <= '0'; -- Assign test stimulus "0010"
        in2 <= '1';
        wait for 20 ns;

        in3 <= '1'; 
        wait for 20 ns;

        in3 <= '0';
        in2 <= '0';
        in1 <= '1'; -- Assign test stimulus "0100"
        wait for 20 ns;

        in3 <= '1'; 
        wait for 20 ns;

        in3 <= '0';
        in2 <= '1'; -- Assign test stimulus "0110"
        wait for 20 ns;

        in3 <= '1'; 
        wait for 20 ns;

        in1 <= '0'; -- Assign final test stimulus "0000"
        in2 <= '0';
        in3 <= '0';
        wait for 20 ns;

        -- Terminate simulation
        assert false
        report "Simulation ended" severity failure; -- Brute force quit so simulation does not run forever
        
        -- Note: Use assert statements for more intelligent testbenches
        -- Example:
        -- wait for 20 ns;
        -- assert sum = '1' 
        -- report "Sum is incorrect. Expected 1 when in1 = 0, in2 = ..." severity failure;

        -- Report statements will be output to the Modelsim terminal during simulation
        -- This can help pinpoint issues in your waveform and design

    END PROCESS;
END Behaviour;
