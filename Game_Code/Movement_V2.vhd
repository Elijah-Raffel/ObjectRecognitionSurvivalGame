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
           rst: in std_logic;
           player_in : in STD_LOGIC_VECTOR (7 downto 0);
           coin_collected : in STD_LOGIC;
           score_cnt : out unsigned (7 downto 0);
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

constant W : std_logic_vector (7 downto 0) := x"73";
constant A : std_logic_vector (7 downto 0) := x"61";
constant S : std_logic_vector (7 downto 0) := x"77";
constant D : std_logic_vector (7 downto 0) := x"64";

constant pos_move : std_logic_vector (1 downto 0) := "11";
constant neg_move : std_logic_vector (1 downto 0) := "00";

signal player_pos_vec: std_logic_vector (7 downto 0) := "00011000"; --player starts at (1,8)
signal coin_pos_vec: std_logic_vector (7 downto 0) := "10111000"; -- initial coin_pos is  (5, 4)

--Below are the starting default values for the positions of projects
--format of vector is by bits:
-- 11 to 10: starting x-dir
-- 9 to 8: starting y-dir
--      00 => down
--      01 => no change
--      10 => no change
--      11 => up 
-- 7 to 0: strating position on the border
--      bottom left is x'00 top right is x'FF

-- top spawn
signal proj1: std_logic_vector (11 downto 0) := x"C1F";
signal proj2: std_logic_vector (11 downto 0) := x"85F";
signal proj3: std_logic_vector (11 downto 0) := x"C9F";
signal proj4: std_logic_vector (11 downto 0) := x"0DF";
-- right spawn
signal proj5: std_logic_vector (11 downto 0) := x"0FD";
signal proj6: std_logic_vector (11 downto 0) := x"2F9";
signal proj7: std_logic_vector (11 downto 0) := x"3F5";
signal proj8: std_logic_vector (11 downto 0) := x"0F1";
-- bot spawn
signal proj9: std_logic_vector (11 downto 0) := x"3C0";
signal proj10: std_logic_vector (11 downto 0) := x"780";
signal proj11: std_logic_vector (11 downto 0) := x"F40";
signal proj12: std_logic_vector (11 downto 0) := x"F04";
-- left spawn
signal proj13: std_logic_vector (11 downto 0) := x"C08";
signal proj14: std_logic_vector (11 downto 0) := x"D0C";

signal time_cntr: unsigned (24 downto 0) := to_unsigned(0, 25);
signal rand_cntr: unsigned (7 downto 0) := to_unsigned(17, 8);
signal quart_sec: std_logic;
signal coin_score: unsigned (7 downto 0) := to_unsigned(0, 8); -- keeps count of the number of coins collected
signal already_scored: std_logic := '0';
--signal coin_score: unsigned (7 downto 0) := to_unsigned(13, 8); -- need to fix counting score since its broken

signal proj_enable: std_logic_vector (15 downto 0) := x"0000";

function update_proj(proj_vec: std_logic_vector (11 downto 0);
                     time_cntr: unsigned (3 downto 0)) return std_logic_vector is 
    variable cur_pos : unsigned (7 downto 0) := unsigned(proj_vec (7 downto 0));
    variable next_pos : unsigned (7 downto 0);
    variable move_x : std_logic_vector (1 downto 0) := proj_vec (11 downto 10);
    variable move_y : std_logic_vector (1 downto 0) := proj_vec (9 downto 8);
    variable vec_out : std_logic_vector (11 downto 0);
    variable random_x: std_logic_vector (1 downto 0) := std_logic_vector(time_cntr(3 downto 2));
    variable random_y: std_logic_vector (1 downto 0) := std_logic_vector(time_cntr(1 downto 0));
    begin
        case move_x is
            when pos_move =>
                next_pos (7 downto 4) := cur_pos (7 downto 4) + 1;
            when neg_move =>
                next_pos (7 downto 4) := cur_pos (7 downto 4) - 1;
            when others =>
                next_pos (7 downto 4) := cur_pos (7 downto 4);
                null; 
        end case;    
        
        case move_y is
            when pos_move =>
                next_pos (3 downto 0) := cur_pos (3 downto 0) + 1;
            when neg_move =>
                next_pos (3 downto 0) := cur_pos (3 downto 0) - 1;
            when others =>
                next_pos (3 downto 0) := cur_pos (3 downto 0);
                null; 
        end case;    
        
        if (next_pos (7 downto 4) = 15 or next_pos (7 downto 4) = 0) and (next_pos (3 downto 0) = 15 or next_pos (3 downto 0) = 0) then
            vec_out (7 downto 0) := proj_vec (7 downto 0);
            vec_out (11 downto 10) := random_x; 
            vec_out (9 downto 8) := random_y;       
        else  
            if next_pos (7 downto 4) /= 15 and next_pos (7 downto 4) /= 0 then -- checking if the projectile is going to hit the border
    --            vec_out (11 downto 10) := move_x; 
                vec_out (11 downto 10) := move_x;
    --            vec_out (9 downto 8) := move_y;
                vec_out (7 downto 4) := std_logic_vector (next_pos(7 downto 4)); -- continue moving in the x direction if not
            else -- stay in x position and flip x_dir with a bounce in a y_dir based off clock timer 
                vec_out (7 downto 4) := proj_vec (7 downto 4);
                vec_out (11 downto 10) := NOT proj_vec (11 downto 10); 
                vec_out (9 downto 8) := random_y;
            end if;
            
            --similar to above but for movement in y-dir
            if next_pos (3 downto 0) /= 15 and next_pos (3 downto 0) /= 0 then
    --            vec_out (9 downto 8) := move_y; 
    --            vec_out (11 downto 10) := move_x;
                vec_out (9 downto 8) := move_y;
                vec_out (3 downto 0) := std_logic_vector (next_pos(3 downto 0));
            else
                vec_out (3 downto 0) := proj_vec (3 downto 0);
                vec_out (11 downto 10) := random_x; 
                vec_out (9 downto 8) := NOT proj_vec (9 downto 8);
            end if;               
        end if;
        
        return vec_out; 
    end function; 

