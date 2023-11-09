<<<<<<< HEAD
----------------------------------------------------------------------
-- File Downloaded from http://www.nandland.com
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
 
entity Main is
    port(
    i_Clk : in std_logic;
    i_UART_RX : in std_logic;
    o_UART_TX : out std_logic
    );
end  entity Main;
 
architecture rtl of Main is
 
  signal w_RX_DV     : std_logic;
  signal w_RX_Byte   : std_logic_vector(7 downto 0);
  signal w_TX_Active : std_logic;
  signal w_TX_Serial : std_logic;
 
  begin
  
  UART_RX_Inst : entity work.UART_RX
    generic map (
      g_CLKS_PER_BIT => 217)            -- 25,000,000 / 115,200
    port map (
      i_Clk       => i_Clk,
      i_RX_Serial => i_UART_RX,
      o_RX_DV     => w_RX_DV,
      o_RX_Byte   => w_RX_Byte);
 
 
  -- Creates a simple loopback to test TX and RX
  UART_TX_Inst : entity work.UART_TX
    generic map (
      g_CLKS_PER_BIT => 217)               -- 25,000,000 / 115,200 = 217
    port map (
      i_Clk       => i_Clk,
      i_TX_DV     => w_RX_DV,
      i_TX_Byte   => w_RX_Byte,
      o_TX_Active => w_TX_Active,
      o_TX_Serial => w_TX_Serial,
      o_TX_Done   => open
      );
 
    -- Drive UART line high when transmitter is not active
    o_UART_TX <= w_TX_Serial when w_TX_Active = '1' else '1';
  
end architecture rtl;
=======
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/09/2023 05:13:20 PM
-- Design Name: 
-- Module Name: Collision - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Main is
-- Port ( ); 

end Main;

architecture Behavioral of Main is

begin

end Behavioral;
>>>>>>> f912a4243f0bc780edddc9b349e5472ae3feda4b
