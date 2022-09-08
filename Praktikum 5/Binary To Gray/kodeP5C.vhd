library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity kodeP5C is
	port(b:in STD_LOGIC_VECTOR(3 downto 0);
			g:out STD_LOGIC_VECTOR(3 downto 0));
end kodeP5C;

architecture Behavioral of kodeP5C is
begin
	process(b)
	begin
		g(3)<= b(3);
			for i in 2 downto 0 loop
				g(i)<= b(i+1)xor b(i );
			end loop;
	 end process;
end Behavioral;