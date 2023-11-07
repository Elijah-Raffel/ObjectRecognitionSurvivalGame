----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/23/2023 12:38:50 PM
-- Design Name: 
-- Module Name: Movement - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Movement is
    Port ( clk : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (7 downto 0);
           start : in STD_LOGIC_vector(0 downto 0); --If high we update all positions else we are reading from BRAM
           busy : in std_logic;
           player_dir : in STD_LOGIC_VECTOR (7 downto 0));
       
end Movement;

architecture Behavioral of Movement is

signal address: std_logic_vector (3 downto 0) := "0000";
signal movement_pos: std_logic_vector (7 downto 0); 
signal bram_en: std_logic; 
signal wr_en: std_logic_vector (0 downto 0);
signal bram_out: std_logic_vector (7 downto 0); 
signal rw_cycle: std_logic := '0';

COMPONENT blk_mem_gen_0
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;
    
begin

bram : blk_mem_gen_0
  PORT MAP (
    clka => clk,
    ena => bram_en,
    wea => wr_en,
    addra => address,
    dina => movement_pos,
    douta => bram_out
  );

--bram_access: process (clk)
--begin
--    if rising_edge(clk) then
--        if rw_cycle = '0' then
--            wr_en <= "0";
--            bram_en <= '1';
--        else
--            wr_en <= "1";
--            bram_en <= '1';
--        end if; 
--    end if;
--    rw_cycle <= not(rw_cycle);
--end process; 

update_player: process (wr_en) 
    variable current_pos : std_logic_vector (7 downto 0);
begin
    if wr_en'event and wr_en="1" then -- We are updating all the positions
        case player_dir is 
            when x"57" => -- ascii for W: MOVE UP
                bram_en <= '0';
                wr_en <= "0";
                address <= "0000";
                bram_en <= '1';
                current_pos := bram_out;
                
                null;
            when x"41" => -- ascii for A: MOVE LEFT
                null;
            when x"53" => -- ascii for S: MOVE DOWN     
                null;
            when x"44" => --ascii for D: MOVE RIGHT
                null;
            when others =>
                null;
        end case;
    end if;
end process; 


end Behavioral;
