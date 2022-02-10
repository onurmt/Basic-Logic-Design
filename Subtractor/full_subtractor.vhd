-------------------------------
-- FULL SUBTRACTOR
-------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- FULL SUBTRACTOR
entity full_subtractor is

	port(
		a : in std_logic;
		b : in std_logic;
		c : in std_logic;
		-- Outputs:
		diff   : out std_logic;
		borrow : out std_logic
	);
end entity ;

architecture arch of full_subtractor is
begin 

	diff <= (a xor b) xor c;
	borrow <= ((not a) and (b or c)) or (b and c);

end architecture;