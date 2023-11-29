-- Modified from fpga4student.com
-- VHDL code for seven-segment display on Basys 3 FPGA

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


entity sev_seg is
    port (
        clk : in std_logic; -- Clock on Basys 3 FPGA board
        rst : in std_logic; -- Reset
        
        life_counter : in unsigned(3 downto 0);
        score_counter : in unsigned(7 downto 0);
        
        anode : out std_logic_vector(3 downto 0); -- 4 anode signals
        cathode : out std_logic_vector(0 to 6) -- Cathode patterns of 7-segment display
    );
end sev_seg;

architecture Behavioral of sev_seg is
    signal display : unsigned(15 downto 0);
    signal led_bcd : unsigned(3 downto 0);
    signal refresh_counter : std_logic_vector(19 downto 0); -- creating 10.5ms refresh period
    signal led_activating_counter : std_logic_vector(1 downto 0); -- 2-bits for creating 4 LED-activating signals

begin
    display(15 downto 12) <= life_counter(3 downto 0);
    display(7 downto 0) <= score_counter(7 downto 0);
    
    -- VHDL code for BCD to 7-segment decoder
    -- Cathode patterns of the 7-segment LED display
    process (led_bcd)
    begin
        case led_bcd is
            when "0000" => cathode <= "0000001"; -- "0"
            when "0001" => cathode <= "1001111"; -- "1"
            when "0010" => cathode <= "0010010"; -- "2"
            when "0011" => cathode <= "0000110"; -- "3"
            when "0100" => cathode <= "1001100"; -- "4"
            when "0101" => cathode <= "0100100"; -- "5"
            when "0110" => cathode <= "0100000"; -- "6"
            when "0111" => cathode <= "0001111"; -- "7"
            when "1000" => cathode <= "0000000"; -- "8"
            when "1001" => cathode <= "0000100"; -- "9"
            when "1010" => cathode <= "0000010"; -- a
            when "1011" => cathode <= "1100000"; -- b
            when "1100" => cathode <= "0110001"; -- C
            when "1101" => cathode <= "1000010"; -- d
            when "1110" => cathode <= "0110000"; -- E
            when "1111" => cathode <= "0111000"; -- F
            when others => cathode <= "1111111"; -- OFF
        end case;
    end process;

    -- 7-segment display controller
    -- generate refresh period of 10.5ms
    process (clk, rst)
    begin
        if (rst = '1') then
            refresh_counter <= (others => '0');
        elsif (rising_edge(clk)) then
            refresh_counter <= refresh_counter + 1;
        end if;
    end process;

    led_activating_counter <= refresh_counter(19 downto 18);

    -- 4-to-1 MUX to generate anode activating signals for 4 LEDs
    process (led_activating_counter)
    begin
        case led_activating_counter is
            when "00" =>
                anode <= "0111"; -- activate LED1 and Deactivate LED2, LED3, LED4
                led_bcd <= display(15 downto 12); -- the first hex digit of the 16-bit number
            when "01" =>
                anode <= "1111"; -- activate LED2 and Deactivate LED1, LED3, LED4
                led_bcd <= display(11 downto 8); -- the second hex digit of the 16-bit number
            when "10" =>
                anode <= "1101"; -- activate LED3 and Deactivate LED2, LED1, LED4
                led_bcd <= display(7 downto 4); -- the third hex digit of the 16-bit number
            when "11" =>
                anode <= "1110"; -- activate LED4 and Deactivate LED2, LED3, LED1
                led_bcd <= display(3 downto 0); -- the fourth hex digit of the 16-bit number
            when others =>
                anode <= "1111"; -- Deactivate all LEDs
                led_bcd <= "1111"; -- OFF
        end case;
    end process;


end Behavioral;
