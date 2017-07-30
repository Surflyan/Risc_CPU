----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:45:15 07/20/2017 
-- Design Name: 
-- Module Name:    CPU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity CPU is
port ( rst : in std_logic;
       clk : in std_logic;
		 abus: out std_logic_vector(15 downto 0);
		 dbus: inout std_logic_vector( 15 downto 0);
		 nmreq: out std_logic;
		 nrd: out std_logic;
		 nwr: out std_logic;
		 nbhe: out std_logic;
		 nble: out std_logic;
		 ioad: out std_logic_vector(1 downto 0);
		 iodb: inout std_logic_vector(7 downto 0);
		 npreq: out std_logic;
		 nprd: out std_logic;
		 npwr: out std_logic;
		 
		 T: out std_logic_vector(3 downto 0);
		 IR: out std_logic_vector(15 downto 0);
		 PC: out std_logic_vector(15 downto 0);
		 
		 R0: out std_logic_vector(7 downto 0);
		 R1: out std_logic_vector(7 downto 0);
		 R2: out std_logic_vector(7 downto 0);
		 R3: out std_logic_vector(7 downto 0);
		 R4: out std_logic_vector(7 downto 0);
		 R5: out std_logic_vector(7 downto 0);
		 R6: out std_logic_vector(7 downto 0);
		 R7: out std_logic_vector(7 downto 0)
		 
--		  output 
--		 ABUSout: out std_logic_vector(15 downto 0);
--		 DBUSout: out std_logic_vector(15 downto 0);
--		 nMEMout: out std_logic;
--		 nBLEout: out std_logic;
--		 nBHEout: out std_logic;
--		 nRDout : out std_logic;
--		 
--		 nPREQout: out std_logic;
--		 nPWRout: out std_logic;
--		 nRDout :out std_logic;
		 
		 );
end CPU;


