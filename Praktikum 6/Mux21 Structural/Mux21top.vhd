library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux21top is
    Port( sw :in STD_LOGIC_VECTOR(1 downto 0);
            btn : in STD_LOGIC_VECTOR(0 downto 0);
            led : out STD_LOGIC_VECTOR(0 downto 0)
);

end Mux21top;

architecture Behavioral of Mux21top is
component mux21b is
    port(
        a, b, c :in STD_LOGIC;
        y :out STD_LOGIC
);
end component;
begin
    c1: mux21b port map(
            a => sw(0),
            b => sw(1),
            c => btn(0),
            y => led(0));
end Behavioral;