----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:02:19 07/18/2017 
-- Design Name: 
-- Module Name:    IFctrl - Behavioral 
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

entity IFctrl is
   port (T0 : in std_logic;
	      clk: in std_logic;
			NEWPC: in std_logic_vector(15 downto 0);
			DATAIR: in std_logic_vector(15 downto 0);
			OUTPC: out std_logic_vector(15 downto 0);
			READIR: out std_logic;
			OUTIR: out std_logic_vector(15 downto 0)
			);
			
end IFctrl;

architecture Behavioral of IFctrl is 
    signal PC:std_logic_vector(15 downto 0):="0000000000000000";

begin

    
	 process(T0)             -- 在T0上升沿更新PC值
	 begin
	     if T0='1' and T0'event then
		      PC<=NEWPC;
		  end if;
	 end process;
	 
	 READIR<=T0;
	 OUTPC<=PC;              --当前指令地址，送往访存，回写
	 OUTIR<=DATAIR when T0='1';


end Behavioral;
