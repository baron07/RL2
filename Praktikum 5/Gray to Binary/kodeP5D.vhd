library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity kodeP5D is
	port(g:in STD_LOGIC_VECTOR(3 downto 0);
			b:out STD_LOGIC_VECTOR(3 downto 0));
end kodeP5D;

architecture Behavioral of kodeP5D is
begin
	process(g)
		variable bv :STD_LOGIC_VECTOR(3 downto 0);
	begin
		bv(3):= g(3);
		for i in 2 downto 0 loop
			bv(i):= bv(i+1)xor g(i);
		end loop;
		b <= bv;
	end process;
end Behavioral;