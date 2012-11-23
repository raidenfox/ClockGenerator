--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:56:31 11/19/2012
-- Design Name:   
-- Module Name:   C:/Users/Salvatore/Documents/ISE/Extender/clockgenN_TB.vhd
-- Project Name:  Extender
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: clockgenN
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY clockgenN_TB IS
END clockgenN_TB;
 
ARCHITECTURE behavior OF clockgenN_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT clockgenN
    PORT(
         clk_i : IN  std_logic;
         clk_freq : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk_i : std_logic := '0';

 	--Outputs
   signal clk_freq : std_logic;

   -- Clock period definitions
   constant clk_i_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: clockgenN PORT MAP (
          clk_i => clk_i,
          clk_freq => clk_freq
        );

   -- Clock process definitions
   clk_i_process :process
   begin
		clk_i <= '0';
		wait for clk_i_period/2;
		clk_i <= '1';
		wait for clk_i_period/2;
   end process;
 

 

END;
