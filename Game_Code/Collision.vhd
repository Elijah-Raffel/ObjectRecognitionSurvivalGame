library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Collision is
-- Total Grid: 16x16
-- 14x14 Playable grid (1 to 14), Row and Column 0 and 15 are unplayable(outside grid).
-- Take in 15 vectors, 1 player, 1 coin, 13 projectiles.
-- Game with max at 13 projectiles.
-- Keep a life counter and score counter. Use seven seg on FPGA to display lives and score.
-- Left seven seg used for lives, Right two seven seg used for score.  
-- Port ( ); 

    Port ( clk : in STD_LOGIC;
           projectile_collision : out STD_LOGIC;
           coin_collected : out STD_LOGIC;
           life_counter : out INTEGER range 0 to 9;
           score_counter : out INTEGER range 0 to 99;
           
           player_pos : in STD_LOGIC_VECTOR (7 downto 0);
           coin_pos : in STD_LOGIC_VECTOR (7 downto 0);
           
           proj_1 : in STD_LOGIC_VECTOR (7 downto 0);
           proj_2 : in STD_LOGIC_VECTOR (7 downto 0);
           proj_3 : in STD_LOGIC_VECTOR (7 downto 0);
           proj_4 : in STD_LOGIC_VECTOR (7 downto 0);
           proj_5 : in STD_LOGIC_VECTOR (7 downto 0);
           proj_6 : in STD_LOGIC_VECTOR (7 downto 0);
           proj_7 : in STD_LOGIC_VECTOR (7 downto 0);
           proj_8 : in STD_LOGIC_VECTOR (7 downto 0);
           proj_9 : in STD_LOGIC_VECTOR (7 downto 0);
           proj_10 : in STD_LOGIC_VECTOR (7 downto 0);
           proj_11 : in STD_LOGIC_VECTOR (7 downto 0);
           proj_12 : in STD_LOGIC_VECTOR (7 downto 0);
           proj_13 : in STD_LOGIC_VECTOR (7 downto 0);
           proj_14 : in STD_LOGIC_VECTOR (7 downto 0));

end Collision;

architecture Behavioral of Collision is
    signal proj_collision : BOOLEAN := FALSE;
    signal coin_collision : BOOLEAN := FALSE;
    signal life_count : INTEGER := 9;   -- Initial life count
    signal score_count : INTEGER := 0;  -- Initial score

    signal proj1_collision : BOOLEAN := FALSE;
    signal proj2_collision : BOOLEAN := FALSE;
    signal proj3_collision : BOOLEAN := FALSE;
    signal proj4_collision : BOOLEAN := FALSE;
    signal proj5_collision : BOOLEAN := FALSE;
    signal proj6_collision : BOOLEAN := FALSE;
    signal proj7_collision : BOOLEAN := FALSE;
    signal proj8_collision : BOOLEAN := FALSE;
    signal proj9_collision : BOOLEAN := FALSE;
    signal proj10_collision : BOOLEAN := FALSE;
    signal proj11_collision : BOOLEAN := FALSE;
    signal proj12_collision : BOOLEAN := FALSE;
    signal proj13_collision : BOOLEAN := FALSE;
    signal proj14_collision : BOOLEAN := FALSE;

begin
    -- Check for collision between player_pos and proj_1 to proj_14
    proj1_collision <= (player_pos = proj_1);
    proj2_collision <= (player_pos = proj_2);
    proj3_collision <= (player_pos = proj_3);
    proj4_collision <= (player_pos = proj_4);
    proj5_collision <= (player_pos = proj_5);
    proj6_collision <= (player_pos = proj_6);
    proj7_collision <= (player_pos = proj_7);
    proj8_collision <= (player_pos = proj_8);
    proj9_collision <= (player_pos = proj_9);
    proj10_collision <= (player_pos = proj_10);
    proj11_collision <= (player_pos = proj_11);
    proj12_collision <= (player_pos = proj_12);
    proj13_collision <= (player_pos = proj_13);
    proj14_collision <= (player_pos = proj_14);

    -- Check for collision between coin_pos and player_pos
    coin_collision <= (coin_pos = player_pos);

    -- Combine individual collision signals into an overall collision signal
    proj_collision <= proj1_collision or proj2_collision or proj3_collision or proj4_collision or
                      proj5_collision or proj6_collision or proj7_collision or proj8_collision or
                      proj9_collision or proj10_collision or proj11_collision or proj12_collision or
                      proj13_collision or proj14_collision;
    
process(clk)
begin
    if rising_edge(clk) then
        -- Coin Collision Logic
        if coin_collision then
            score_count <= score_count + 1;  -- Increase score on coin collection
            coin_collected <= '1';  -- Signal that a coin is collected
        else
            coin_collected <= '0';
        end if;

        -- Projectile Collision Logic
        if proj_collision then
            life_count <= life_count - 1;
            projectile_collision <= '1';
        else 
            projectile_collision <= '0';
        end if;
    end if;
end process;

-- Update signals at the end of the process
life_counter <= life_count;  -- Ensure the counters are in the specified range
score_counter <= score_count;  -- Ensure the counters are in the specified range

end Behavioral;