library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TOP_DECODER is
    Port ( SEL : in  STD_LOGIC_VECTOR (7 downto 0); -- Como poner Sel = 75 ?
           DISP : out  STD_LOGIC_VECTOR (6 downto 0);
           AN : out  STD_LOGIC_VECTOR (3 downto 0));
			  
end TOP_DECODER;

architecture TOP_DECODER_ARCH of TOP_DECODER is
-- -----------------------------------------------------
component P4_DECODER_NIVEL
  Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : out  STD_LOGIC_VECTOR (3 downto 0);
           C : out  STD_LOGIC_VECTOR (1 downto 0));
end component;
----------------------------------------------------------
component P4_DECODER_BCD

Port ( B : in  STD_LOGIC_VECTOR (3 downto 0);
           D : out  STD_LOGIC_VECTOR (6 downto 0));

end component;
----------------------------------------------------------
component P4_DECODER2_4
Port ( C : in  STD_LOGIC_VECTOR (1 downto 0);
           E : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
------------------------------------------------------
signal CABLE_BCD: std_logic_vector( 3 downto 0);
signal CABLE2_4: std_logic_vector( 1 downto 0);

----------------------------------------------------
begin 

U0: P4_DECODER_NIVEL port map(
A => SEL,
B => CABLE_BCD,
C => CABLE2_4);

U1: P4_DECODER_BCD port map (
B => CABLE_BCD,
D => DISP
);

U2: P4_DECODER2_4 port map (
C => CABLE2_4,
E => AN
);


end TOP_DECODER_ARCH;