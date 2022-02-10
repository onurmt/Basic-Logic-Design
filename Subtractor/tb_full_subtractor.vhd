----------------------------------------------------------------------------------
-- University : Uludağ University 
-- Student    : Onur Mete
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_full_subtractor is
--  Port ( );
end tb_full_subtractor;

architecture Behavioral of tb_full_subtractor is
component full_subtractor is
	port( 
			a, b, c : in std_logic;
			-- Output
	  diff, borrow  : out std_logic
		);
		
	end component;

signal a, b, c, diff, borrow : std_logic;

begin

uut: full_subtractor port map(
		 a => a, 
		 b => b, 
		 c => c,
	  diff => diff,
	borrow => borrow
	);
	
-- Test Case 
stim_proc: process
begin

	a <= '0';
	b <= '0';
	c <= '0';
	wait for 20 ns;

	a <= '0';
	b <= '0';
	c <= '1';
	wait for 20 ns;

	a <= '0';
	b <= '1';
	c <= '0';
	wait for 20 ns;

	a <= '0';
	b <= '1';
	c <= '1';
	wait for 20 ns;

	a <= '1';
	b <= '0';
	c <= '0';
	wait for 20 ns;

	a <= '1';
	b <= '0';
	c <= '1';
	wait for 20 ns;

	a <= '1';
	b <= '1';
	c <= '0';
	wait for 20 ns;

	a <= '1';
	b <= '1';
	c <= '1';
	wait for 20 ns;
	
wait;
end process;
end Behavioral;