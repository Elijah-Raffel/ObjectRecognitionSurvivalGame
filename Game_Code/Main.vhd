library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity Main is
  port (
    -- Main Clock (100 MHz)
    clk         : in std_logic;
 
    -- UART Data
    i_UART_RX : in  std_logic;
    --o_UART_TX : out std_logic;
    
    -- led
    led : out std_logic_vector(7 downto 0)
  );
end entity Main;
 
architecture RTL of Main is
 
  signal w_RX_DV     : std_logic;
  signal w_RX_Byte   : std_logic_vector(7 downto 0);
  --signal w_TX_Active : std_logic;
  --signal w_TX_Serial : std_logic;
 
begin
 
  UART_RX_Inst : entity work.UART_RX
    generic map (
      g_CLKS_PER_BIT => 868)            -- 100,000,000 / 115,200
    port map (
      clk       => clk,
      i_RX_Serial => i_UART_RX,
      o_RX_DV     => w_RX_DV,
      o_RX_Byte   => w_RX_Byte);
      
  -- update leds when new data is taken in
      LED_Display_Process: process(w_RX_Byte)
  begin
        led <= w_RX_Byte;
  end process LED_Display_Process;       
 
 -- w = 0111 0111
 -- a = 0110 0001
 -- s = 0111 0011
 -- d = 0110 0100
 --   = 0010 0000
 
--  -- Creates a simple loopback to test TX and RX
--  UART_TX_Inst : entity work.UART_TX
--    generic map (
--      g_CLKS_PER_BIT => 868)               -- 100,000,000 / 115,200 = 868
--    port map (
--      clk       => clk,
--      i_TX_DV     => w_RX_DV,
--      i_TX_Byte   => w_RX_Byte,
--      o_TX_Active => w_TX_Active,
--      o_TX_Serial => w_TX_Serial,
--      o_TX_Done   => open
--      );
 
--  -- Drive UART line high when transmitter is not active
--  o_UART_TX <= w_TX_Serial when w_TX_Active = '1' else '1';
end architecture RTL;
