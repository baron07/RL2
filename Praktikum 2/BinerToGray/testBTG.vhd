LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY testProject2 IS
END testProject2;
 
ARCHITECTURE behavior OF testProject2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT kodeProject2
    PORT(
         a : IN  std_logic_vector(1 downto 0);
         d : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal d : std_logic_vector(3 downto 0); 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: kodeProject2 PORT MAP (
          a => a,
          d => d
        );
   -- Stimulus process
   stim_proc0: process
   begin		
      wait for 50 ns;
		a(0) <= not a(0);
   end process;
	
	stim_proc1: process
   begin		
      wait for 100 ns;
		a(1) <= not a(1);
   end process;
END;