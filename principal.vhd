 
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

entity principal is
    Port ( a0 : in  STD_LOGIC;
           a1 : in  STD_LOGIC;
           sel : in  STD_LOGIC_VECTOR (0 to 1);
           s : out  STD_LOGIC);
end principal;

architecture Behavioral of principal is

begin
	operacion: process (sel, a0, a1)
	begin
		case sel is
			when "00" =>
				s <= a0 AND a1;
			when "01" =>
				s <= a0 OR a1;
			when "10" =>
				s <= a0 XOR a1;
			when "11" =>
				s <= NOT a0;
			when others =>
				s <= '0';
			end case;
		end process;
			
			
	
end Behavioral;

