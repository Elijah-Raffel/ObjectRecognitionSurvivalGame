library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL; 

entity sev_seg is
    port (
        clk : in std_logic;
        anode : out std_logic_vector (3 downto 0);
        cathode : out std_logic_vector (6 downto 0);
        
        life_counter : in unsigned(3 downto 0);
        score_counter : in unsigned(7 downto 0)
    );
end sev_seg;

architecture Behavioral of sev_seg is
    signal led_bcd : std_logic_vector (3 downto 0);
    signal refresh_counter : std_logic_vector (19 downto 0) := (others => '0');
    signal led_activating_counter : std_logic_vector(1 downto 0);

    signal internal_anode : std_logic_vector (3 downto 0);

begin
    -- Updated process for BCD to 7-segment decoder
    process (led_bcd, life_counter, score_counter)
    begin
        case led_bcd is
            when "0000" => null; 
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

    led_activating_counter <= refresh_counter(19 downto 18);

    -- 4-to-1 MUX to generate anode activating signals for 4 LEDs
    process (led_activating_counter)
    begin
        case led_activating_counter is
            when "00" =>
                internal_anode <= "0111"; -- activate LED1 and Deactivate LED2, LED3, LED4
                led_bcd <= std_logic_vector(life_counter); -- the first hex digit

            when "10" =>
                internal_anode <= "1101"; -- activate LED3 and Deactivate LED2, LED1, LED4
                led_bcd <= std_logic_vector(score_counter(7 downto 4)); -- the third hex

            when "11" =>
                internal_anode <= "1110"; -- activate LED4 and Deactivate LED2, LED3, LED1
                led_bcd <= std_logic_vector(score_counter(3 downto 0)); -- the fourth hex

            when others =>
                internal_anode <= "1111"; -- Deactivate all LEDs
                led_bcd <= "1111"; -- OFF
        end case;
    end process;

    -- Map internal_anode to external anode
    anode <= internal_anode;

end Behavioral;
