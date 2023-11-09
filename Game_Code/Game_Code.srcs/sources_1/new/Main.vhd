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
-- Total Grid: 16x16
-- 14x14 Playable grid (1 to 14), Row and Column 0 and 15 are unplayable(outside grid).
-- Take in 15 vectors, 1 player, 1 coin, 13 projectiles.
-- Game with max at 13 projectiles.
-- Keep a life counter and score counter. Use seven seg on FPGA to display lives and score.
-- Left seven seg used for lives, Right two seven seg used for score.  
-- Port ( ); 

end Main;

architecture Behavioral of Main is
    -- Check for Collisions, player position with respect to all projectile, minus one life if no more lifes end game, player and projectile stays moving in same position
    --                       player position with coin, plus one score and activate another projectile and setout signal to reset coin position player keeps moving 
    --                       projectile with coin, skip over - do nothing
    -- Once detected a collision, send out a T or F boolean
begin


end Behavioral;
