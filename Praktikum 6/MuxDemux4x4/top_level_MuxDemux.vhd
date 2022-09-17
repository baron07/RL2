library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_level_MuxDemux is
	port( sw: in std_logic_vector (7 downto 0);
			led: out std_logic_vector (3 downto 0)
	);
end top_level_MuxDemux;

architecture Behavioral of top_level_MuxDemux is
--multiplexer 4 x 1
component mux4X1 is
	port(
		a: in std_logic_vector(3 downto 0);
		sel: in std_logic_vector(1 downto 0);
		y: out std_logic
	);
end component;

--demultiplexer 1 X 4
component demux1X4 is
	port(
		cin: in std_logic;
		sel: in std_logic_vector (1 downto 0);
		y: out std_logic_vector (3 downto 0)
	);
end component;
SIGNAL v: std_logic;
begin
	mux:mux4X1 port map(
		a(0)=> sw(0),
		a(1)=> sw(1),
		a(2)=> sw(2),
		a(3)=> sw(3),
		sel(0)=> sw(4),
		sel(1)=> sw(5),
		y => v
	);
	demux:demux1X4 port map(
		cin => v,
		sel(0) => sw(6),
		sel(1) => sw(7),
		y(0) => led(0),
		y(1) => led(1),
		y(2) => led(2),
		y(3) => led(3)
	);
end Behavioral;