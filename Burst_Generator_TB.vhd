--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:27:01 11/19/2012
-- Design Name:   
-- Module Name:   C:/Users/Salvatore/Documents/ISE/Extender/Burst_Generator_TB.vhd
-- Project Name:  Extender
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Burst_Generator
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
 
ENTITY Burst_Generator_TB IS
END Burst_Generator_TB;
 
ARCHITECTURE behavior OF Burst_Generator_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Burst_Generator
    PORT(
         clk_in : IN  std_logic;
         clk_out : OUT  std_logic;
         clk_out2 : OUT  std_logic_vector
        );
    END COMPONENT;
    

   --Inputs
   signal clk_in : std_logic := '1';

 	--Outputs
   signal clk_out : std_logic;
   signal clk_out2 : std_logic_vector (99 downto 0);

   -- Clock period definitions
   constant clk_in_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Burst_Generator PORT MAP (
          clk_in => clk_in,
          clk_out => clk_out,
          clk_out2 => clk_out2
        );

   -- Clock process definitions
   clk_in_process :process
   begin
		clk_in <= '1';
		wait for clk_in_period/2;
		clk_in <= '0';
		wait for clk_in_period/2;
   end process;
 

END;
