
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY WB_test IS
END WB_test;
 
ARCHITECTURE behavior OF WB_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT WBcom
    PORT(
         RST : IN  std_logic;
         clk : IN  std_logic;
         Rtemp : IN  std_logic_vector(7 downto 0);
         PC : IN  std_logic_vector(15 downto 0);
         Addr : IN  std_logic_vector(15 downto 0);
         ALUOUT : IN  std_logic_vector(7 downto 0);
         T3 : IN  std_logic;
         OP : IN  std_logic_vector(15 downto 11);
         AD1 : IN  std_logic_vector(10 downto 8);
         Raddr : OUT  std_logic_vector(2 downto 0);
         Rdata : OUT  std_logic_vector(7 downto 0);
         Rupdate : OUT  std_logic;
         PCnew : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RST : std_logic := '0';
   signal clk : std_logic := '0';
   signal Rtemp : std_logic_vector(7 downto 0) := (others => '0');
   signal PC : std_logic_vector(15 downto 0) := (others => '0');
   signal Addr : std_logic_vector(15 downto 0) := (others => '0');
   signal ALUOUT : std_logic_vector(7 downto 0) := (others => '0');
   signal T3 : std_logic := '0';
   signal OP : std_logic_vector(15 downto 11) := (others => '0');
   signal AD1 : std_logic_vector(10 downto 8) := (others => '0');

 	--Outputs
   signal Raddr : std_logic_vector(2 downto 0);
   signal Rdata : std_logic_vector(7 downto 0);
   signal Rupdate : std_logic;
   signal PCnew : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: WBcom PORT MAP (
          RST => RST,
          clk => clk,
          Rtemp => Rtemp,
          PC => PC,
          Addr => Addr,
          ALUOUT => ALUOUT,
          T3 => T3,
          OP => OP,
          AD1 => AD1,
          Raddr => Raddr,
          Rdata => Rdata,
          Rupdate => Rupdate,
          PCnew => PCnew
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
     RST<='0';
	  PC<=X"0002";
	  ALUOUT<=X"03";
	  OP<="00110";
	  AD1<="010";
	  T3<='1';
	  RTEMP<=X"28"; 
	  ADDR<=X"0011";
	  
	  wait for 100 ns;
	  RST<='1';


      wait;
   end process;

END;
