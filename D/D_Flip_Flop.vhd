-------------------------------
--    D FLIP FLOP 
-------------------------------

library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

entity Dff is 
	port (clk   : in std_logic; 
	      D     : in std_logic; 
	      Q, Qn : out std_logic
		  ); 
end entity; 
 
architecture arch of Dff is 
	begin 
	  Dff_proc : process (clk) 
		
	begin 
		if (clk'event and clk = '1') then 
			Q <= D; 
		       Qn <= not D; 
		end if; 
		
	end process; 

end architecture; 
