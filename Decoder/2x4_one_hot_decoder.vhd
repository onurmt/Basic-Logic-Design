-------------------------------
-- 2x4 - ONE HOT DECODER
-------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- 2x4 - ONE HOT DECODER
entity decoder_2x4 is

	    port(
			   a : in std_logic;
			   b : in std_logic;
		-- Outputs:
f0, f1, f2, f3   : out std_logic;
	    );
end entity ;

architecture arch of decoder_2x4 is
begin 

	f0 <= (not a) and (not b);
	f1 <= (not a) and b;
	f2 <=       a and (not b);
	f3 <=       a and b;

end architecture;