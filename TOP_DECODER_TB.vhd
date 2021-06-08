
LIBRARY ieee;
USE ieee.std_logic_1164.ALL; 
ENTITY TOP_DECODER_TB IS
END TOP_DECODER_TB;
 
ARCHITECTURE behavior OF TOP_DECODER_TB IS 
 
 
    COMPONENT TOP_DECODER
    PORT(
         SEL : IN  std_logic_vector(7 downto 0);
         DISP : OUT  std_logic_vector(6 downto 0);
         AN : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal SEL : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal DISP : std_logic_vector(6 downto 0);
   signal AN : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TOP_DECODER PORT MAP (
          SEL => SEL,
          DISP => DISP,
          AN => AN
        );
		  
SEL <= "00000000", "00000101" after 10 ns, "00001010" after 20 ns, "00001111" after 30 ns, "00010100" after 40 ns, "00011001" after 50 ns, --0 a 25
		"00011110" after 60 ns, "00100011" after 70 ns, "00101000" after 80 ns, "00101101" after 90 ns, "00110010" after 100 ns,				-- 30-50
		"00110111" after 110 ns, "00111100" after 120 ns, "01000001" after 130 ns, "01000110" after 140 ns, "01001011" after 150 ns,-- 55-75
		"01010000" after 160 ns, "01010101" after 170 ns, "01011010" after 180 ns, "01011111" after 190 ns, "01100100" after 200 ns, "01101001" after 210 ns, -- 80 105
		"01101110" after 220 ns, "01110011" after 230 ns, "01111000" after 240 ns, "01111101" after 250 ns, "10000010" after 260 ns, "10000111" after 270 ns, --85-135
		"10001100" after 280 ns, "10010001" after 290 ns, "10010110" after 300 ns, "10011011" after 310 ns, "10100000" after 320 ns, "10100101" after 330 ns, -- 140 - 165
		"10101010" after 340 ns, "10101111" after 350 ns, "10110100" after 360 ns, "10111001" after 370 ns, "10111110" after 380 ns, "11000011" after 390 ns, --170 195
		"11001000" after 400 ns, "11001101" after 410 ns, "11010010" after 420 ns, "11010111" after 430 ns, "11011100" after 440 ns, "11100001" after 450 ns, --200 225
		"11100110" after 460 ns, "11101011" after 470 ns, "11110000" after 480 ns, "11110101" after 490 ns, "11111010" after 500 ns, "11111111" after 505 ns; -- 230  255








END;
