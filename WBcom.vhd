----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:38:11 07/19/2017 
-- Design Name: 
-- Module Name:    WBcom - Behavioral 
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
--library UNISIM;
--use UNISIM.VComponents.all;

entity WBcom is
 Port (     RST : in  STD_LOGIC;
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
            PCnew : out  STD_LOGIC_VECTOR (15 downto 0));
end WBcom;

architecture Behavioral of WBcom is

begin
	-- 提供回写内容
--	Rdata <= Rtemp when (OP = "10000" or OP = "01110") else -- IN / LDA
--				ALUOUT;
--	Raddr<=AD1;
	
	--PCnew 更新
	process(RST,OP,ALUOUT,T3)
	  begin
        if RST = '1' then
            PCnew <= X"0000";
        elsif T3 = '1' and T3'event then
            if OP = "00000" then
                PCnew <= Addr;
            elsif (OP = "00010" and ALUOUT = X"00") then
                PCnew <= Addr ;
            else
                PCnew <= PC+1;
            end if;
        end if;
    end process;
	 
     --回写控制信号
	  process(T3,clk)
	  begin
	  if T3='1' and falling_edge(clk) then
	     if OP = "10010" or OP = "01110" or OP = "00110" or OP = "00100" or OP = "01010" or OP = "01000" then
              Rupdate<='1';
				  if (OP = "10010" or OP = "01110") then
			 	     Rdata <= Rtemp;
				   else Rdata<=ALUOUT;
					end if;
	            Raddr<=AD1;
			else  Rupdate<='0';
		  end if;
	  end if;
	  end process;
	  
end Behavioral;
