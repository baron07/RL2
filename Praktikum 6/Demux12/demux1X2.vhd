library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux1X2 is
	port( cin: in std_logic;
			sel: in std_logic;
			y: out std_logic_vector (1 downto 0)
	);
end demux1X2;

architecture Behavioral of demux1X2 is
begin
	demux: process(cin, sel) is
	begin
		if(sel ='0') then y <=  cin & '0';
		else y <= '0' & cin;
		end if;
	end process demux;
end Behavioral;