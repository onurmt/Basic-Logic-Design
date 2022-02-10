-------------------------------
-- HALF SUBTRACTOR 
-------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- HALF SUBTRACTOR
entity half_subtractor is

	port(
		a : in std_logic;
		b : in std_logic;
		-- Outputs:
		diff   : out std_logic;
		borrow : out std_logic
	);
end entity ;

architecture arch of half_subtractor is
begin 

	diff   <= a xor b ;
	borrow <= (not a) and b ;

end architecture;