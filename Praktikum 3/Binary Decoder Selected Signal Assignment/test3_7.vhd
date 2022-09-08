LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY test3_7 IS
END test3_7;
 
ARCHITECTURE behavior OF test3_7 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT kode3_7
    PORT(
         a : IN  std_logic_vector(1 downto 0);
         en : IN  std_logic;
         y : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(1 downto 0) := (others => '0');
   signal en : std_logic := '0';

 	--Outputs
   signal y : std_logic_vector(3 downto 0);
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: kode3_7 PORT MAP (
          a => a,
          en => en,
          y => y
        );
   -- Stimulus process
   stim_proc_a0: process
   begin
      wait for 25 ns;	
		a(0) <= not a(0);
   end process;
	
	stim_proc_a1: process
   begin
      wait for 50 ns;	
		a(1) <= not a(1);
   end process;
	
	stim_proc_en: process
   begin
      wait for 100 ns;	
		en <= not en;
   end process;

END;
