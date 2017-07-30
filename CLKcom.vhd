----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:58:05 07/18/2017 
-- Design Name: 
-- Module Name:    CLK - Behavioral 
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

entity CLKcom is
Port (clk : in std_logic;
      rst: in std_logic;
		T: out std_logic_vector(3 downto 0));
		
end CLKcom;

architecture Behavioral of CLKcom is
signal temp: std_logic_vector(3 downto 0);
begin
   
	temp<="1000" when rst='1' else
	    temp(2 downto 0) & temp(3) when rising_edge(clk);
	T<=temp;	 
end Behavioral;
