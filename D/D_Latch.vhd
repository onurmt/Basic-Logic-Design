-------------------------------
--    D LATCH 
-------------------------------

library IEEE; 
use IEEE.STD_LOGIC_1164.all;
 
entity Dlatch is 

	port (C, D : in std_logic; 
	     Q, Qn : out std_logic 
	      ); 		 
end entity; 
	
architecture arch of Dlatch is 
	begin 
		D_Latch_proc : process (C, D) 	
	begin 	
		if (C = '1') then 
		   Q <= D; 
	          Qn <= not D;   
	        end if;
			
	end process; 
	
end architecture; 
