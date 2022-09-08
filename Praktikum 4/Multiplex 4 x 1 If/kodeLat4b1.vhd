library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity kodeLat4b1 is
	port(i: in std_logic_vector(3 downto 0);
		  sel: in std_logic_vector(1 downto 0);
		  y: out std_logic);
end kodeLat4b1;

architecture Behavioral of kodeLat4b1 is
	signal s: std_logic_vector (1 downto 0);
begin
	s <= sel(1) & sel(0);
	process(s, i)
	begin
		if (s="00") then y <= i(0);
		elsif (s="01") then y <= i(1);
		elsif (s="10") then y <= i(2);
		else y <= i(3);
		end if;
	end process;
end Behavioral;