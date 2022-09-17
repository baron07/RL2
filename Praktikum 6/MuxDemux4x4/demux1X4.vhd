library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux1X4 is
	port( cin: in std_logic;
			sel: in std_logic_vector (1 downto 0);
			y: out std_logic_vector (3 downto 0)
	);
end demux1X4;

architecture Behavioral of demux1X4 is
begin
	demux: process(cin, sel) is
	begin
		if(sel ="11") then y <=  cin & "000";
		elsif(sel ="10") then y <= '0' & cin & "00";
		elsif(sel ="01") then y <= "00" & cin & '0';
		elsif(sel ="00") then y <= "000" & cin;
		end if;
	end process demux;
end Behavioral;