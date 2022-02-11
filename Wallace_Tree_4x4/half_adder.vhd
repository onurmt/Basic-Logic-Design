-------------------------------
-- HALF ADDER 
-------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

-- HALF ADDER
entity half_adder is

	port(
		a : in std_logic;
		b : in std_logic;
		
	    -- Outputs
	    sum   : out std_logic;
	    carry : out std_logic
	);
end entity ;

architecture arch of half_adder is
begin 

	sum   <= a xor b ;
	carry <= a and b ;

end architecture;
