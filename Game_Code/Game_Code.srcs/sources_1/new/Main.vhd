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
-- 14x14 Playable grid
-- Take in 15 vectors 1 player, 1 coin, 13 projectiles
--  Port ( ); 

end Main;

architecture Behavioral of Main is
    -- Check for Collisions, player position with respect to all projectile, minus one life if no more lifes end game
    --                       player position with coin, plus one score and activate another projectile
    --                       projectile with coin, skip over
    -- Once detected a collision, send out a T or F boolean
begin


end Behavioral;
