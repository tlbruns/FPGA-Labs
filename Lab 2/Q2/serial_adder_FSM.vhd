library ieee;
use ieee.std_logic_1164.all;

ENTITY serial_adder_FSM IS
   PORT(
      clk   : IN   STD_LOGIC;
      a	   : IN   STD_LOGIC;
		b	   : IN   STD_LOGIC;
      reset	: IN   STD_LOGIC;
      s		: OUT  STD_LOGIC;
		state : OUT	 STD_LOGIC
		);
END serial_adder_FSM;

ARCHITECTURE behavior OF serial_adder_FSM IS
   TYPE STATE_TYPE IS (G, H);
   SIGNAL state_present, state_next : STATE_TYPE;
	SIGNAL s_next : STD_LOGIC;
BEGIN
   combinational: PROCESS (a,b,reset,state_present)
	VARIABLE ab : STD_LOGIC_VECTOR(1 DOWNTO 0);
	BEGIN
		ab := a & b;
		CASE state_present IS
			WHEN G =>
				IF ab = "00" THEN
					state_next <= G;
					s_next <= '0';
				ELSIF ab = "01" THEN
					state_next <= G;
					s_next <= '1';
				ELSIF ab = "10" THEN
					state_next <= G;
					s_next <= '1';
				ELSIF ab = "11" THEN
					state_next <= H;
					s_next <= '0';
				END IF;
			WHEN H =>
				IF ab = "00" THEN
					state_next <= G;
					s_next <= '1';
				ELSIF ab = "01" THEN
					state_next <= H;
					s_next <= '0';
				ELSIF ab = "10" THEN
					state_next <= H;
					s_next <= '0';
				ELSIF ab = "11" THEN
					state_next <= H;
					s_next <= '1';
				END IF;
		END CASE;
	END PROCESS combinational;

	sequential: PROCESS (clk)
	BEGIN
		IF (clk'EVENT AND clk = '1') THEN
			IF reset = '0' THEN
				state_present <= state_next;
				s <= s_next;
			ELSE
				state_present <= G;
				s <= '0';
			END IF;
		END IF;
	END PROCESS sequential;
	
	state <= '0' WHEN state_present = G ELSE
				'1';
				
END behavior;
