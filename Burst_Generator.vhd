----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:54:03 11/18/2012 
-- Design Name: 
-- Module Name:    Burst_Generator - Behavioral 
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

entity Burst_Generator is
    GENERIC(N: Integer := 100); -- 5*2 fronti
    Port ( clk_in : in  STD_LOGIC;
           clk_out : out  STD_LOGIC;
           clk_out2 : out  STD_LOGIC_vector (N-1 downto 0));
end Burst_Generator;

architecture Behavioral of Burst_Generator is
COMPONENT Managed_Shifter is
    Port ( signal_in : in  STD_LOGIC;
           signal_out : out  STD_LOGIC);
END COMPONENT Managed_Shifter;

signal pari : STD_LOGIC_VECTOR (N downto 0);
signal dispari,d2,clko : STD_LOGIC;
begin

pari(N) <= clk_in; 
d2 <= '1' after 0 ns ,'0' after 2.6 ns;
PC1:for i in N-1 downto 0 generate
begin
P1: Managed_Shifter port map(pari(i+1),pari(i));
end generate;

dispari <= pari(N) xor pari(0);
clko <= dispari or d2 ;

clk_out2 <= pari(N-1 downto 0);
clk_out <= clko;

end Behavioral;

