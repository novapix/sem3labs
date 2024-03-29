library ieee;
use ieee.std_logic_1164.all;
entity enc is
	port (
		i0, i1, i2, i3, i4, i5, i6, i7 : in std_logic;
		o0, o1, o2 : out std_logic
	);
end enc;

architecture behave of enc is
begin
	o2 <= i4 or i5 or i6 or i7;
	o1 <= i2 or i3 or i6 or i7;
	o0 <= i1 or i3 or i5 or i7;
end behave;