begin

process (clk, rst) 
    variable inter_val: unsigned (7 downto 0);
    variable temp: integer;
begin
    if (rst = '1') then
        quart_sec <= '0';
        time_cntr <= to_unsigned(0, time_cntr'length);
        rand_cntr <= to_unsigned(0, rand_cntr'length);
        already_scored <= '0';
        coin_score <= to_unsigned(0, coin_score'length);
        coin_pos_vec <= x"A8";
    elsif rising_edge(clk) then
    if (time_cntr = to_unsigned(100*1000*1000, time_cntr'length)) then -- this is 1/4 second (250ms)
--        if (time_cntr = to_unsigned(25*1000*1000, time_cntr'length)) then -- this is 1/4 second (250ms)
--          if (time_cntr = to_unsigned(25*1000, time_cntr'length)) then -- this is 1/4000 second (250us)
            quart_sec <= '1';
            time_cntr <= to_unsigned(0, time_cntr'length);
            rand_cntr <= rand_cntr + 29;  
            already_scored <= '0';
        else
            quart_sec <= '0';
            time_cntr <= time_cntr + 1;
            rand_cntr <= rand_cntr + 1;     
            if (coin_collected = '1' and already_scored = '0') then
                coin_score <= coin_score + 1;
                already_scored <= '1';
                                --    temp := time_cntr mod 256;
                --    inter_val := to_unsigned(time_cntr mod 256, inter_val'length);
                --    inter_val := time_cntr (7 downto 0);
                    inter_val := rand_cntr (7 downto 0);
                --    coin_pos <= std_logic_vector(time_cntr mod 256);
                --    coin_pos_vec <= std_logic_vector(time_cntr (7 downto 0));
                    coin_pos_vec <= std_logic_vector(inter_val);
                    -- below if statements check if the coin is in proper bounds
                    if inter_val (7 downto 4) = 15 or inter_val (7 downto 4) = 0 then
                --        inter_val (7 downto 4) := to_unsigned(std_logic_vector(inter_val (7 downto 4)) XOR "0001");
                        coin_pos_vec (7 downto 4) <= std_logic_vector(inter_val (7 downto 4)) XOR "0001";
                    end if; 
                    
                    if inter_val (3 downto 0) = 15 or inter_val (3 downto 0) = 0 then
                        coin_pos_vec (3 downto 0) <= std_logic_vector(inter_val (3 downto 0)) XOR "0001";
                    end if;
                        
            end if;            
        end if;
        

        
    end if;
end process;

process (quart_sec, rst)
variable movement_pos: unsigned (3 downto 0);
begin
    if (rst = '1') then
        player_pos_vec <= x"18";
        -- top spawn
        proj1 <= x"C1F";
        proj2 <= x"85F";
         proj3<= x"C9F";
         proj4<= x"0DF";
       --bot sp
         proj5<= x"0FD";
         proj6<= x"2F9";
         proj7<= x"3F5";
         proj8<= x"0F1";
        --left 
         proj9<= x"3C0";
         proj10<= x"780";
         proj11<= x"F40";
         proj12<= x"F04";
         -- rig
         proj13<= x"C08";
         proj14<= x"D0C";        
--    elsif (quart_sec = '1') then
      elsif (rising_edge (quart_sec)) then
    -- we update positions here every quarter of a second
        case player_in is
--                when x"77" => 
                when W => -- ascii for W: MOVE UP
                    movement_pos := unsigned(player_pos_vec (3 downto 0)) + 1;
                    if (movement_pos /= 15) then
                        player_pos_vec (3 downto 0) <= std_logic_vector(movement_pos);
                    else
                        player_pos_vec <= player_pos_vec;                        
                    end if;
                when A => -- ascii for A: MOVE LEFT
                    movement_pos := unsigned(player_pos_vec (7 downto 4)) - 1;
                    if (movement_pos /= 0) then
                        player_pos_vec (7 downto 4) <= std_logic_vector(movement_pos);
                    else
                        player_pos_vec <= player_pos_vec;  
                    end if;
                when S =>     
                    movement_pos := unsigned(player_pos_vec (3 downto 0)) - 1;
                    if (movement_pos /= 0) then
                        player_pos_vec (3 downto 0) <= std_logic_vector(movement_pos);
                    else
                        player_pos_vec <= player_pos_vec;                        
                    end if;
                when D => --ascii for D: MOVE RIGHT
                    movement_pos := unsigned(player_pos_vec (7 downto 4)) + 1;
                    if (movement_pos /= 15) then
                        player_pos_vec (7 downto 4) <= std_logic_vector(movement_pos);
                    else
                        player_pos_vec <= player_pos_vec;  
                    end if;
                when others =>
                    null;             
        end case; 
        
        if proj_enable(0) = '1' then
            proj1 <= update_proj(proj1, rand_cntr (3 downto 0));
        end if;

        if proj_enable(1) = '1' then
            proj2 <= update_proj(proj2, rand_cntr (6 downto 3));
        end if;

        if proj_enable(2) = '1' then
            proj3 <= update_proj(proj3, rand_cntr (3 downto 0));
        end if;
        
        if proj_enable(3) = '1' then
            proj4 <= update_proj(proj4, rand_cntr (4 downto 1));
        end if;
        
        if proj_enable(4) = '1' then
            proj5 <= update_proj(proj5, rand_cntr (6 downto 3));
        end if;                
        
        if proj_enable(5) = '1' then
            proj6 <= update_proj(proj6, rand_cntr (5 downto 2));
        end if;
        
        if proj_enable(6) = '1' then
            proj7 <= update_proj(proj7, rand_cntr (5 downto 2));
        end if;        
                
        if proj_enable(7) = '1' then
            proj8 <= update_proj(proj8, rand_cntr (7 downto 4));
        end if;

        if proj_enable(8) = '1' then
            proj9 <= update_proj(proj9, rand_cntr (3 downto 0));
        end if;

        if proj_enable(9) = '1' then
            proj10 <= update_proj(proj10, rand_cntr (6 downto 3));
        end if;
        
        if proj_enable(10) = '1' then
            proj11 <= update_proj(proj11, rand_cntr (3 downto 0));
        end if;
        
        if proj_enable(11) = '1' then
            proj12 <= update_proj(proj12, rand_cntr (4 downto 1));
        end if;                
        
        if proj_enable(12) = '1' then
            proj13 <= update_proj(proj13, rand_cntr (7 downto 4));
        end if;
        
        if proj_enable(13) = '1' then
            proj14 <= update_proj(proj14, rand_cntr (3 downto 0));
        end if;  
        
    end if;
end process;

--process (coin_collected, rst) is
--    variable inter_val: unsigned (7 downto 0);
--    variable temp: integer;
--    begin
--    if( rst = '1') then
--        coin_pos_vec <= x"A8";
--    else
--        if (already_scored = '0') then
--        --    temp := time_cntr mod 256;
--        --    inter_val := to_unsigned(time_cntr mod 256, inter_val'length);
--        --    inter_val := time_cntr (7 downto 0);
--            inter_val := rand_cntr (7 downto 0);
--        --    coin_pos <= std_logic_vector(time_cntr mod 256);
--        --    coin_pos_vec <= std_logic_vector(time_cntr (7 downto 0));
--            coin_pos_vec <= std_logic_vector(inter_val);
--            -- below if statements check if the coin is in proper bounds
--            if inter_val (7 downto 4) = 15 or inter_val (7 downto 4) = 0 then
--        --        inter_val (7 downto 4) := to_unsigned(std_logic_vector(inter_val (7 downto 4)) XOR "0001");
--                coin_pos_vec (7 downto 4) <= std_logic_vector(inter_val (7 downto 4)) XOR "0001";
--            end if; 
            
--            if inter_val (3 downto 0) = 15 or inter_val (3 downto 0) = 0 then
--                coin_pos_vec (3 downto 0) <= std_logic_vector(inter_val (3 downto 0)) XOR "0001";
--            end if;
            
--        end if;
--    end if;
----    coin_score <= coin_score + 1;
    
--end process;

process (coin_score, rst)
begin
    if (rst = '1') then
        proj_enable <= x"0000";
    else
        for i in 0 to 13 loop
            if(i < coin_score) then
                proj_enable(i) <= '1';
            end if;
        end loop;
    end if;
end process;

player_pos <= player_pos_vec;
--player_pos <= x"18";
coin_pos <= coin_pos_vec;
--coin_pos <= x"74";
proj_1 <= proj1 (7 downto 0);
proj_2 <= proj2 (7 downto 0);
proj_3 <= proj3 (7 downto 0);
proj_4 <= proj4 (7 downto 0);
proj_5 <= proj5 (7 downto 0);
proj_6 <= proj6 (7 downto 0);
proj_7 <= proj7 (7 downto 0);
proj_8 <= proj8 (7 downto 0);
proj_9 <= proj9 (7 downto 0);
proj_10 <= proj10 (7 downto 0);
proj_11 <= proj11 (7 downto 0);
proj_12 <= proj12 (7 downto 0);
proj_13 <= proj13 (7 downto 0);
proj_14 <= proj14 (7 downto 0);
score_cnt <= coin_score; 

end Behavioral;
