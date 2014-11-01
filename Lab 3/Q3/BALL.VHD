-- Project name				: PROBLEM 3
-- File name				: BALL.vhd
-- Title					: VGA_BALL control problem
-- Description				 Controls the ball movements on the screen
-- Design library			: N/A
-- Analysis Dependency		: N/A
-- Initialization			: N/A
-- Simulator(s)			: ModelSim-Altera Starter Edition version 10.1d
-- Notes				:  N/A
-
-------------------------------------------------------------------------------
--
-- Revisions
--		Date					Author				 Revision		Comments
--		11/1/2014		T. Bruns & M. Beccani		Rev A			-
--
-------------------------------------------------------------------------------


		
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
		


ENTITY ball IS


   PORT(pixel_row, pixel_column	: IN  std_logic_vector(9 DOWNTO 0);
		  direction_key				: IN 	std_logic_vector(2 DOWNTO 0);
        Red,Green,Blue 				: OUT std_logic;
		  Horiz_sync 					: IN  std_logic;
        Vert_sync						: IN  std_logic);
END ball;

architecture behavior of ball is

			-- Video Display Signals   
SIGNAL Ball_on			: std_logic;
SIGNAL Size 			: std_logic_vector(9 DOWNTO 0);  
SIGNAL Ball_X_motion : std_logic_vector(9 DOWNTO 0); 
SIGNAL Ball_Y_motion : std_logic_vector(9 DOWNTO 0);
SIGNAL Ball_Y_pos 	: std_logic_vector(9 DOWNTO 0)  := CONV_STD_LOGIC_VECTOR(8,10);
SIGNAL Ball_X_pos 	: std_logic_vector(9 DOWNTO 0)  := CONV_STD_LOGIC_VECTOR(320,10);
SIGNAL direction		: integer RANGE 0 TO 3;
SIGNAL movement	: integer RANGE 0 TO 3;
SIGNAL ymovement	: integer RANGE 0 TO 3;
SIGNAL y_last_pos : std_logic_vector(9 DOWNTO 0)  := CONV_STD_LOGIC_VECTOR(8,10);


BEGIN           

Size <= CONV_STD_LOGIC_VECTOR(8,10);

		-- Colors for pixel data on video signal
Red <=  '1';
		-- Turn off Green and Blue when displaying ball
Green <= NOT Ball_on;
Blue <=  NOT Ball_on;

RGB_Display: Process (Ball_X_pos, Ball_Y_pos, pixel_column, pixel_row, Size)
BEGIN
			-- Set Ball_on ='1' to display ball
 IF ('0' & Ball_X_pos <= pixel_column + Size) AND
 			-- compare positive numbers only
 	(Ball_X_pos + Size >= '0' & pixel_column) AND
 	('0' & Ball_Y_pos <= pixel_row + Size) AND
 	(Ball_Y_pos + Size >= '0' & pixel_row ) THEN
 		Ball_on <= '1';
 	ELSE
 		Ball_on <= '0';
END IF;
END process RGB_Display;


Move_Ball: process
BEGIN
			-- Move ball once every vertical sync
	WAIT UNTIL vert_sync'event and vert_sync = '1';
			-- Bounce off top or bottom of screen
			
			IF direction < 3  THEN 
				movement <= direction;
				--direction <= 3;
			ELSIF direction = 3 THEN 
			    NULL;
			END IF;
			
			
			IF ('0' & Ball_Y_pos) >= 480 - Size THEN
				--Ball_Y_motion <= CONV_STD_LOGIC_VECTOR(-2,10);
				ymovement <= 2;
			ELSIF Ball_Y_pos <= Size THEN
				--Ball_Y_motion <= CONV_STD_LOGIC_VECTOR(2,10);
				ymovement <= 0;
			END IF;
			
			IF ('0' & Ball_X_pos) >= 640 - Size THEN
				movement <= 2;
			ELSIF Ball_X_pos <= Size THEN
				movement <= 0;
			END IF; 
			
			IF movement = 0 THEN 
				Ball_X_motion <= CONV_STD_LOGIC_VECTOR(2,10);
				
						IF ymovement = 0 THEN 
							Ball_Y_motion <= CONV_STD_LOGIC_VECTOR(2,10);
						ELSIF ymovement = 2 THEN
							Ball_Y_motion <= CONV_STD_LOGIC_VECTOR(-2,10);
						END IF;
				
			ELSIF movement = 2 THEN
				Ball_X_motion <= CONV_STD_LOGIC_VECTOR(-2,10);
				
						IF ymovement = 0 THEN 
							Ball_Y_motion <= CONV_STD_LOGIC_VECTOR(2,10);
						ELSIF ymovement = 2 THEN
							Ball_Y_motion <= CONV_STD_LOGIC_VECTOR(-2,10);
						END IF;
						
			ELSIF movement = 1 THEN
				Ball_X_motion <= CONV_STD_LOGIC_VECTOR(0,10);
				Ball_Y_motion <= CONV_STD_LOGIC_VECTOR(0,10);
			END IF;
			

			
			Ball_X_pos <= Ball_X_pos + Ball_X_motion;
			Ball_Y_pos <= Ball_Y_pos + Ball_Y_motion;
				
END process Move_Ball;

direction_change: process(direction_key)
	BEGIN
	CASE direction_key IS
		WHEN "011" => direction <= 2;	 -- left (key2)
		WHEN "101" => direction <= 1;  -- stop (key(0)
		WHEN "110" => direction <= 0;  -- right (key1)
		WHEN OTHERS => direction <= 3; -- reset state
	END CASE;

	END process;


END behavior;

