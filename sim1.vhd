LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY sim1 IS
END sim1;
 
ARCHITECTURE behavior OF sim1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT principal
    PORT(
         a0 : IN  std_logic;
         a1 : IN  std_logic;
         s : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a0 : std_logic := '0';
   signal a1 : std_logic := '0';

 	--Outputs
   signal s : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: principal PORT MAP (
          a0 => a0,
          a1 => a1,
          s => s
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 
		a0 := '0';
		a1 := '0';
      wait;
		a0 := '1';
		a1 := '0';
      wait;
		a0 := '0';
		a1 := '1';
      wait;
		a0 := '1';
		a1 := '1';
      
   end process;

END;
