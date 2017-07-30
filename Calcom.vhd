----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:17:01 07/18/2017 
-- Design Name: 
-- Module Name:    Calcom - Behavioral 
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
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Calcom is
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
	 
end Calcom;


architecture Behavioral of Calcom is
   
   signal A,B: std_logic_vector(7 downto 0):="00000000";
	type reg is array(7 downto 0) of std_logic_vector(7 downto 0);
	signal regs: reg:=(X"07",X"06",X"05",X"04",X"03",X"02",X"01",X"00");

begin

   R0<=regs(0);
	R1<=regs(1);
	R2<=regs(2);
	R3<=regs(3);
	R4<=regs(4);
	R5<=regs(5);
	R6<=regs(6);
	R7<=regs(7);

    process(T1,IR)
	 begin
	 if T1'event and T1='1' then
	     A<=regs(conv_integer(IR(10 downto 8)));
		  B<=regs(conv_integer(IR(2 downto 0)));
		  ADDR(7 downto 0)<=IR(7 downto 0);
		  ADDR(15 downto 8)<=regs(7);
	  end if;
	  end process;
	  
	  process(RUPDATE,RADDR,RDATA,clk)
	  begin
	     if RUPDATE='1' then            --and rising_edge(clk) 
		      regs(conv_integer(RADDR))<=RDATA;
		   end if;
		end process;
		
		process(CLK,T1,A,B,IR)
		begin
		     if T1='1' and falling_edge(clk) then
			    case IR(15 downto 11) is 
				 when "00100"=>ALUOUT<=A-B;    --sub
				 when "00110"=>ALUOUT<=A+B;    --ADD
				 when "01000"=>ALUOUT<=IR(7 downto 0);  --mvi
				 when "01010"=>ALUOUT<=B;       --mov
				 when "01100"=>ALUOUT<=A;       --STA
				 when "00010"=>ALUOUT<=A;       --JZ
				 when "10000"=>ALUOUT<=A;       --OUT
				 when others =>NULL;
				 end case;
				end if;
		end process;
		      	      
end Behavioral;
