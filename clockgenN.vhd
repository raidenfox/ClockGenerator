----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:52:36 11/19/2012 
-- Design Name: 
-- Module Name:    clockgenN - Behavioral 
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

entity clockgenN is
    Port ( clk_i : in  STD_LOGIC;
           clk_freq : out  STD_LOGIC);
end clockgenN;

architecture Behavioral of clockgenN is
COMPONENT Burst_Generator
    PORT(
         clk_in : IN  std_logic;
         clk_out : OUT  std_logic
        );
    END COMPONENT;
	 
COMPONENT counterN is
--    GENERIC(div : Integer := 5);
    Port ( clk_100 : in  STD_LOGIC;
           clk_N : out  STD_LOGIC);
end component counterN;
signal support,cout : STD_LOGIC;
begin

C1: Burst_Generator port map(clk_i,support);
C2: counterN port map(support,cout);

clk_freq <= cout;
end Behavioral;

