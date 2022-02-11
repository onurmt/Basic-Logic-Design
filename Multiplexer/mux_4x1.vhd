-------------------------------
-- 4x1 MULTIPLEXER
-------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- 4x1 MULTIPLEXER
entity mux_4x1 is
port(
    a, b, c, d : in std_logic;
             s : in std_logic_vector(1 downto 0);
	-- Output
	   f   : out std_logic
     );	
end entity ;

architecture arch of mux_4x1 is
begin 
	    f <= a when (s = "00") else 
		 b when (s = "01") else 
		 c when (s = "10") else 
		 d when (s = "11"); 

end architecture;
