LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY Main IS 
PORT (clock : IN STD_LOGIC;
		instruction : IN STD_LOGIC_VECTOR (12 DOWNTO 0);
		Riout, Rjout: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));	
END Main;

ARCHITECTURE behaviorMain OF Main IS 
	SIGNAL XchgC : STD_LOGIC;
	SIGNAL OPCODE : STD_LOGIC_VECTOR (2 DOWNTO 0);
	SIGNAL Ric, Rjc : STD_LOGIC_VECTOR (1 DOWNTO 0);
	SIGNAL Imediato : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL Op1, Op2, RegAux, Res1, Res2, Res3, op3, op4, op5: STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL ResU1, ResU2, ResU3, ResU4 : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL ResU5, ResU6, ResU7, ResU8 : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL Main2 : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL regReadM, regWriteM, ulaM, condM:STD_LOGIC;	
	SIGNAL R1c, R2c, R3c, R4c:STD_LOGIC_VECTOR (7 DOWNTO 0);
	
	COMPONENT BancodeRegistradores 
		PORT (RegWrite, CLOCK: IN STD_LOGIC;
		endereco, endereco1 : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		R0, R1: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		Rout, Rout1: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT ula
	PORT (ClockUla, ula: IN STD_LOGIC; 
		Xchg: OUT STD_LOGIC; 
		opcode : IN STD_LOGIC_VECTOR(2 DOWNTO 0); 
		A, B : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
		Ri : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		Rj : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)); 
	END COMPONENT;
	
	COMPONENT CondReg
	PORT (XchgCond, cond: IN STD_LOGIC; 
		OpcodeCond: in STD_LOGIC_VECTOR (2 DOWNTO 0);
		RjCond : in STD_LOGIC_VECTOR (7 DOWNTO 0);
		ImediatoCond : in STD_LOGIC_VECTOR (7 DOWNTO 0);
		ResOut : out STD_LOGIC_VECTOR (7 DOWNTO 0));	
	END COMPONENT;
	
	COMPONENT Controle
	PORT (clockCon : IN STD_LOGIC;
			regRead, regWrite, ula, cond: OUT STD_LOGIC);	
	END COMPONENT;
	

BEGIN
		OPCODE <= instruction (12 DOWNTO 10);
		Ric <= instruction (9 DOWNTO 8);
		Rjc <= instruction (7 DOWNTO 6);
		Imediato <= instruction (7 DOWNTO 0);
		
		stage: Controle PORT MAP(
		clockCon => Clock,
		regRead => regReadM,
		regWrite => regWriteM,
		ula => ulaM,
		cond => condM);
		
		-- RECEBE RI E RJ
		stage0: BancodeRegistradores PORT MAP(
		RegWrite => regWriteM,
		CLOCK => clock,
		endereco => Ric,
		endereco1 => Rjc,
		R0 => Res1,  
		R1 => Res3,
		Rout => op1,
		Rout1 => Op2);
		
		
		regAux <= Op2;

		--Verifica se tem imediato
		stage2: CondReg PORT MAP (
		XchgCond=> XchgC,
		OpcodeCond => OPCODE, 
		RjCond => regAux,
		ImediatoCond => Imediato,
		ResOut => Op3,
		cond => condM);
		
		--Faz a operacao Ula
		stage3: ula PORT MAP (
			ClockUla => clock,
			opcode => OPCODE, 
			A => Op1,
			B => Op3,
			Ri => Res1,
			Rj => Res2,
			Xchg => XchgC,
			ula => ulaM);
			
			ResU1  <= Res1;
			ResU2  <= Res1;
			ResU3  <= Res1; 
			ResU4  <= Res1;

			
		stage5: CondReg PORT MAP (
			XchgCond=> XchgC,
			OpcodeCond => OPCODE, 
			RjCond => Op2,
			ImediatoCond => Res2,
			ResOut => Res3,
			cond => condM);	
			
			ResU5  <= Res3;
			ResU6  <= Res3;
			ResU7  <= Res3; 
			ResU8  <= Res3;
			

			Riout	<= Res1;
			Rjout <= Res3;
END behaviorMain;