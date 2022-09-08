library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity kodeLat4a2 is
	port( a: in std_logic_vector(1 downto 0);
			en: in std_logic;
			y: out std_logic_vector(3 downto 0));
end kodeLat4a2;

architecture Behavioral of kodeLat4a2 is
	signal s: std_logic_vector(2 downto 0);
begin
	s <= en & a;
	process(s)
	begin
		case s is
		when "000"|"001"|"010"|"011" => 
			y<= "0000";
		when "100" => 
			y<= "0001";
		when "101" => 
			y<= "0010";
		when "110" => 
			y<= "0100";
		when others => 
			y<= "1000";
		end case;
	end process;
end Behavioral;