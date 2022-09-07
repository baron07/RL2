----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:10:51 03/18/2022 
-- Design Name: 
-- Module Name:    P2_1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity P2_1 is
	port(
		a:in STD_LOGIC;
		b:in STD_LOGIC;
		y:out STD_LOGIC);
end P2_1;

architecture Behavioral of P2_1 is

begin
	y<=a and b;
end Behavioral;