architecture Behavioral of CPU is
   Component BUFGP
	port (I: in std_logic;
	       O: out std_logic);
	end component;
	
   COMPONENT CLKcom
   port(
      clk : in std_logic;
	   RST : in std_logic;
	   T: out std_logic_vector(3 downto 0)
	   );
	end component;
	
	
	component IFctrl
	port (
	      T0 : in std_logic;
	      clk: in std_logic;
			NEWPC: in std_logic_vector(15 downto 0);
			DATAIR: in std_logic_vector(15 downto 0);
			OUTPC: out std_logic_vector(15 downto 0);
			READIR: out std_logic;
			OUTIR: out std_logic_vector(15 downto 0)
			);
	end component;
	
	component Calcom
	Port(
       clk : in std_logic;
	    T1 : in std_logic;
	    RUPDATE : in std_logic;
	    RADDR: in std_logic_vector(2 downto 0);
	    RDATA: in std_logic_vector(7 downto 0);
	    IR: in std_logic_vector(15 downto 0);
	    R0: out std_logic_vector(7 downto 0);
	    R1: out std_logic_vector(7 downto 0);
	    R2: out std_logic_vector(7 downto 0);
	    R3: out std_logic_vector(7 downto 0);
	    R4: out std_logic_vector(7 downto 0);
	    R5: out std_logic_vector(7 downto 0);
	    R6: out std_logic_vector(7 downto 0);
	    R7: out std_logic_vector(7 downto 0);
	 
	    ADDR: out std_logic_vector(15 downto 0);
	    ALUOUT: out std_logic_vector(7 downto 0)
	 );
	end component;
	
	component MEMcom
	port (
      clk: in std_logic;
		T2: in std_logic;
		OPCODE: in std_logic_vector(4 downto 0);
		DATA: in std_logic_vector(7 downto 0);
		RTEMP: out std_logic_vector(7 downto 0);
		nMEMQ: out std_logic;
		RD: out std_logic;
		WR: out std_logic;
		nIO: out std_logic);
	end component;
	
	component WBcom
	 Port (     
	         RST : in  STD_LOGIC;
            clk: in std_logic;
            Rtemp : in  STD_LOGIC_VECTOR (7 downto 0);
            PC : in  STD_LOGIC_VECTOR (15 downto 0);
            Addr : in  STD_LOGIC_VECTOR (15 downto 0);
            ALUOUT : in  STD_LOGIC_VECTOR (7 downto 0);
            T3 : in  STD_LOGIC;
            OP : in STD_LOGIC_VECTOR (15 downto 11); -- IR(15 downto 11)
            AD1 : in STD_LOGIC_VECTOR (10 downto 8); -- IR(10 downto 8)
            Raddr : out  STD_LOGIC_VECTOR (2 downto 0);
            Rdata : out  STD_LOGIC_VECTOR (7 downto 0);
            Rupdate : out  STD_LOGIC;
            PCnew : out  STD_LOGIC_VECTOR (15 downto 0)
		  );
	end component;
	
	component ACcom
	Port (    
	        clk: in std_logic;
           nIO : in  STD_LOGIC;
           nMEM : in  STD_LOGIC;
           RD : in  STD_LOGIC;
           WR : in  STD_LOGIC;
           RDIR : in  STD_LOGIC;
           PC : in  STD_LOGIC_VECTOR (15 downto 0);
           Addr : in  STD_LOGIC_VECTOR (15 downto 0);
           ALUOUT : in  STD_LOGIC_VECTOR (7 downto 0);
           nBLE : out  STD_LOGIC;
           nBHE : out  STD_LOGIC;
           ABUS : out  STD_LOGIC_VECTOR (15 downto 0);
           nRD : out  STD_LOGIC;
           nWR : out  STD_LOGIC;
           nMREQ : out  STD_LOGIC;
           DBUS : inout  STD_LOGIC_VECTOR (15 downto 0);
           IOAD : out  STD_LOGIC_VECTOR (1 downto 0);
           IODB : inout  STD_LOGIC_VECTOR (7 downto 0);
           nPRD : out  STD_LOGIC;
           nPWR : out  STD_LOGIC;
           nPREQ : out  STD_LOGIC;
           IR : out  STD_LOGIC_VECTOR (15 downto 0);
           Rtemp : out  STD_LOGIC_VECTOR (7 downto 0)
	 );
	 end component;
	
	signal Tout: std_logic_vector(3 downto 0):="1000";
	signal PCnew: std_logic_vector(15 downto 0):=(others=>'0');
	signal IRdata: std_logic_vector(15 downto 0):=(others=>'0');
	signal IRout: std_logic_vector(15 downto 0):=(others=>'0');
	signal RDIR: std_logic;
	signal PCout: std_logic_vector(15 downto 0):=(others=>'0');
   signal Rupdate: std_logic:='0';
	signal Raddr: std_logic_vector(2 downto 0):="000";
	signal Rdata: std_logic_vector(7 downto 0):=(others=>'0');
	signal Addr: std_logic_vector(15 downto 0):=(others=>'0');
	signal ALUOUT: std_logic_vector(7 downto 0):=(others=>'0');
	signal Rtempin: std_logic_vector(7 downto 0):=(others=>'0');
	signal Rtempout: std_logic_vector(7 downto 0):=(others=>'0');
	signal nMEM: std_logic:='1';
	signal nIO : std_logic := '1';
   signal RD : std_logic := '0';
   signal WR : std_logic := '0';  
	signal clkgp: std_logic;
	
	begin
    u1: 	BUFGP port map(clk,clkgp);
	 
	 componentCLK: CLKcom Port map(clkgp,rst,Tout);
	 componentIF: IFctrl Port map(Tout(0),clkgp,PCnew,IRdata,PCout,RDIR,IRout);
	 componentCal: Calcom port map(clkgp,Tout(1),Rupdate,Raddr,Rdata,IRout,
	                               R0,R1,R2,R3,R4,R5,R6,R7,Addr,ALUOUT );
	 componentMEM: MEMcom port map(clkgp,Tout(2),IRout(15 downto 11),Rtempin,Rtempout,nMEM,RD,WR,nIO);
	 componentWB: WBcom port map(rst,clkgp,Rtempout,PCout,Addr,ALUOUT,Tout(3),IRout(15 downto 11),IRout(10 downto 8),Raddr,Rdata,Rupdate,PCnew);
	 componentAC: ACcom port map(clkgp,nIO,nMEM,RD,WR,RDIR,PCout,Addr,ALUOUT,nBLE,nBHE,ABUS,
	                               nRD,nWR,nMREQ,DBUS,IOAD,IODB,nPRD,nPWR,nPREQ,IRdata,Rtempin);
	                               
	 
	 T<=Tout; 
    IR<=IRout;
    PC<=PCout;	
	 
	 
--	 ABUSout<=abus;
--	 DBUSout<=dbus;
--	 nMEMout: out std_logic;
--	 nBLEout: out std_logic;
--	 nBHEout: out std_logic;
--	 nRDout : out std_logic;
--		 
--	 nPREQout: out std_logic;
--	 nPWRout: out std_logic;
--	 nRDout :out std_logic;

end Behavioral;
