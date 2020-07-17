LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY Controle IS 
PORT (clockCon : IN STD_LOGIC;
		regRead, regWrite, ula, cond: OUT STD_LOGIC);	
END Controle;

ARCHITECTURE behaviorControle OF Controle IS 
	TYPE STATE_TYPE IS (state0,state1,state2, state3, state4);
	SIGNAL state : STATE_TYPE := state0;
	BEGIN
	PROCESS (clockCon)
	BEGIN
		IF (clockCon'EVENT AND clockCon = '1') THEN
			CASE state IS
				WHEN state0=>
					state<=state1;
				WHEN state1=>
					state<=state2;
				WHEN state2=>
					state<=state3;
				WHEN state3=>
					state<=state4;
				WHEN state4=>
					state<=state0;
			END CASE;
		END IF;
	END PROCESS;
	PROCESS (state)
	BEGIN
		CASE state IS
			WHEN state0=>--Le instrucao e reg
				regRead <= '1';
				regWrite <= '0';
				ula <= '0';
				cond <= '0';
			WHEN state1=> -- 1 cond
				regRead <='0';
				regWrite <='0';
				ula <= '0';
				cond <= '1';
			WHEN state2=> -- ula
				regRead <='0';
				regWrite <='0';
				ula <= '1';
				cond <= '0';
			WHEN state3=> -- 2 cond
				regRead <='0';
				regWrite <='0';
				ula <= '0';
				cond <= '1';
			WHEN state4=> -- Res
				regRead <='0';
				regWrite <='1';
				ula <= '0';
				cond <= '0';
		END CASE;
	END PROCESS;
END behaviorControle;