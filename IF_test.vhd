
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY IF_test IS
END IF_test;
 
ARCHITECTURE behavior OF IF_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IFctrl
    PORT(
         T0 : IN  std_logic;
         clk : IN  std_logic;
         NEWPC : IN  std_logic_vector(15 downto 0);
         DATAIR : IN  std_logic_vector(15 downto 0);
         OUTPC : OUT  std_logic_vector(15 downto 0);
         READIR : OUT  std_logic;
         OUTIR : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal T0 : std_logic := '0';
   signal clk : std_logic := '0';
   signal NEWPC : std_logic_vector(15 downto 0) := (others => '0');
   signal DATAIR : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal OUTPC : std_logic_vector(15 downto 0);
   signal READIR : std_logic;
   signal OUTIR : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IFctrl PORT MAP (
          T0 => T0,
          clk => clk,
          NEWPC => NEWPC,
          DATAIR => DATAIR,
          OUTPC => OUTPC,
          READIR => READIR,
          OUTIR => OUTIR
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
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		T0<='1';
		NEWPC<=X"0002";
		DATAIR<="0011001000000001";
		wait for clk_period*10;
		
		
		T0<='0';

      wait;
   end process;

END;