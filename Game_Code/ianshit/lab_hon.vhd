library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity vga_main is
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
end vga_main;


architecture Behavioral of vga_main is
  -- Block Memory Component
  component blk_mem_gen_2 is
    port (
      clka  : in std_logic;
      ena   : in std_logic;
      wea   : in std_logic_vector(0 downto 0);
      addra : in std_logic_vector(8 downto 0);
      dina  : in std_logic_vector(11 downto 0);
      douta : out std_logic_vector(11 downto 0)
    );
  end component;
  
  component debouncer is
    port (
      clk : in std_logic;
      btn : in std_logic;
      db  : out std_logic
    );
  end component;

  component vga_controller_640_60 is
    port (
      rst       : in std_logic;
      pixel_clk : in std_logic;
    
      hs        : out std_logic;
      vs        : out std_logic;
      hcount    : out std_logic_vector(10 downto 0);
      vcount    : out std_logic_vector(10 downto 0);
      blank     : out std_logic
    );
  end component;

  -- Signal Declarations
  signal pc_count    : integer := 0;
  signal rst_s       : std_logic;
  signal hsync_s     : std_logic;
  signal vsync_s     : std_logic;
  signal pixel_clk   : std_logic;
  signal blank_s     : std_logic;
  signal p_clk_s     : std_logic;
  signal ena_s       : std_logic := '1';
  signal w_ena_s     : std_logic := '1';
  signal deb         : std_logic := '0';
  signal wea_s       : std_logic_vector(0 downto 0);
  signal nsew        : std_logic_vector(3 downto 0);
  signal h_mem_index : std_logic_vector(4 downto 0);
  signal v_mem_index : std_logic_vector(3 downto 0);
  signal h_box_index : std_logic_vector(4 downto 0) := (others => '0');
  signal v_box_index : std_logic_vector(3 downto 0) := (others => '0');
  signal bram_addr_s : std_logic_vector(8 downto 0);
  signal hcount_s    : std_logic_vector(10 downto 0);
  signal vcount_s    : std_logic_vector(10 downto 0);
  signal din_s       : std_logic_vector(11 downto 0);
  signal dout_s      : std_logic_vector(11 downto 0);

  constant red_all   : std_logic_vector(11 downto 0) := "111100000000";
  constant green_all : std_logic_vector(11 downto 0) := "000011110000";
  constant blue_all  : std_logic_vector(11 downto 0) := "000000001111";

