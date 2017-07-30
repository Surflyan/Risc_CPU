
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY MEM_test IS
END MEM_test;
 
ARCHITECTURE behavior OF MEM_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MEMcom
    PORT(
         clk : IN  std_logic;
         T2 : IN  std_logic;
         OPCODE : IN  std_logic_vector(4 downto 0);
         DATA : IN  std_logic_vector(7 downto 0);
         RTEMP : OUT  std_logic_vector(7 downto 0);
         nMEMQ : OUT  std_logic;
         RD : OUT  std_logic;
         WR : OUT  std_logic;
         nIO : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal T2 : std_logic := '0';
   signal OPCODE : std_logic_vector(4 downto 0) := (others => '0');
   signal DATA : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal RTEMP : std_logic_vector(7 downto 0);
   signal nMEMQ : std_logic;
   signal RD : std_logic;
   signal WR : std_logic;
   signal nIO : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MEMcom PORT MAP (
          clk => clk,
          T2 => T2,
          OPCODE => OPCODE,
          DATA => DATA,
          RTEMP => RTEMP,
          nMEMQ => nMEMQ,
          RD => RD,
          WR => WR,
          nIO => nIO
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
		
		T2<='1';
		opcode<="01100";
		 wait for clk_period*2;
		 
		 opcode<="01110";
       wait for clk_period*2;
		

      wait;
   end process;

END;
