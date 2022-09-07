----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:47:04 03/04/2022 
-- Design Name: 
-- Module Name:    P1_1 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity P1_1 is
port(
	 SW0 :in STD_LOGIC;
    SW1 :in STD_LOGIC;
    LD0 :out STD_LOGIC;
    LD1 :out STD_LOGIC;
    LD2 :out STD_LOGIC;
    LD3 :out STD_LOGIC;
    LD4 :out STD_LOGIC);
end P1_1;

architecture Behavioral of P1_1 is

begin

LD0 <= SW0 and SW1;
LD1 <= SW0 or SW1;
LD2 <= not SW0;
LD3 <= SW0 nand SW1;
LD4 <= SW0 nor SW1;

end Behavioral;

