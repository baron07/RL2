library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity kode3_7 is
	port(a : in STD_LOGIC_VECTOR (1 downto 0);
		  en : in STD_LOGIC;
		  y : out STD_LOGIC_VECTOR (3 downto 0));
end kode3_7;

architecture Behavioral of kode3_7 is
	signal s:std_logic_vector(2 downto 0);
begin
	s <= en & a;
	with s select
		y <= "0000" when "000"|"001"|"010"|"011",
			  "0001" when "100",
			  "0010" when "101",
			  "0100" when "110",
			  "1000" when others;
end Behavioral;