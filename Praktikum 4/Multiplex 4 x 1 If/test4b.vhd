LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY test4b IS
END test4b;
 
ARCHITECTURE behavior OF test4b IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT kodeLat4b1
    PORT(
         i : IN  std_logic_vector(3 downto 0);
         sel : IN  std_logic_vector(1 downto 0);
         y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i : std_logic_vector(3 downto 0) := (others => '0');
   signal sel : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal y : std_logic;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: kodeLat4b1 PORT MAP (
          i => i,
          sel => sel,
          y => y
        );
   -- Stimulus process
   stim_proc_i0: process
   begin		
      wait for 15 ns;
		 i(0) <= not i(0);
   end process;
	
	stim_proc_i1: process
   begin		
      wait for 30 ns;
		 i(1) <= not i(1);
   end process;
	
	stim_proc_i2: process
   begin		
      wait for 60 ns;
		 i(2) <= not i(2);
   end process;
	
	stim_proc_i3: process
   begin		
      wait for 120 ns;
		 i(3) <= not i(3);
   end process;
	
	
	stim_proc_sel0: process
   begin		
      wait for 240 ns;
		 sel(0) <= not sel(0);
   end process;
	stim_proc_sel1: process
   begin		
      wait for 480 ns;
		 sel(1) <= not sel(1);
   end process;
END;