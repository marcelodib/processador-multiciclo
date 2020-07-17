LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY ula IS 
PORT ( 
  ClockUla, ula: IN STD_LOGIC; 
  Xchg: OUT STD_LOGIC; 
  opcode : IN STD_LOGIC_VECTOR(2 DOWNTO 0); 
  A, B : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
  Ri : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
  Rj : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)); 
END ula;

ARCHITECTURE Behavior OF ula IS 
 BEGIN 
 PROCESS (ClockUla , opcode, ula)
	BEGIN
	IF ClockUla'EVENT AND ClockUla = '1' AND ula = '1' THEN

			 CASE opcode IS 
			  WHEN "000" => --add Ri, Rj
				Ri <= A + B;
				Rj <= B;
				Xchg <='0';
			  WHEN "001" => --sub Ri, Rj
				Ri <= A - B; 
				Rj <= B;
				Xchg <='0';
			  WHEN "010" => --addi Ri, Imed
				Ri <= A + B; 
				Rj <= B;
				Xchg <='0';
			  WHEN "011" => --subi Ri, Imed
				Ri <= A - B;
			   Rj <= B;	
				Xchg <='0';
			  WHEN "100" => --mov Ri, Rj
				Ri <= B;
			   Rj <= B;	
				Xchg <='0';
			  WHEN "101" => --mov Ri, Imed
				Ri <= B;
				Rj <= B;
				Xchg <='0';
			  WHEN "110" => --xchg Ri, Rj
				Ri <= B;
				Rj <= A; 
				Xchg <='1';
			  WHEN OTHERS => 
				Ri <= "00000000"; 
			 END CASE; 
		END IF;
 END PROCESS; 

END Behavior;