-------------------------------
-- 7 SEGMENT DISPLAY DECODER
-------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- 7 SEGMENT DISPLAY DECODER
entity decoder_7seg is

	port(
	 abc : in std_logic_vector(2 downto 0);	
	-- Outputs
       f : out std_logic_vector(6 downto 0)
		
	);
end entity ;

architecture arch of decoder_7seg is
begin 
   f <= "1111110" when (abc = "000") else 
	"0110000" when (abc = "001") else 
	"1101101" when (abc = "010") else 
	"1111001" when (abc = "011") else 
	"0110011" when (abc = "100") else 
	"1011011" when (abc = "101") else
	"1011111" when (abc = "110") else 
	"1110000" when (abc = "111"); 
		
end architecture;
