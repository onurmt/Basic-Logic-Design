-------------------------------
-- 4x4 SYNCHRONOUS ROM
-------------------------------

library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.NUMERIC_STD.ALL; 

entity sync_4x4_rom is 
    port( 
			 clk : in std_logic; 
		 address : in std_logic_vector(1 downto 0); 
		 -- Output
		data_out : out std_logic_vector(3 downto 0)
		); 
end entity; 

architecture arch of sync_4x4_rom is 

type ROM_type is array (0 to 3) of std_logic_vector(3 downto 0); 

constant ROM : ROM_type := (0 => "1110", 
							1 => "0010", 
							2 => "1111", 
							3 => "0100"
						    ); 
begin 
	Memory_proc : process (clk) 
	begin 
		if (clk'event and clk = '1') then 
		data_out <= ROM( to_integer ( unsigned(address) ) ) ;
		end if; 
		
	end process; 
	
end architecture; 
