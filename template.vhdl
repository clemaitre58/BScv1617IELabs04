LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL; 
 
ENTITY test_entity_name IS 
END test_entity_name;
 
ARCHITECTURE behavior OF test_entity_name IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
	COMPONENT entity_name_of_tested_component
    PORT(
    	-- insert the map of the component here
        );
    END COMPONENT;
    

   --Inputs
   --Declare here all inputs of your tested comoponent as signals. Initialized them to zero
   signal xxx : std_logic_vector(3 downto 0) := (others => '0');
   signal clk : std_logic := '0'; -- comment if you don't use clk
   signal xxx : std_logic := '0';

 	--Outputs
   --Declare here all inputs of your tested comoponent as signals. Initialized them to zero
   signal outpout : std_logic_vector(6 downto 0);

   -- Clock period definitions
   -- Comment if don't use clk
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BCD PORT MAP (
          INPUT => INPUT,
          clk => clk,
          outpout => outpout,
          DOTINPUT => DOTINPUT,
          DOTOUTPUT => DOTOUTPUT
        );

   -- Clock process definitions
   -- Comment if you don't use clk
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      -- Comment if you don't use clk
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
-----------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL; -- to use arithmetic operator on STD_LOGIC ou STD_LOGIC VECTOR


entity  name_entity is
    Port ( myinput_bit  : in  STD_LOGIC;
           myinputbus : in  STD_LOGIC_Vector (3 downto 0);
           myouut : out  STD_LOGIC
   );
			  
end name_entity;

architecture Behavioral of name_entity is
-- list of comoponent use here

-- list of signals and constant here

begin
	process(mylist_of_sensitivity)
	begin
	end process;


-- port map instantiation here

end Behavioral;
