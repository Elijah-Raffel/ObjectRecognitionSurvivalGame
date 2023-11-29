----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/22/2023 04:15:31 PM
-- Design Name: 
-- Module Name: movement_v2_sim - Behavioral
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

entity movement_v2_sim is
--  Port ( );
end movement_v2_sim;

architecture Behavioral of movement_v2_sim is

constant W : std_logic_vector := x"57";
constant A : std_logic_vector := x"41";
constant S : std_logic_vector := x"53";
constant D : std_logic_vector := x"44";

component Movement_V2 is
    Port ( clk : in STD_LOGIC;
           player_in : in STD_LOGIC_VECTOR (7 downto 0);
           rst: in std_logic;
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
end component;

component Collision
    Port ( clk : in STD_LOGIC;
           rst : in std_logic;
           projectile_collision : out STD_LOGIC;
           coin_collected : out STD_LOGIC;
           life_counter : out unsigned (3 downto 0);
           
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
end component;

signal proj1: std_logic_vector (7 downto 0);
signal proj2: std_logic_vector (7 downto 0);
signal proj3: std_logic_vector (7 downto 0);
signal proj4: std_logic_vector (7 downto 0);

signal proj5: std_logic_vector (7 downto 0);
signal proj6: std_logic_vector (7 downto 0);
signal proj7: std_logic_vector (7 downto 0);
signal proj8: std_logic_vector (7 downto 0);

signal proj9: std_logic_vector (7 downto 0);
signal proj10: std_logic_vector (7 downto 0);
signal proj11: std_logic_vector (7 downto 0);
signal proj12: std_logic_vector (7 downto 0);

signal proj13: std_logic_vector (7 downto 0);
signal proj14: std_logic_vector (7 downto 0);
signal rst: std_logic;

signal player_dir: std_logic_vector (7 downto 0);
signal clk: std_logic := '0';
signal coin_collected: std_logic;
signal player_pos: std_logic_vector (7 downto 0);
signal coin_pos: std_logic_vector (7 downto 0);
signal score: unsigned (7 downto 0);

signal twofive_mhz: std_logic := '0';
signal twofive_mhz_vec: std_logic_vector (1 downto 0) := "00";

signal projectile_collision: std_logic;
signal life: unsigned (3 downto 0);

begin

inst_1: Movement_V2 port map(
    clk => clk,
    rst => rst,
    player_in => player_dir,
    coin_collected => coin_collected,
    score_cnt => score,
    player_pos => player_pos,
    coin_pos => coin_pos,
    proj_1 => proj1,
    proj_2 => proj2,
    proj_3 => proj3,
    proj_4 => proj4,
    proj_5 => proj5,
    proj_6 => proj6,
    proj_7 => proj7,
    proj_8 => proj8,
    proj_9 => proj9,
    proj_10 => proj10,
    proj_11 => proj11,
    proj_12 => proj12,
    proj_13 => proj13,
    proj_14 => proj14
);

    Collision_Inst : Collision port map (
        clk => clk,
        rst => rst,
        projectile_collision => projectile_collision,
        coin_collected => coin_collected, 
        life_counter => life,

        player_pos => player_pos,
        coin_pos => coin_pos,

        proj_1 => proj1,
        proj_2 => proj2,
        proj_3 => proj3,
        proj_4 => proj4,
        proj_5 => proj5,
        proj_6 => proj6,
        proj_7 => proj7,
        proj_8 => proj8,
        proj_9 => proj9,
        proj_10 => proj10,
        proj_11 => proj11,
        proj_12 => proj12,
        proj_13 => proj13,
        proj_14 => proj14
    );

clk_timer: process begin
    clk <=  not clk;
    wait for 5 ns; 
end process;

clk_twofive_timer: process (clk) begin 
    if (rising_edge(clk)) then
        if (twofive_mhz_vec = "00") then 
            twofive_mhz <= not twofive_mhz; 
        end if;
        twofive_mhz_vec <= std_logic_vector(unsigned(twofive_mhz_vec) + 1);
    end if; 
end process;



movement_process: process begin

        rst <= '1'; 
        wait for 100 ns;
        rst <= '0';
--    for i in 0 to 4 loop
        player_dir <= W; 
--        coin_collected <= '1';
--        wait for 20ns; 
--        coin_collected <= '0';
        wait for 2 ms;
--        coin_collected <= '1';
--        wait for 54ns; 
--        coin_collected <= '0';
--        player_dir <= D;
--        wait for 4 ms;
----        coin_collected <= '1';
----        wait for 760ns; 
----        coin_collected <= '0';
--        player_dir <= W;
--        wait for 2 ms;
----        coin_collected <= '1';
----        wait for 500 us; 
----        coin_collected <= '0';
--        player_dir <= A;
--        wait for 1 ms;
--    end loop;
    while player_pos (3 downto 0) /= x"1" and player_pos (7 downto 4) /= x"E" loop 
        while player_pos (7 downto 4) /= x"E" loop
            player_dir <= D;
            wait for 250 us;
        end loop;
        
            player_dir <= S;
            wait for 250 us;
            
        while player_pos (7 downto 4) /= x"1" loop
            player_dir <= A;
            wait for 250 us;
        end loop; 
    end loop;
    
    
    std.env.stop;
end process;


end Behavioral;
