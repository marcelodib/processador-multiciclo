LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY BancodeRegistradores IS 
PORT (RegWrite, CLOCK: IN STD_LOGIC;
		endereco, endereco1 : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		R0, R1: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		Rout, Rout1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END BancodeRegistradores;

ARCHITECTURE behaviorBanco OF BancodeRegistradores IS 
	SIGNAL R0s, R1s, R2s, R3s :STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN

	PROCESS ( RegWrite , CLOCK, endereco)
	BEGIN
		IF CLOCK'EVENT AND CLOCK = '1' AND RegWrite = '1'THEN
			CASE endereco IS 
				WHEN "00" => 
					R0s <= R0;
				WHEN "01" => 
					R1s <= R0; 
				WHEN "10" => 
					R2s <= R0; 		
				WHEN "11" => 
					R3s <= R0; 
			END CASE;
		 ELSE
			IF CLOCK'EVENT AND CLOCK = '1' AND RegWrite = '0' THEN
			CASE endereco IS 
				WHEN "00" => 
					Rout <= R0s; 
				WHEN "01" => 
					Rout <= R1s; 
				WHEN "10" => 
					Rout <= R2s;   
				WHEN "11" => 
					Rout <= R3s; 
			END CASE; 
		END IF;
		END IF;
	END PROCESS;
	
	PROCESS ( RegWrite , CLOCK, endereco)
	BEGIN
			IF CLOCK'EVENT AND CLOCK = '1' AND RegWrite = '0' THEN
			CASE endereco1 IS 
				WHEN "00" => 
					Rout1 <= R0s; 
				WHEN "01" => 
					Rout1 <= R1s; 
				WHEN "10" => 
					Rout1 <= R2s;   
				WHEN "11" => 
					Rout1 <= R3s; 
			END CASE; 
		END IF;
	END PROCESS;
END behaviorBanco;