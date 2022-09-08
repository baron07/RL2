LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY test3_6 IS
END test3_6;
 
ARCHITECTURE behavior OF test3_6 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT kode3_6
    PORT(
         r : IN  std_logic_vector(4 downto 1);
         pcode : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal r : std_logic_vector(4 downto 1) := (others => '0');

 	--Outputs
   signal pcode : std_logic_vector(2 downto 0);
BEGIN
   uut: kode3_6 PORT MAP (
          r => r,
          pcode => pcode
        );
   -- Stimulus process
   stim_proc_r1: process
   begin
      wait for 25 ns;
		r(1) <= not r(1);
   end process;
	
	stim_proc_r2: process
   begin
      wait for 50 ns;
		r(2) <= not r(2);
   end process;
	
	stim_proc_r3: process
   begin
      wait for 100 ns;
		r(3) <= not r(3);
   end process;
	
	stim_proc_r4: process
   begin
      wait for 200 ns;
		r(4) <= not r(4);
   end process;
END;