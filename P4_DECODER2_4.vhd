library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity P4_DECODER2_4 is
    Port ( C : in  STD_LOGIC_VECTOR (1 downto 0);
           E : out  STD_LOGIC_VECTOR (3 downto 0));
end P4_DECODER2_4;

architecture P4_DECODER2_4_ARCH of P4_DECODER2_4 is

begin
process (C)
begin
if C = "00" then
	E <= "0001";
elsif C = "01" then
	E <= "0010";
elsif C = "10" then
	E <= "0100";
elsif C = "11" then
	E <= "1000";
else E <= "0000";
end if;
end process;

end P4_DECODER2_4_ARCH;

