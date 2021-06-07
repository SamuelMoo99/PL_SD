library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity P4_DECODER_BCD is
    Port ( B : in  STD_LOGIC_VECTOR (3 downto 0);
           D : out  STD_LOGIC_VECTOR (6 downto 0));
end P4_DECODER_BCD;

architecture P4_DECODER_BCD_ARCH of P4_DECODER_BCD is

begin
with B select 
	D <= "0111110" when "1000",
		"0110111" when "0100",
		"1110110" when "0010",
		"0001110" when "0001",
		"0000000" when others;

end P4_DECODER_BCD_ARCH;

