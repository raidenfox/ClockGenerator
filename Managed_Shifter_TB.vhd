--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:46:22 11/18/2012
-- Design Name:   
-- Module Name:   C:/Users/Salvatore/Documents/ISE/Extender/Managed_Shifter_TB.vhd
-- Project Name:  Extender
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Managed_Shifter
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
 
ENTITY Managed_Shifter_TB IS
END Managed_Shifter_TB;
 
ARCHITECTURE behavior OF Managed_Shifter_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Managed_Shifter
    PORT(
         signal_in : IN  std_logic;
         signal_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal signal_in : std_logic := '0';

 	--Outputs
   signal signal_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Managed_Shifter PORT MAP (
          signal_in => signal_in,
          signal_out => signal_out
        );

   -- Clock process definitions
   clock_process :process
   begin
		signal_in <= '0';
		wait for clock_period/2;
		signal_in <= '1';
		wait for clock_period/2;
   end process;


END;
