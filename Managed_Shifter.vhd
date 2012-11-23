----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:40:53 11/18/2012 
-- Design Name: 
-- Module Name:    Managed_Shifter - Behavioral 
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

entity Managed_Shifter is
    Port ( signal_in : in  STD_LOGIC;
           signal_out : out  STD_LOGIC);
end Managed_Shifter;

architecture Behavioral of Managed_Shifter is
constant delay : time := 0.028 ns;
signal clock_app : STD_LOGIC;

begin
clock_app <= signal_in after delay;

SF:process(clock_app)
begin
if clock_app = '1' then
signal_out <= '0';
else
signal_out <= '1';
end if;

end process;

end Behavioral;

