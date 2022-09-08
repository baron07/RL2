library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity kode3_6 is
	port (r : in STD_LOGIC_VECTOR (4 downto 1);
			pcode : out STD_LOGIC_VECTOR (2 downto 0));
end kode3_6;

architecture Behavioral of kode3_6 is
begin
	with r select
		pcode <= "100" when "1000"|"1001"|"1010"|"1011"|"1100"|"1101"|"1110"|"1111",
					"011" when "0100"|"0101"|"0110"|"0111",
					"010" when "0010"|"0011",
					"001" when "0001",
					"000" when others;
end Behavioral;