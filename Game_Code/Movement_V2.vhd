----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/22/2023 01:31:41 PM
-- Design Name: 
-- Module Name: Movement_V2 - Behavioral
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

entity Movement_V2 is
    Port ( clk : in STD_LOGIC;
           player_in : in STD_LOGIC_VECTOR (7 downto 0);
           coin_collected : in STD_LOGIC;
           player_pos : out STD_LOGIC_VECTOR (7 downto 0);
           coin_pos : out STD_LOGIC_VECTOR (7 downto 0);
           proj_1 : out STD_LOGIC_VECTOR (7 downto 0);
           proj_2 : out STD_LOGIC_VECTOR (7 downto 0);
           proj_3 : out STD_LOGIC_VECTOR (7 downto 0);
           proj_4 : out STD_LOGIC_VECTOR (7 downto 0);
           proj_5 : out STD_LOGIC_VECTOR (7 downto 0);
           proj_6 : out STD_LOGIC_VECTOR (7 downto 0);
           proj_7 : out STD_LOGIC_VECTOR (7 downto 0);
           proj_8 : out STD_LOGIC_VECTOR (7 downto 0);
           proj_9 : out STD_LOGIC_VECTOR (7 downto 0);
           proj_10 : out STD_LOGIC_VECTOR (7 downto 0);
           proj_11 : out STD_LOGIC_VECTOR (7 downto 0);
           proj_12 : out STD_LOGIC_VECTOR (7 downto 0);
           proj_13 : out STD_LOGIC_VECTOR (7 downto 0);
           proj_14 : out STD_LOGIC_VECTOR (7 downto 0));
end Movement_V2;

architecture Behavioral of Movement_V2 is

signal player_pos_vec: std_logic_vector (7 downto 0) := "00011000"; --player starts at (1,4)
signal coin_pos_vec: std_logic_vector (7 downto 0) := "10010100"; -- initial coin_pos is  (5, 4)

--Below are the starting default values for the positions of projects
--format of vector is by bits:
-- 10: enable
-- 9 to 8: starting direction
--      0 => left down
--      1 => left up
--      2 => right down
--      3 => right up
-- 7 to 0: strating position on the border
--      bottom left is x'00 top right is x'FF

signal proj1: std_logic_vector (11 downto 0) := x"21F";
signal proj2: std_logic_vector (11 downto 0) := x"05F";
signal proj3: std_logic_vector (11 downto 0) := x"29F";
signal proj4: std_logic_vector (11 downto 0) := x"0DF";

signal proj5: std_logic_vector (11 downto 0) := x"0FD";
signal proj6: std_logic_vector (11 downto 0) := x"0F9";
signal proj7: std_logic_vector (11 downto 0) := x"1F5";
signal proj8: std_logic_vector (11 downto 0) := x"0F1";

signal proj9: std_logic_vector (11 downto 0) := x"1C0";
signal proj10: std_logic_vector (11 downto 0) := x"380";
signal proj11: std_logic_vector (11 downto 0) := x"140";
signal proj12: std_logic_vector (11 downto 0) := x"304";

signal proj13: std_logic_vector (11 downto 0) := x"208";
signal proj14: std_logic_vector (11 downto 0) := x"20C";

signal time_cntr: unsigned (24 downto 0) := to_unsigned(0, 25);
signal quart_sec: std_logic;
signal coin_score: unsigned (7 downto 0) := to_unsigned(0, 8); -- keeps count of the number of coins collected

signal proj_enable: std_logic_vector (15 downto 0) := x"0000";

begin

process (clk) begin
    if rising_edge(clk) then
--        if (time_cntr = to_unsigned(25*1000*1000, time_cntr'length)) then -- this is 1/4 second (250ms)
          if (time_cntr = to_unsigned(25*1000, time_cntr'length)) then -- this is 1/4000 second (250us)
            quart_sec <= '1';
            time_cntr <= to_unsigned(0, time_cntr'length);
           
        else
            quart_sec <= '0';
            time_cntr <= time_cntr + 1;    
        end if;
    end if;
end process;

process (quart_sec)
variable movement_pos: unsigned (3 downto 0);
begin
    if (quart_sec = '1') then
    -- we update positions here every quarter of a second
        case player_in is
                when x"57" => -- ascii for W: MOVE UP
--                    movement_pos <= std_logic_vector(unsigned(bram_out(3 downto 0)) + 1);
                    movement_pos := unsigned(player_pos_vec (3 downto 0)) + 1;
                    if (movement_pos /= 15) then
                        player_pos_vec (3 downto 0) <= std_logic_vector(movement_pos);
                    else
                        player_pos_vec <= player_pos_vec;                        
                    end if;
                    null;
                when x"41" => -- ascii for A: MOVE LEFT
--                    movement_pos <= std_logic_vector(unsigned(bram_out(7 downto 4)) - 1);
                    movement_pos := unsigned(player_pos_vec (7 downto 4)) - 1;
                    if (movement_pos /= 0) then
                        player_pos_vec (7 downto 4) <= std_logic_vector(movement_pos);
                    else
                        player_pos_vec <= player_pos_vec;  
                    end if;
                    null;
                when x"53" => -- ascii for S: MOVE DOWN     
--                    movement_pos <= std_logic_vector(unsigned(bram_out(3 downto 0)) - 1);
                    movement_pos := unsigned(player_pos_vec (3 downto 0)) - 1;
                    if (movement_pos /= 0) then
                        player_pos_vec (3 downto 0) <= std_logic_vector(movement_pos);
                    else
                        player_pos_vec <= player_pos_vec;                        
                    end if;
                    null;
                when x"44" => --ascii for D: MOVE RIGHT
--                    movement_pos <= std_logic_vector(unsigned(bram_out(7 downto 4)) + 1);
                    movement_pos := unsigned(player_pos_vec (7 downto 4)) + 1;
                    if (movement_pos /= 15) then
                        player_pos_vec (7 downto 4) <= std_logic_vector(movement_pos);
                    else
                        player_pos_vec <= player_pos_vec;  
                    end if;
                    null;
                when others =>
                    null;
        end case; 

    end if;
end process;

process (coin_collected) is
    variable inter_val: unsigned (7 downto 0);
    variable temp: integer;
    begin
--    temp := time_cntr mod 256;
--    inter_val := to_unsigned(time_cntr mod 256, inter_val'length);
    inter_val := time_cntr (7 downto 0);
    
--    coin_pos <= std_logic_vector(time_cntr mod 256);
    coin_pos <= std_logic_vector(time_cntr (7 downto 0));
    -- below if statements check if the coin is in proper bounds
    if inter_val (7 downto 4) = 15 or inter_val (7 downto 4) = 0 then
--        inter_val (7 downto 4) := to_unsigned(std_logic_vector(inter_val (7 downto 4)) XOR "0001");
        coin_pos (7 downto 4) <= std_logic_vector(inter_val (7 downto 4)) XOR "0001";
    end if;
    
    if inter_val (3 downto 0) = 15 or inter_val (3 downto 0) = 0 then
        coin_pos (3 downto 0) <= std_logic_vector(inter_val (3 downto 0)) XOR "0001";
    end if;
    
    coin_score <= coin_score + 1;
    
end process;

process (coin_score)
begin
    for i in 0 to 13 loop
        if(i < coin_score) then
            proj_enable(i) <= '1';
        end if;
    end loop;
end process;

player_pos <= player_pos_vec;

end Behavioral;
