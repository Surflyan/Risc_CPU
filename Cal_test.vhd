
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Cal_test IS
END Cal_test;
 
ARCHITECTURE behavior OF Cal_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Calcom
    PORT(
         clk : IN  std_logic;
         T1 : IN  std_logic;
         RUPDATE : IN  std_logic;
         RADDR : IN  std_logic_vector(2 downto 0);
         RDATA : IN  std_logic_vector(7 downto 0);
         IR : IN  std_logic_vector(15 downto 0);
         R0 : OUT  std_logic_vector(7 downto 0);
         R1 : OUT  std_logic_vector(7 downto 0);
         R2 : OUT  std_logic_vector(7 downto 0);
         R3 : OUT  std_logic_vector(7 downto 0);
         R4 : OUT  std_logic_vector(7 downto 0);
         R5 : OUT  std_logic_vector(7 downto 0);
         R6 : OUT  std_logic_vector(7 downto 0);
         R7 : OUT  std_logic_vector(7 downto 0);
         ADDR : OUT  std_logic_vector(15 downto 0);
         ALUOUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal T1 : std_logic := '0';
   signal RUPDATE : std_logic := '0';
   signal RADDR : std_logic_vector(2 downto 0) := (others => '0');
   signal RDATA : std_logic_vector(7 downto 0) := (others => '0');
   signal IR : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal R0 : std_logic_vector(7 downto 0);
   signal R1 : std_logic_vector(7 downto 0);
   signal R2 : std_logic_vector(7 downto 0);
   signal R3 : std_logic_vector(7 downto 0);
   signal R4 : std_logic_vector(7 downto 0);
   signal R5 : std_logic_vector(7 downto 0);
   signal R6 : std_logic_vector(7 downto 0);
   signal R7 : std_logic_vector(7 downto 0);
   signal ADDR : std_logic_vector(15 downto 0);
   signal ALUOUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Calcom PORT MAP (
          clk => clk,
          T1 => T1,
          RUPDATE => RUPDATE,
          RADDR => RADDR,
          RDATA => RDATA,
          IR => IR,
          R0 => R0,
          R1 => R1,
          R2 => R2,
          R3 => R3,
          R4 => R4,
          R5 => R5,
          R6 => R6,
          R7 => R7,
          ADDR => ADDR,
          ALUOUT => ALUOUT
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
		
     T1<='1';
	  IR<="0011001000000001";   --ADD R2 R1
	  wait for clk_period*2;
	  
	  T1<='1';
	  IR<="0010010000000001";   --SUB R4 R1
	  wait for clk_period*2;
	  
	   IR<="0000000011111111";   --JMP 11111111
		wait for clk_period*2;

	  
	  T1<='0';
	  
	  Rupdate<='1';
	  Raddr<="110";
	  Rdata<=X"28";

      wait;
   end process;

END;
