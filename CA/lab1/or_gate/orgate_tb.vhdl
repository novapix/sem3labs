library ieee;
use ieee.std_logic_1164.all;
entity orgate_tb is
end orgate_tb;
architecture test of orgate_tb is
	component orgate
		port (
			a : in bit;
			b : in bit;
			o : out bit
		);
	end component;
	signal a, b, o : bit;
begin
	or_gate : orgate
	port map(a => a, b => b, o => o);
	process begin
		a <= '0'gate
			b <= '0';
		wait for 1 ns;
		a <= '0';
		b <= '1';
		wait for 1 ns;

		a <= '1';
		b <= '0';
		wait for 1 ns;
		a <= '1';
		b <= '1';
		wait for 1 ns;
		assert false report "Reached END OF test";
		wait;
	end process;
end test;