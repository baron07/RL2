library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux21b is
	Port( a, b, c :in STD_LOGIC;
			y: out std_logic);
end mux21b;

architecture Behavioral of mux21b is

begin
	p1 :process(a,b,c)
		begin
			if c = '0' then
				y <= a;
			else
				y <= b;
			end if;
	end process p1;
end Behavioral;