library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux21a is
		Port( a, b, s :in STD_LOGIC;
			y: out std_logic);
end mux21a;

architecture Behavioral of mux21a is
begin
	y <=(not s and a)or (s and b);
end Behavioral;