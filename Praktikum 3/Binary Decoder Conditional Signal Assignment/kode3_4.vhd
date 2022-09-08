library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity kode3_4 is
	port(a : in STD_LOGIC_VECTOR (1 downto 0);
		  en : in STD_LOGIC;
		  y : out STD_LOGIC_VECTOR (3 downto 0));
end kode3_4;

architecture Behavioral of kode3_4 is
begin
	y <= "0000" when (en='0') else
		  "0001" when (a="00") else
		  "0010" when (a="01") else
		  "0100" when (a="10") else
		  "1000"; --a="11"
end Behavioral;