library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity kodeP5T is
port(	a,b: IN STD_LOGIC_VECTOR(3 downto 0);
		quotient :out STD_LOGIC_VECTOR(3 downto 0); 
		reminder :out STD_LOGIC_VECTOR(3 downto 0)
			);
end kodeP5T;

architecture Behavioral of kodeP5T is
signal x: STD_LOGIC_VECTOR(7 downto 0);
signal z: STD_LOGIC_VECTOR(3 downto 0);
begin
	process(a,b)
	variable pv,bp: STD_LOGIC_VECTOR(7 downto 0);
	begin
		pv := "00000000";
		bp := "0000" & b;
		for i in 0 to 3 loop
			if a(i) = '1' then
				pv := pv + bp;
			end if;
			bp:= bp(6 downto 0) & '0';
		end loop;
		x <= pv;
	end process;
	
	z <= "0010";
	
	process(x,z) 
	variable d, n1 :STD_LOGIC_VECTOR(4 downto 0); 
	variable n2 :STD_LOGIC_VECTOR(3 downto 0); 
	begin 
		d  := '0' & z ; 
		n2 := x(3 downto 0); 
		n1 := '0' & x (7 downto 4); 
		for i in 0 to 3 loop 
			n1 := n1(3 downto 0)& n2(3); 
			n2 := n2(2 downto 0)& '0' ; 
			if n1 >= d then n1 := n1-d; 
				n2(0):= '1'; 
			end if; 
		end loop; 
	quotient <= n2; 
	reminder <= n1(3 downto 0);
	end process; 
	

end Behavioral;