begin
  bram : blk_mem_gen_2
  port map (
    clka => clk,
    ena => ena_s,
    wea => wea_s,
    addra => bram_addr_s,
    dina => din_s,
    douta => dout_s
  );

  rst_db : debouncer
  port map (
    clk => clk,
    btn => rst,
    db => rst_s
  );

  vga : vga_controller_640_60
  port map (
    rst => rst_s,
    pixel_clk => pixel_clk,
    hs => hsync_s,
    vs => vsync_s,
    hcount => hcount_s,
    vcount => vcount_s,
    blank => blank_s
  );

  ena_s <= '1';
  wea_s <= "" & w_ena_s;

  h_mem_index <= hcount_s(9 downto 5);
  v_mem_index <= vcount_s(8 downto 5);

  bram_addr_s <= h_mem_index & v_mem_index;

  red   <= dout_s(11 downto 8) when blank_s = '0' else (others => '0');
  green <= dout_s(7 downto 4) when blank_s = '0' else (others => '0');
  blue  <= dout_s(3 downto 0) when blank_s = '0' else (others => '0');

  hsync <= hsync_s;
  vsync <= vsync_s;

  -- Clock divider, 100 mhz => 25.175 mhz
  pix_clk_gen : process(clk)
  begin
    if rising_edge(clk) then
      if pc_count >= 1 then
        pc_count <= 0;
        pixel_clk <= not pixel_clk;
      else
        pc_count <= pc_count + 1;
      end if;
    end if;
  end process;

  -- Writes color to pixels.
  write_colors : process(pixel_clk)
  begin
  
  --add each entity's if statements for printing
  --make sure to add black bars on left and right side
  --black bar should include index's 0 and 15 - need to check with monitor
   if rising_edge(pixel_clk) then
    -- Make black bar in index 0 and 14+ in both horizontal and vertical direction
    if ((h_mem_index >= "00011" and h_mem_index <= "10000") and (v_mem_index >= "0001" and v_mem_index <= "1110")) then 
        if ((h_mem_index(0) xor v_mem_index(0)) = '1') then
           din_s <= "111111111111";
        else
            din_s <= "000000000000";
        end if;
         -- Update Coin position 
        if (((unsigned(h_mem_index) = (unsigned(coin_pos(7 downto 4)) +2)) or (h_mem_index(4) = '1' and (unsigned(coin_pos(7 downto 4)) +2) = "0000")) and (v_mem_index = coin_pos(3 downto 0))) then
            din_s <= green_all; 
            end if;
        -- Update player position 
        if (((unsigned(h_mem_index) = (unsigned(player_pos(7 downto 4)) +2)) or (h_mem_index(4) = '1' and (unsigned(player_pos(7 downto 4)) +2) = "0000")) and (v_mem_index = player_pos(3 downto 0))) then
            din_s <= blue_all;
            end if; 
        -- Update Proj 1 - 14    
        if (((unsigned(h_mem_index) = (unsigned(proj_1(7 downto 4)) +2)) or (h_mem_index(4) = '1' and (unsigned(proj_1(7 downto 4)) +2) = "0000")) and (v_mem_index = proj_1(3 downto 0))) then
            din_s <= red_all;
            end if;
        -- Proj 2  
        if (((unsigned(h_mem_index) = (unsigned(proj_2(7 downto 4)) +2)) or (h_mem_index(4) = '1' and (unsigned(proj_2(7 downto 4)) +2) = "0000")) and (v_mem_index = proj_2(3 downto 0))) then
            din_s <= red_all;
            end if;
        -- Proj 3
        if (((unsigned(h_mem_index) = (unsigned(proj_3(7 downto 4)) +2)) or (h_mem_index(4) = '1' and (unsigned(proj_3(7 downto 4)) +2) = "0000")) and (v_mem_index = proj_3(3 downto 0))) then
            din_s <= red_all;
            end if;
        -- Proj 4
        if (((unsigned(h_mem_index) = (unsigned(proj_4(7 downto 4)) +2)) or (h_mem_index(4) = '1' and (unsigned(proj_4(7 downto 4)) +2) = "0000")) and (v_mem_index = proj_4(3 downto 0))) then
            din_s <= red_all;
            end if;
        -- Proj 5
        if (((unsigned(h_mem_index) = (unsigned(proj_5(7 downto 4)) +2)) or (h_mem_index(4) = '1' and (unsigned(proj_5(7 downto 4)) +2) = "0000")) and (v_mem_index = proj_5(3 downto 0))) then
            din_s <= red_all;
            end if;
        -- Proj 6 
        if (((unsigned(h_mem_index) = (unsigned(proj_6(7 downto 4)) +2)) or (h_mem_index(4) = '1' and (unsigned(proj_6(7 downto 4)) +2) = "0000")) and (v_mem_index = proj_6(3 downto 0))) then
            din_s <= red_all;
            end if;
        -- Proj 7
        if (((unsigned(h_mem_index) = (unsigned(proj_7(7 downto 4)) +2)) or (h_mem_index(4) = '1' and (unsigned(proj_7(7 downto 4)) +2) = "0000")) and (v_mem_index = proj_7(3 downto 0))) then
            din_s <= red_all;
            end if;
        -- Proj 8
        if (((unsigned(h_mem_index) = (unsigned(proj_8(7 downto 4)) +2)) or (h_mem_index(4) = '1' and (unsigned(proj_8(7 downto 4)) +2) = "0000")) and (v_mem_index = proj_8(3 downto 0))) then
            din_s <= red_all;
       end if; 
        -- Proj 9
        if (((unsigned(h_mem_index) = (unsigned(proj_9(7 downto 4)) +2)) or (h_mem_index(4) = '1' and (unsigned(proj_9(7 downto 4)) +2) = "0000")) and (v_mem_index = proj_9(3 downto 0))) then
            din_s <= red_all;
        end if;
        -- Proj 10
        if (((unsigned(h_mem_index) = (unsigned(proj_10(7 downto 4)) +2)) or (h_mem_index(4) = '1' and (unsigned(proj_10(7 downto 4)) +2) = "0000")) and (v_mem_index = proj_10(3 downto 0))) then
            din_s <= red_all;
        end if;
        -- Proj 11
        if (((unsigned(h_mem_index) = (unsigned(proj_11(7 downto 4)) +2)) or (h_mem_index(4) = '1' and (unsigned(proj_11(7 downto 4)) +2) = "0000")) and (v_mem_index = proj_11(3 downto 0))) then
            din_s <= red_all;
        end if;
        -- Proj 12
        if (((unsigned(h_mem_index) = (unsigned(proj_12(7 downto 4)) +2)) or (h_mem_index(4) = '1' and (unsigned(proj_12(7 downto 4)) +2) = "0000")) and (v_mem_index = proj_12(3 downto 0))) then
            din_s <= red_all;
        end if;
        -- Proj 13
        if (((unsigned(h_mem_index) = (unsigned(proj_13(7 downto 4)) +2)) or (h_mem_index(4) = '1' and (unsigned(proj_13(7 downto 4)) +2) = "0000")) and (v_mem_index = proj_13(3 downto 0))) then
            din_s <= red_all;
        end if;
        -- Proj 14
        if (((unsigned(h_mem_index) = (unsigned(proj_14(7 downto 4)) +2)) or (h_mem_index(4) = '1' and (unsigned(proj_14(7 downto 4)) +2) = "0000")) and (v_mem_index = proj_14(3 downto 0))) then
            din_s <= red_all;
        end if;
        
        else
            din_s <= "111100001111"; 
    end if;
end if;
  end process;
end Behavioral;
