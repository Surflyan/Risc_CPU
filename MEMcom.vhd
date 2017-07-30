----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:47:05 07/18/2017 
-- Design Name: 
-- Module Name:    MEMcom - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MEMcom is
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
		
end MEMcom;

architecture Behavioral of MEMcom is

begin
 
	process(T2,OPCODE)
	begin
	if T2='1'  then
	   
		--STA  LDA
		case opcode is
		when "01100"=>     --STA
		    nMEMQ<='0';
			 nIO<='1';
			 WR<='1';
			 RD<='0'; 
		when "01110"=>     
		     nMEMQ<='0';
			  nIO<='1';
			  WR<='0';
			  RD<='1';
		when "10010"=>
		    nMEMQ<='1';
			 nIO<='0';
			 RD<='1';
			 WR<='0';
		when "10000"=>
		    nMEMQ<='1';
			 nIO<='0';
			 WR<='1';
			 RD<='0';
		when others=>
		    nMEMQ<='1';
			 nIO<='1';
			 RD<='0';
			 wR<='0';
			 
	   end case;
   else
	       nMEMQ<='1';
			 nIO<='1';
			 RD<='0';
			 wR<='0';
	end if;
	end process;
	
	RTEMP<=DATA when (T2='1' and (opcode="01110" or opcode="10010"));  
	                        -- LDA(?) --IN


end Behavioral;
