----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:47:59 11/19/2012 
-- Design Name: 
-- Module Name:    counterN - Behavioral 
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

entity counterN is
    GENERIC(div : Integer := 100);
    Port ( clk_100 : in  STD_LOGIC;
           clk_N : out  STD_LOGIC);
end counterN;

architecture Behavioral of counterN is
signal counter : integer range 0 to 49 := 0;
signal clock_o : std_logic := '0';
begin

clk_N <= clock_o;
clock_divider: process(clk_100)
	begin
		counter <= counter + 1;
		if counter = 0 then
		clock_o <= not clock_o;
		elsif counter = 4 then
		clock_o <= not clock_o;
		counter <= 0;
		end if;
end process;

end Behavioral;

