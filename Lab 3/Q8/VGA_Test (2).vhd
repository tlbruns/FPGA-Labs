-- Project name				: PROBLEM 8
-- File name				: VGA_Test.vhd
-- Title					: PROBLEM 8
-- Description				: Output circle on the screen KEY0 controls background color KEY1 the circle color
-- Design library			: N/A
-- Analysis Dependency		: ALL VGA FILEs to handle the VGA outputs 
-- Initialization			: N/A
-- Simulator(s)				: ModelSim-Altera Starter Edition version 10.1d
-------------------------------------------------------------------------------
-- Revisions
--		Date			Author				 Revision		Comments
--		11/8/2014		T. Bruns & M. Beccani			Rev A			-
--
-------------------------------------------------------------------------------

-- Always specify the IEEE library in your design


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all;
USE ieee.std_logic_unsigned.ALL;

-- Entity declaration
-- 		Defines the interface to the entity

ENTITY VGA_Test IS


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
    VGA_R 		 : out std_logic_vector(7 downto 0); -- Red[7:0]
    VGA_G 		 : out std_logic_vector(7 downto 0); -- Green[7:0]
    VGA_B 		 : out std_logic_vector(7 downto 0)  -- Blue[7:0]

	);
END VGA_Test;


-- Architecture body 
-- 		Describes the functionality or internal implementation of the entity

ARCHITECTURE structural OF VGA_Test IS

COMPONENT VGA_SYNC_module
	PORT(	clock_50Mhz : IN	STD_LOGIC;
	      red, green, blue		: IN	STD_LOGIC_VECTOR(7 DOWNTO 0);
			red_out, green_out, blue_out : OUT	std_logic_vector (7 DOWNTO 0);
			video_on : OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			horiz_sync_out, vert_sync_out, pixel_clock: OUT	STD_LOGIC;
			pixel_row, pixel_column: OUT STD_LOGIC_VECTOR(9 DOWNTO 0));
END COMPONENT;

COMPONENT debounce
  Port 
  (
	CLK 	: in STD_LOGIC;	-- 50 MHz input clock
   x 		: in STD_LOGIC;	-- Push button input
   DBx 	: out STD_LOGIC	-- Debounced push button
  );
END COMPONENT; 

SIGNAL red_int 			: STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
SIGNAL green_int 		: STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
SIGNAL blue_int 		: STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
SIGNAL video_on_int 	: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pixel_clock_int 	: STD_LOGIC;
SIGNAL pixel_row_int 	:STD_LOGIC_VECTOR(9 DOWNTO 0); 
SIGNAL pixel_column_int :STD_LOGIC_VECTOR(9 DOWNTO 0); 
SIGNAL color_selector 	: STD_LOGIC_VECTOR (2 DOWNTO 0);
SIGNAL color_value 		: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL key_db0,key_db1 	: STD_LOGIC;

TYPE rgb is array (0 to 2) of STD_LOGIC_VECTOR(7 DOWNTO 0); 
TYPE colors IS ARRAY (0 to 7) of rgb;
SIGNAL rgb_array : rgb;
SIGNAL colors_array: colors;

SIGNAL background_color : integer RANGE 0 TO 7;
SIGNAL circle_color : integer RANGE 0 TO 7;
SIGNAL loop_count : STD_LOGIC_VECTOR(2 DOWNTO 0) := "000"; 
signal radius : integer RANGE 0 TO 1600000 := 70;

BEGIN

U1: VGA_SYNC_module PORT MAP
		(clock_50Mhz		=>	CLOCK_50,
		
		 red					=>	red_int,
		 green				=>	green_int,	
		 blue					=>	blue_int,
		 
		 red_out				=>	VGA_R(7 DOWNTO 0),
		 green_out			=>	VGA_G(7 DOWNTO 0),
		 blue_out			=>	VGA_B(7 DOWNTO 0),
		 
		 horiz_sync_out	=>	VGA_HS,
		 vert_sync_out		=>	VGA_VS,
		 video_on(0)		=>	VGA_BLANK_N,
		 pixel_clock		=>	VGA_CLK,
		 pixel_row			=>	pixel_row_int,
		 pixel_column		=>	pixel_column_int
		);

db0: debounce PORT MAP
		( 
		CLK 	=> CLOCK_50,
		x 		=> KEY(0),
      DBx 	=> key_db0
		);
		
db1: debounce PORT MAP
		(
		CLK => CLOCK_50,
      x 	=>  KEY(1),
      DBx => key_db1
		);


frame:process(CLOCK_50)
begin
	
	if pixel_row_int>159 and pixel_row_int <320 and pixel_column_int < 440  and pixel_column_int > 199  then 
		CASE background_color IS 
		WHEN 0  =>  red_int <= (others => '0'); green_int <= (others => '0');  blue_int <= (others => '0'); 
		WHEN 1  =>  red_int <= (others => '0'); green_int <= (others => '0');  blue_int <= (others => '1'); 
		WHEN 2  =>  red_int <= (others => '0'); green_int <= (others => '1');  blue_int <= (others => '0'); 
		WHEN 3  =>  red_int <= (others => '0'); green_int <= (others => '1');  blue_int <= (others => '1'); 
		WHEN 4  =>  red_int <= (others => '1'); green_int <= (others => '0');  blue_int <= (others => '0'); 
		WHEN 5  =>  red_int <= (others => '1'); green_int <= (others => '0');  blue_int <= (others => '1'); 
		WHEN 6  =>  red_int <= (others => '1'); green_int <= (others => '1');  blue_int <= (others => '0'); 
		WHEN 7  =>  red_int <= (others => '1'); green_int <= (others => '1');  blue_int <= (others => '1'); 
		END CASE; 
		
	if  (480*unsigned(pixel_row_int)-unsigned(pixel_row_int)*unsigned(pixel_row_int)+640*unsigned(pixel_column_int)-unsigned(pixel_column_int)*unsigned(pixel_column_int))> 160000 - radius*radius   then
		CASE circle_color IS 
		WHEN 0  =>  red_int <= (others => '0'); green_int <= (others => '0');  blue_int <= (others => '0'); 
		WHEN 1  =>  red_int <= (others => '0'); green_int <= (others => '0');  blue_int <= (others => '1'); 
		WHEN 2  =>  red_int <= (others => '0'); green_int <= (others => '1');  blue_int <= (others => '0'); 
		WHEN 3  =>  red_int <= (others => '0'); green_int <= (others => '1');  blue_int <= (others => '1'); 
		WHEN 4  =>  red_int <= (others => '1'); green_int <= (others => '0');  blue_int <= (others => '0'); 
		WHEN 5  =>  red_int <= (others => '1'); green_int <= (others => '0');  blue_int <= (others => '1'); 
		WHEN 6  =>  red_int <= (others => '1'); green_int <= (others => '1');  blue_int <= (others => '0'); 
		WHEN 7  =>  red_int <= (others => '1'); green_int <= (others => '1');  blue_int <= (others => '1'); 
		END CASE; 
	end if;
end if;

 end process;
 
color_assigment: process(key_db0,key_db1)
begin
 IF (key_db0 = '0' AND key_db0 'event)  THEN 
	background_color <= background_color + 1;
 END IF;
 
 IF (key_db1 = '0' AND key_db1 'event) THEN
	circle_color <= circle_color + 1;
 END IF;

end process;

end structural;
