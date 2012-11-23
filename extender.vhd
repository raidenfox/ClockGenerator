----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:47:38 11/18/2012 
-- Design Name: 
-- Module Name:    extender - Behavioral 
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

entity extender is
    Port ( clk_in : in  STD_LOGIC;
           clk_out : out  STD_LOGIC);
end extender;

architecture Behavioral of extender is
signal clk : STD_LOGIC := '0';
signal counter,counter2 : time := 0 ns;
signal countertot,countertot2 : time := 0 ns;
begin

clk_out <= clk;


clk <= clk_in after 2.50 ns;

end Behavioral;

