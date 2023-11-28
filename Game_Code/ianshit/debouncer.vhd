library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity debouncer is
  port (
    -- ALU Ports
    clk : in std_logic;
    btn : in std_logic;
    db  : out std_logic
  );
end debouncer;

architecture Behavioral of debouncer is
  signal shift_i : STD_LOGIC_VECTOR(3 DOWNTO 0);
begin
  -- Debounce
  process(clk)
  begin
    if rising_edge(clk) then -- Clock
      shift_i(2 Downto 0) <= shift_i(3 Downto 1); -- Shifting each cycle
      shift_i(3) <= NOT btn; -- btn is the pre-bounced signal

      if shift_i(3 Downto 0)="0000" THEN -- Once the bounce has settled, set the debounced value
        db <= '1'; 
      else 
        db <= '0'; 
      end if;
    end if;
  end process;
end Behavioral;
