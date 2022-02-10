-------------------------------
-- 4x4 ASYNCHRONOUS ROM
-------------------------------

library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.NUMERIC_STD.ALL;  

entity async_4x4_rom is 

	port(
       address : in std_logic_vector(1 downto 0); 
	   -- Output
      data_out : out std_logic_vector(3 downto 0)
		); 
end entity; 

architecture arch of async_4x4_rom is 

	type ROM_type is array (0 to 3) of std_logic_vector(3 downto 0); 

	constant ROM : ROM_type := (0 => "1110",
	                            1 => "0010", 
								2 => "1111", 
								3 => "0100"
							    ); 
	begin
		data_out <= ROM( to_integer (unsigned(address)) );

end architecture;
