library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4X1 is
	port(	a: in std_logic_vector(3 downto 0);
			sel: in std_logic_vector(1 downto 0);
			y: out std_logic);
end mux4X1;

architecture Behavioral of mux4X1 is
	signal s: std_logic_vector (1 downto 0);
begin
	s <= sel(1) & sel(0);
	process(s, a)
	begin
		if (s="00") then y <= a(0);
		elsif (s="01") then y <= a(1);
		elsif (s="10") then y <= a(2);
		else y <= a(3);
		end if;
	end process;
end Behavioral;