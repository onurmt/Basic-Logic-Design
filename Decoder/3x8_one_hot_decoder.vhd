-------------------------------
-- 3x8 - ONE HOT DECODER
-------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- 3x8 - ONE HOT DECODER
entity decoder_3x8 is
port(
		abc : in std_logic_vector(2 downto 0);
	
		 -- Output
		f   : out std_logic_vector(7 downto 0)	
     );
end entity ;

architecture arch of decoder_3x8 is
begin 
	
	  f <= "00000001" when (abc = "000") else 
	       "00000010" when (abc = "001") else 
	       "00000100" when (abc = "010") else 
	       "00001000" when (abc = "011") else 
	       "00010000" when (abc = "100") else 
	       "00100000" when (abc = "101") else 
	       "01000000" when (abc = "110") else 
	       "10000000" when (abc = "111"); 	   		       
end architecture;
