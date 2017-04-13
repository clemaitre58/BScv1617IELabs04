library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
-- use IEEE.STD_LOGIC_unsigned.ALL; 


entity  bcd_dec is
    Port ( 
	Value  : in  STD_LOGIC_Vector (3 downto 0);
        ANi : in  STD_LOGIC_Vector (7 downto 0);
        ANo : out  STD_LOGIC_Vector (7 downto 0);
    	C : out STD_LOGIC_Vector (7 downto 0)
   );
			  
end bcd_dec;

architecture Behavioral of bcd_dec is
-- list of comoponent use here

-- list of signals and constant here

begin
	process(Value, ANi)
	begin
		case Value is
			when x"0" => C <= "11000000";
			when x"1" => C <= "11111001";
			when others => C <= "00000000";
		end case;
	end process;


 ANo <= ANi;

end Behavioral;
