library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity kodeProject2 is
	port( a: in std_logic_vector(1 downto 0);
			d: out std_logic_vector(3 downto 0));
end kodeProject2;

architecture Behavioral of kodeProject2 is
begin
	with a select
		d(3 downto 0) <= "0001" when "00",
							  "0010" when "01",
							  "0100" when "10",
							  "1000" when "11",
							  "0000" when others;
end Behavioral;