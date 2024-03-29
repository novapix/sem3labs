library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity alu is
	port (
		inp_a : in signed(3 downto 0);
		inp_b : in signed(3 downto 0);
		sel : in std_logic_vector (2 downto 0);
		out_alu : out signed(3 downto 0)
	);
end alu;
architecture behave of alu is
begin
	process (inp_a, inp_b, sel)
	begin
		case sel is
			when "000" =>
				out_alu <= inp_a + inp_b; -- addition
			when "001" =>
				out_alu <= inp_a - inp_b; --subtraction
			when "010" =>
				out_alu <= inp_a - 1; --sub 1
			when "011" =>
				out_alu <= inp_a + 1; --add 1
			when "100" =>
				out_alu <= inp_a and inp_b; --AND gate
			when "101" =>
				out_alu <= inp_a or inp_b; -- OR gate
			when "110" =>
				out_alu <= not inp_a; -- NOT gate
			when "111" =>
				out_alu <= inp_a xor inp_b; -- XOR gate
			when others => null;
		end case;
	end process;
end behave;