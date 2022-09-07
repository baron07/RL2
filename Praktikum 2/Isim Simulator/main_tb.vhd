--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:24:18 03/18/2022
-- Design Name:   
-- Module Name:   D:/Fakhri/KULI AH/Semester 2/Praktikum Rangkaian Logika 2/Minggu 4/Percobaan 2/P2/main_tb.vhd
-- Project Name:  P2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: P2_1
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY main_tb IS
END main_tb;
 
ARCHITECTURE behavior OF main_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT P2_1
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
-- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: P2_1 PORT MAP (
          a => a,
          b => b,
          y => y
        );

   -- Clock process definitions
--  <clock>_process :process
--  begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--  end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		a <= not a;		
	end process;
-- wait for <clock>_period*10;

      -- insert stimulus here
	
	-- Stimulus process
	stim_proc1: process
	begin
		-- hold reset state for 50 ns.
      wait for 50 ns;
		b <= not b;		
	end process;

END;
