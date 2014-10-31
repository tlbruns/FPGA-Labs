-------------------------------------------------------------------------------
--
-- Project					: VGA_Ball
-- File name				: VGA_Ball.vhd
-- Title						: VGA Moving Ball 
-- Description				:  
--								: 
-- Design library			: N/A
-- Analysis Dependency	: VGA_SYNC.vhd
-- Simulator(s)			: ModelSim-Altera version 6.1g
-- Initialization			: none
-- Notes						: This model is designed for synthesis
--								: Compile with VHDL'93
--
-------------------------------------------------------------------------------
--
-- Revisions
--			Date				Author			Revision		Comments
--		3/11/2008		W.H.Robinson		Rev A			Creation
--		3/13/2012		W.H.Robinson		Rev B			Update for DE2-115 Board
--	  10/31/2014	T.Bruns/M.Beccani		Rev C			Added user control for ball movement
--			
-------------------------------------------------------------------------------

-- Always specify the IEEE library in your design


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all;
USE ieee.std_logic_unsigned.ALL;

-- Entity declaration
-- Defines the interface to the entity

ENTITY VGA_Ball IS


	PORT
	(
-- 	Note: It is easier to identify individual ports and change their order
--	or types when their declarations are on separate lines.
--	This also helps the readability of your code.

    -- Clocks
    
    CLOCK_50	: IN STD_LOGIC;  -- 50 MHz
 
    -- Buttons 
    
    KEY 		: IN STD_LOGIC_VECTOR (3 downto 0);         -- Push buttons

    -- Input switches
    
    SW 			: IN STD_LOGIC_VECTOR (17 downto 0);         -- DPDT switches

    -- VGA output
    
    VGA_BLANK_N : out std_logic;            -- BLANK
    VGA_CLK 	 : out std_logic;            -- Clock
    VGA_HS 		 : out std_logic;            -- H_SYNC
    VGA_SYNC_N  : out std_logic;            -- SYNC
    VGA_VS 		 : out std_logic;            -- V_SYNC
    VGA_R 		 : out unsigned(7 downto 0); -- Red[9:0]
    VGA_G 		 : out unsigned(7 downto 0); -- Green[9:0]
    VGA_B 		 : out unsigned(7 downto 0) -- Blue[9:0]

	);
END VGA_Ball;


-- Architecture body 
-- 		Describes the functionality or internal implementation of the entity

ARCHITECTURE structural OF VGA_Ball IS

COMPONENT VGA_SYNC_module

	PORT(	clock_50Mhz, red, green, blue		: IN	STD_LOGIC;
			red_out, green_out, blue_out, horiz_sync_out, 
			vert_sync_out, video_on, pixel_clock	: OUT	STD_LOGIC;
			pixel_row, pixel_column: OUT STD_LOGIC_VECTOR(9 DOWNTO 0));

END COMPONENT;

COMPONENT ball

   PORT(pixel_row, pixel_column		: IN std_logic_vector(9 DOWNTO 0);
	     direction_key				: IN 	std_logic_vector(2 DOWNTO 0);
        Red,Green,Blue 				: OUT std_logic;
		  Horiz_sync : IN std_logic;
        Vert_sync	: IN std_logic );
END COMPONENT;

COMPONENT Debounce is
  Port 
  (
	CLK 	: in STD_LOGIC;	-- 50 MHz input clock
   x 		: in STD_LOGIC;	-- Push button input
   DBx 	: out STD_LOGIC	-- Debounced push button
  );
end COMPONENT;

SIGNAL direction_key : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL red_int : STD_LOGIC;
SIGNAL green_int : STD_LOGIC;
SIGNAL blue_int : STD_LOGIC;
SIGNAL video_on_int : STD_LOGIC;
SIGNAL vert_sync_int : STD_LOGIC;
SIGNAL horiz_sync_int : STD_LOGIC; 
SIGNAL pixel_clock_int : STD_LOGIC;
SIGNAL pixel_row_int :STD_LOGIC_VECTOR(9 DOWNTO 0); 
SIGNAL pixel_column_int :STD_LOGIC_VECTOR(9 DOWNTO 0); 
signal key0_int : STD_LOGIC;
signal key1_int : STD_LOGIC;
signal key2_int : STD_LOGIC;


BEGIN
	
	direction_key <= key2_int & key1_int & key0_int; -- 1-hot encoding
	VGA_R(6 DOWNTO 0) <= "0000000";
	VGA_G(6 DOWNTO 0) <= "0000000";
	VGA_B(6 DOWNTO 0) <= "0000000";

	VGA_HS <= horiz_sync_int;
	VGA_VS <= vert_sync_int;
   
	KEY0 : debounce PORT MAP 
	    (
		 CLK => CLOCK_50,
		 x => KEY(0),
		 DBx => key0_int
		 );
		 
	KEY1 : debounce PORT MAP 
	    (
		 CLK => CLOCK_50,
		 x => KEY(1),
		 DBx => key1_int
		 );
		 
	KEY2 : debounce PORT MAP 
	    (
		 CLK => CLOCK_50,
		 x => KEY(2),
		 DBx => key2_int
		 );

	U1: VGA_SYNC_module PORT MAP
		(clock_50Mhz		=>	CLOCK_50,
		 red					=>	red_int,
		 green				=>	green_int,	
		 blue					=>	blue_int,
		 red_out				=>	VGA_R(7),
		 green_out			=>	VGA_G(7),
		 blue_out			=>	VGA_B(7),
		 horiz_sync_out	=>	horiz_sync_int,
		 vert_sync_out		=>	vert_sync_int,
		 video_on			=>	VGA_BLANK_N,
		 pixel_clock		=>	VGA_CLK,
		 pixel_row			=>	pixel_row_int,
		 pixel_column		=>	pixel_column_int
		);

	U2: ball PORT MAP
		(pixel_row		=> pixel_row_int,
		 pixel_column	=> pixel_column_int,
		 direction_key	=> direction_key,
		 Red				=> red_int,
		 Green			=> green_int,
		 Blue				=> blue_int,
		 Vert_sync		=> vert_sync_int,
		 Horiz_sync 	=> horiz_sync_int
		);
		

END structural;

