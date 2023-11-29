library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL; 
 
entity Main is
  port (
    -- Main Clock (100 MHz)
    clk         : in std_logic;
    reset       : in std_logic;
    btnU        : in std_logic;
    
    -- Seven Seg Display     
    an  : out std_logic_vector(3 downto 0);
    seg : out std_logic_vector(0 to 6);
 
    -- UART Data
    i_UART_RX : in  std_logic;
    --o_UART_TX : out std_logic;
    
    -- led
    led : out std_logic_vector(15 downto 0); -- keeping track of score with led 15-8 for now untilandy is done w/ 7seg
    hsync : out std_logic;
    vsync : out std_logic;
    red   : out std_logic_vector(3 downto 0);
    green : out std_logic_vector(3 downto 0);
    blue  : out std_logic_vector(3 downto 0)
    
  );
end entity Main;
 
architecture RTL of Main is

component Movement_V2 is
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

component sev_seg is 
    Port ( clk : in std_logic;
           rst : in std_logic;
            
           life_counter : in unsigned(3 downto 0);
           score_counter : in unsigned(7 downto 0);
            
           anode : out std_logic_vector(3 downto 0);
           cathode : out std_logic_vector(0 to 6)
        );
end component;

component vga_main is
  port (
    clk   : in std_logic;
    rst   : in std_logic;
    --add each project, coin, and player as  input's
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
        proj_14 : in STD_LOGIC_VECTOR (7 downto 0);  
    -----
    hsync : out std_logic;
    vsync : out std_logic;
    red   : out std_logic_vector(3 downto 0);
    green : out std_logic_vector(3 downto 0);
    blue  : out std_logic_vector(3 downto 0)
  );
end component;
 
    signal w_RX_DV     : std_logic;
    signal w_RX_Byte   : std_logic_vector(7 downto 0);
  --signal finished_uart_sig : std_logic_vector (7 downto 0);
  --signal w_TX_Active : std_logic;
  --signal w_TX_Serial : std_logic;
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
  --signal clk: std_logic := '0';
    signal coin_collected: std_logic;
    signal projectile_collision: std_logic;
    signal player_pos: std_logic_vector (7 downto 0);
    signal coin_pos: std_logic_vector (7 downto 0);
   
    
    signal score: unsigned (7 downto 0);  
    signal life: unsigned (3 downto 0);
    
    signal twenty_five_mhz_clk : std_logic := '0';
    signal clk_cycles: unsigned (1 downto 0) := to_unsigned(0, 2);
    
    signal new_game: std_logic;
    signal dead: std_logic;
    
    signal mov_timer: unsigned (24 downto 0) := to_unsigned(0, 25);
    
begin
 
  UART_RX_Inst : entity work.UART_RX
    generic map (
      g_CLKS_PER_BIT => 868)            -- 100,000,000 / 115,200
    port map (
      clk       => clk,
      i_RX_Serial => i_UART_RX,
      o_RX_DV     => w_RX_DV,
      o_RX_Byte   => w_RX_Byte);
      
    MOVE_BOX: Movement_V2 port map(
        clk => clk,
--        rst => reset,
        rst => new_game,
        player_in => player_dir,
        coin_collected => coin_collected,
--        coin_collected => btnU,
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
    
    new_game <= dead or reset;
    
    Collision_Inst : Collision port map (
        clk => clk,
--        rst => reset,
        rst => new_game,
        projectile_collision => projectile_collision,
        coin_collected => coin_collected, 
        life_counter => life,

        player_pos => player_pos,
--        player_pos => x"3D",
        coin_pos => coin_pos,
--        coin_pos => x"A8",        

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
    
    SevenSeg_Inst : sev_seg port map(
        clk => clk,
        rst => reset,
        
        life_counter => life,     
        score_counter => score,
        
        anode => an,
        cathode => seg
    );
    
    vga_inst : vga_main port map (
        clk => clk,
        rst => reset,

        player_pos => player_pos,
--        player_pos => x"3D",
        coin_pos => coin_pos,
--        coin_pos => x"A8",        

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
        proj_14 => proj14,       
        
        hsync => hsync,
        vsync => vsync,
        red => red,
        green => green,
        blue => blue
    );
 
  -- update leds when new data is taken in
      LED_Display_Process: process(w_RX_Byte)
  begin
--        led (7 downto 0) <= w_RX_Byte;
--        player_dir <= w_RX_Byte;
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

player_move_input: process (w_RX_DV, new_game)
begin
    if (new_game = '1') then
        player_dir <= x"20";
    elsif w_RX_DV = '1' then
        player_dir <= w_RX_byte; -- taking WASD string and inputting into move_box
    end if;
end process;

clock_div: process (clk)
begin
    if rising_edge(clk) then
        if(clk_cycles = 0) then
            twenty_five_mhz_clk <= not twenty_five_mhz_clk;
        end if;
        clk_cycles <= clk_cycles+1;
        
        mov_timer <= mov_timer + 1;
        
        if (mov_timer = to_unsigned(100*1000*1000, mov_timer'length)) then
            mov_timer <= to_unsigned(0, mov_timer'length);
            if( life = 0) then
                dead <= '1';
            else
                dead <= '0';
            end if;            
        end if;
        
    end if;
end process;


--led (15 downto 8) <= std_logic_vector(score); -- this just outputs the current score in bit form to the leds
led (7 downto 0) <= coin_pos;
--led (7 downto 0) <= player_dir;
led (15 downto 8) <= player_pos (7 downto 0);
--led (15) <= coin_collected;

process (coin_collected) begin
    null;
end process;

end architecture RTL;