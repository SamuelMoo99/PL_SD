library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity P4_DECODER_NIVEL is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : out  STD_LOGIC_VECTOR (3 downto 0);
           C : out  STD_LOGIC_VECTOR (1 downto 0));
end P4_DECODER_NIVEL;

architecture P4_DECODER_NIVEL_ARCH of P4_DECODER_NIVEL is
signal A_INT: integer;
begin
A_INT<= to_integer(unsigned(A));
	process (A_INT)
	begin 
	case A_INT is
		when 0 to 75 => B <= "0001"; C <= "00";
		when 76 to 150 => B <= "0010"; C <= "01";
		when 151 to 200 => B <= "0100"; C <= "10";
		when 201 to 250 => B <= "1000"; C <= "11";
		when others => B <= "0000"; C <= "00";
	end case;
	end process;
end P4_DECODER_NIVEL_ARCH;

