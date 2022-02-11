-----------------------------------------
--  8-Bit REGISTER 
-----------------------------------------

library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

entity reg_8_bit is 
	port (	
	    clk : in std_logic; 
            rst : in std_logic; 
         reg_in : in std_logic_vector(7 downto 0); 
             EN : in std_logic; 
			 
        -- Output
        reg_out : out std_logic_vector(7 downto 0)
		); 
end entity; 

architecture arch of reg_8_bit  is 
	begin 
		reg_proc : process (clk, rst)
	begin 
		if (rst = '0') then
	       reg_out <= x"00"; 
		elsif (clk'event and clk = '1') then 
			if (EN = '1') then 
			reg_out <= reg_in; 
			end if; 
		end if; 
	end process; 
end architecture; 
