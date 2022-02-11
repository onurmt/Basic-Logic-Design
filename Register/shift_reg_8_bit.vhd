-----------------------------------------
--  8-Bit 4 Stage SIPO SHIFT REGISTER 
-----------------------------------------

library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

entity shift_reg_8_bit is 
    port( 
               clk   : in std_logic; 
	       rst   : in std_logic; 
               Din   : in std_logic_vector(7 downto 0); 	
	    -- Outputs 
	Dout0, Doutl : out std_logic_vector(7 downto 0); 
	Dout2, Dout3 : out std_logic_vector(7 downto 0)
	 ); 
end entity; 

architecture arch of shift_reg_8_bit is 
signal D0, D1, D2, D3 : std_logic_vector(7 downto 0); 
 begin 

       shift_proc : process (clk, rst) 
	begin 
		if (rst = '0') then 
			D0 <= x"00"; 
			D1 <= x"00"; 
			D2 <= x"00"; 
			D3 <= x"00"; 
		elsif (clk'event and clk ='1') then 
			D0 <= Din; 
			Dl <= D0; 
			D2 <= Dl; 
			D3 <= D2; 
		end if; 
       end process; 
			Dout3 <= D3; 
			Dout2 <= D2; 
			Doutl <= Dl; 
			Dout0 <= D0; 
end architecture; 
