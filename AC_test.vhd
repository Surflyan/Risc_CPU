
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY AC_test IS
END AC_test;
 
ARCHITECTURE behavior OF AC_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ACcom
    PORT(
         clk : IN  std_logic;
         nIO : IN  std_logic;
         nMEM : IN  std_logic;
         RD : IN  std_logic;
         WR : IN  std_logic;
         RDIR : IN  std_logic;
         PC : IN  std_logic_vector(15 downto 0);
         Addr : IN  std_logic_vector(15 downto 0);
         ALUOUT : IN  std_logic_vector(7 downto 0);
         nBLE : OUT  std_logic;
         nBHE : OUT  std_logic;
         ABUS : OUT  std_logic_vector(15 downto 0);
         nRD : OUT  std_logic;
         nWR : OUT  std_logic;
         nMREQ : OUT  std_logic;
         DBUS : INOUT  std_logic_vector(15 downto 0);
         IOAD : OUT  std_logic_vector(1 downto 0);
         IODB : INOUT  std_logic_vector(7 downto 0);
         nPRD : OUT  std_logic;
         nPWR : OUT  std_logic;
         nPREQ : OUT  std_logic;
         IR : OUT  std_logic_vector(15 downto 0);
         Rtemp : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal nIO : std_logic := '0';
   signal nMEM : std_logic := '0';
   signal RD : std_logic := '0';
   signal WR : std_logic := '0';
   signal RDIR : std_logic := '0';
   signal PC : std_logic_vector(15 downto 0) := (others => '0');
   signal Addr : std_logic_vector(15 downto 0) := (others => '0');
   signal ALUOUT : std_logic_vector(7 downto 0) := (others => '0');

	--BiDirs
   signal DBUS : std_logic_vector(15 downto 0);
   signal IODB : std_logic_vector(7 downto 0);

 	--Outputs
   signal nBLE : std_logic;
   signal nBHE : std_logic;
   signal ABUS : std_logic_vector(15 downto 0);
   signal nRD : std_logic;
   signal nWR : std_logic;
   signal nMREQ : std_logic;
   signal IOAD : std_logic_vector(1 downto 0);
   signal nPRD : std_logic;
   signal nPWR : std_logic;
   signal nPREQ : std_logic;
   signal IR : std_logic_vector(15 downto 0);
   signal Rtemp : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ACcom PORT MAP (
          clk => clk,
          nIO => nIO,
          nMEM => nMEM,
          RD => RD,
          WR => WR,
          RDIR => RDIR,
          PC => PC,
          Addr => Addr,
          ALUOUT => ALUOUT,
          nBLE => nBLE,
          nBHE => nBHE,
          ABUS => ABUS,
          nRD => nRD,
          nWR => nWR,
          nMREQ => nMREQ,
          DBUS => DBUS,
          IOAD => IOAD,
          IODB => IODB,
          nPRD => nPRD,
          nPWR => nPWR,
          nPREQ => nPREQ,
          IR => IR,
          Rtemp => Rtemp
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
      nMEM<='1';
		nIO<='1';
		RDIR<='1';
		ADDR<=X"0001";
		PC<=X"0002";
		DBUS<=X"0128";
      wait for 100 ns;
		
		nMEM<='0';
		nio<='1';
		RDIR<='0';
		ADDR<=X"0022";
		RD<='1';
		WR<='0';
		PC<=X"0003";
		DBUS<=X"1997";


      wait;
   end process;

END;
