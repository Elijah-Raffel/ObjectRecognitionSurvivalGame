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

signal player_dir: std_logic_vector (7 downto 0);
signal clk: std_logic := '0';
signal coin_collected: std_logic;
signal player_pos: std_logic_vector (7 downto 0);
signal coin_pos: std_logic_vector (7 downto 0);

begin

inst_1: Movement_V2 port map(
    clk => clk,
    player_in => player_dir,
    coin_collected => coin_collected,
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

movement_process: process begin
    for i in 0 to 4 loop
        player_dir <= W; 
        coin_collected <= '1';
        wait for 20ns; 
        coin_collected <= '0';
        wait for 1 ms;
        coin_collected <= '1';
        wait for 54ns; 
        coin_collected <= '0';
        player_dir <= D;
        wait for 1 ms;
        coin_collected <= '1';
        wait for 760ns; 
        coin_collected <= '0';
        player_dir <= S;
        wait for 1 ms;
        coin_collected <= '1';
        wait for 500 us; 
        coin_collected <= '0';
        player_dir <= A;
        wait for 1 ms;
    end loop;
    
    std.env.stop;
end process;


end Behavioral;
