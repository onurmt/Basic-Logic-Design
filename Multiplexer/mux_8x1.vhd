-------------------------------
-- 8x1 MULTIPLEXER
-------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- 8x1 MULTIPLEXER
entity mux_8x1 is

	port(
a, b, c, d, e, g, h, k : in std_logic;
                     s : in std_logic_vector(2 downto 0);
		        -- Output
		           f   : out std_logic
	
	);
end entity ;

architecture arch of mux_8x1 is
begin 

	f <= a when (s = "000") else 
		 b when (s = "001") else 
		 c when (s = "010") else 
		 d when (s = "011") else 
		 e when (s = "100") else 
		 g when (s = "101") else 
		 h when (s = "110") else 
		 k when (s = "111"); 

end architecture;