
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY CPU_test IS
END CPU_test;
 
ARCHITECTURE behavior OF CPU_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CPU
    PORT(
         rst : IN  std_logic;
         clk : IN  std_logic;
         abus : OUT  std_logic_vector(15 downto 0);
         dbus : INOUT  std_logic_vector(15 downto 0);
         nmreq : OUT  std_logic;
         nrd : OUT  std_logic;
         nwr : OUT  std_logic;
         nbhe : OUT  std_logic;
         nble : OUT  std_logic;
         ioad : OUT  std_logic_vector(1 downto 0);
         iodb : INOUT  std_logic_vector(7 downto 0);
         npreq : OUT  std_logic;
         nprd : OUT  std_logic;
         npwr : OUT  std_logic;
         T : OUT  std_logic_vector(3 downto 0);
         IR : OUT  std_logic_vector(15 downto 0);
         PC : OUT  std_logic_vector(15 downto 0);
         R0 : OUT  std_logic_vector(7 downto 0);
         R1 : OUT  std_logic_vector(7 downto 0);
         R2 : OUT  std_logic_vector(7 downto 0);
         R3 : OUT  std_logic_vector(7 downto 0);
         R4 : OUT  std_logic_vector(7 downto 0);
         R5 : OUT  std_logic_vector(7 downto 0);
         R6 : OUT  std_logic_vector(7 downto 0);
         R7 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

	--BiDirs
   signal dbus : std_logic_vector(15 downto 0);
   signal iodb : std_logic_vector(7 downto 0);

 	--Outputs
   signal abus : std_logic_vector(15 downto 0);
   signal nmreq : std_logic;
   signal nrd : std_logic;
   signal nwr : std_logic;
   signal nbhe : std_logic;
   signal nble : std_logic;
   signal ioad : std_logic_vector(1 downto 0);
   signal npreq : std_logic;
   signal nprd : std_logic;
   signal npwr : std_logic;
   signal T : std_logic_vector(3 downto 0);
   signal IR : std_logic_vector(15 downto 0);
   signal PC : std_logic_vector(15 downto 0);
   signal R0 : std_logic_vector(7 downto 0);
   signal R1 : std_logic_vector(7 downto 0);
   signal R2 : std_logic_vector(7 downto 0);
   signal R3 : std_logic_vector(7 downto 0);
   signal R4 : std_logic_vector(7 downto 0);
   signal R5 : std_logic_vector(7 downto 0);
   signal R6 : std_logic_vector(7 downto 0);
   signal R7 : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CPU PORT MAP (
          rst => rst,
          clk => clk,
          abus => abus,
          dbus => dbus,
          nmreq => nmreq,
          nrd => nrd,
          nwr => nwr,
          nbhe => nbhe,
          nble => nble,
          ioad => ioad,
          iodb => iodb,
          npreq => npreq,
          nprd => nprd,
          npwr => npwr,
          T => T,
          IR => IR,
          PC => PC,
          R0 => R0,
          R1 => R1,
          R2 => R2,
          R3 => R3,
          R4 => R4,
          R5 => R5,
          R6 => R6,
          R7 => R7
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
		RST<='1';
      wait for 100 ns;	
      
		RST<='0';
      DBUS<="0011001000000011";   --ADD R2 R3     (R2=2,R3=3)
		wait for clk_period*2;
		DBUS<=(others=>'Z');
		wait for clk_period*2;
		
		
		 
		RST<='0';
      DBUS<="0010010000000001";   --SUB R4 R1      (R4=4,R1=1)
		wait for clk_period*2;
		DBUS<=(others=>'Z');
		wait for clk_period*2;
		

		 
		RST<='0';
      DBUS<="0000000011111111";   --JMP 11111111   
		wait for clk_period*2;
		DBUS<=(others=>'Z');
		wait for clk_period*2;
		
		

		 
		RST<='0';
      DBUS<="0001000000100010";   --JZ R0 22    (R0=0)
		wait for clk_period*2;
		DBUS<=(others=>'Z');
		wait for clk_period*2;
		
		
		RST<='0';
      DBUS<="0001000100100010";   --JZ R1 22    (R1=1)
		wait for clk_period*2;
		DBUS<=(others=>'Z');
		wait for clk_period*2;
		
		

		 
		RST<='0';
      DBUS<="0100000010010111";   --MVI R0 97   (R0=97)
		wait for clk_period*2;
		DBUS<=(others=>'Z');
		wait for clk_period*2;
		
		

		 
		RST<='0';
      DBUS<="0101001000000000";   --MOV R2 R0   (r2=97)
		wait for clk_period*2;
		DBUS<=(others=>'Z');
		wait for clk_period*2;
		
		

		 
		RST<='0';
      DBUS<="0110000000100010";   --STA R0 22  (R0=97)
		wait for clk_period*2;
		DBUS<=(others=>'Z');
		wait for clk_period*2;
		


		RST<='0';
      DBUS<="0111010100100010";   --LDA R5 22  (R5=22)
		wait for clk_period*2;
		DBUS<=X"2222";
	   wait for clk_period*2;
		
		

		RST<='0';
      DBUS<="1001000100000001";   --IN R1 01 (R1=33)
		wait for clk_period*2;
		DBUS<=(others=>'Z');
		wait for clk_period;
		IODB<=X"33";
		wait for clk_period;
		IODB<=(others=>'Z');
		
		


   	RST<='0';
      DBUS<="1000001000000010";   --OUT R2 02   (R2=97)
		wait for clk_period*2;
		DBUS<=(others=>'Z');
		wait for clk_period*2;
      
      wait;
   end process;

END;