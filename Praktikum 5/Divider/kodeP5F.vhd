library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
Use IEEE.STD_LOGIC_unsigned.all;
entity kodeP5F is
	port(	numer :in STD_LOGIC_VECTOR(7 downto 0);
			denom :in STD_LOGIC_VECTOR(3 downto 0);
			quotient :out STD_LOGIC_VECTOR(3 downto 0);
			remainder :out STD_LOGIC_VECTOR(3 downto 0));
end kodeP5F;

architecture Behavioral of kodeP5F is
begin
	process(numer ,denom)
	variable d, n1 :STD_LOGIC_VECTOR(4 downto 0);
	variable n2 :STD_LOGIC_VECTOR(3 downto 0);
	begin
		d := '0' & denom;
		n2 := numer (3 downto 0);
		n1 := '0' & numer (7 downto 4);
	for i in 0 to 3 loop
		n1 := n1(3 downto 0)& n2(3);
		n2 := n2(2 downto 0)& '0' ;
		if n1 >= d then
			n1 := n1-d;
			n2(0):= '1' ;
		end if;
	end loop;
	quotient <= n2;
	remainder <= n1(3 downto 0);
	end process;
end Behavioral;