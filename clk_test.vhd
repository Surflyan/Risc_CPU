
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY clk_test IS
END clk_test;
 
ARCHITECTURE behavior OF clk_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CLKctrl
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         T : OUT  std_logic_vector(3 downto 0)
        ); 
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal T : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CLKctrl PORT MAP (
          clk => clk,
          rst => rst,
          T => T
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      --wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		rst<='1';
		
		wait for clk_period*10;
		rst<='0';
		wait for clk_period*10;
		rst<='1';

      wait;
   end process;

END;