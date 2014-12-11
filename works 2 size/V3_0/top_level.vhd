----------------------------------------------------------------------------------
-- Engineer: Mike Field <hamster@snap.net.nz>
-- 
-- Module Name: top_level - Behavioral 
-- Description: Top level module of the Zedboard OV7670 design
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top_level is
    Port ( CLOCK_50          : in  STD_LOGIC;
           
			  GPIO : inout std_logic_vector(35 downto 0);
           config_finished : out STD_LOGIC;
           
			VGA_HS  		 : out  STD_LOGIC;  -- H_SYNC
			VGA_VS 		 : out  STD_LOGIC;  -- V_SYNC
			VGA_BLANK_N  : out std_logic;   -- BLANK
			VGA_CLK 	 	 : out std_logic;   -- Clock
			VGA_SYNC_N   : out std_logic;   -- SYNC
			  
		   vga_r     : out  STD_LOGIC_vector(7 downto 4);
		   vga_g     : out  STD_LOGIC_vector(7 downto 4);
		   vga_b     : out  STD_LOGIC_vector(7 downto 4);
			
			-- PS/2 port
			PS2_DAT,                    -- Data
			PS2_CLK : INOUT STD_LOGIC;  -- Clock
			
			KEY 		    : in    STD_LOGIC_VECTOR(3 downto 0)
			  		  
           );
          
end top_level;

architecture Behavioral of top_level is


-- HORIZONTAL TIMING PARAMETERS

   constant THD  :   integer := 800; 
	constant TH   :   integer := 928; 
	constant THPW :   integer := 48;
	constant THB  :   integer := 0;--88; 
	constant THFP :  integer := 40;
	constant TH_THDD : integer := 128;
	
	-- V TIMING PARAMETERS
	
	constant TVD  :   integer   := 480; 
	constant TV   :   integer   := 525; 
	constant TVB  :   integer   := 0;--32; 
	constant TVFP :   integer   := 13; 
	constant TV_TVD  :  integer := 45;
	
	signal Hcount: std_logic_vector(10 downto 0) := (others => '0');
   signal Vcount: std_logic_vector(9 downto 0) := (others => '0');	
	
	signal HSD : std_logic; 
	signal VSD : std_logic; 
	
	signal PixelClock: std_logic;
	
	signal Prescaler: std_logic_vector(23 downto 0);
	signal Tick: std_logic := '0';
	signal PWM_Output: std_logic;
	
	constant cursorWidth: integer := 14;
	constant cursorHeight: integer := 27;
	signal cursorLeft: std_logic_vector(9 downto 0) := "0101101000";
	signal cursorTop: std_logic_vector(9 downto 0)  := "0101101000";
	signal moveRight: std_logic := '1';
	signal moveDown: std_logic := '1';
	
	type CursorData_t is array(0 to 26) of std_logic_vector(13 downto 0);
	constant CursorData : CursorData_t := (	"10000000000000",
														"11000000000000",
														"11100000000000",
														"11110000000000",
														"11111000000000",
														"11111000000000",
														"11111100000000",
														"11111110000000",
														"11111111000000",
														"11111111100000",
														"11111111110000",
														"11111111111000",
														"11111111111100",
														"11111111111110",
														"11111111111111",
														"11111111111111",
														"11111111000011",
														"11111011000001",
														"11110011100000",
														"11000001100000",
														"10000001100000",
														"00000001110000",
														"00000001110000",
														"00000000111000",
														"00000000111000",
														"00000000111000",
														"00000000011000");
	
	signal CursorDataX, CursorDataY: integer;
	signal CursorDataCurrent: std_logic_vector(13 downto 0);
	
			
	COMPONENT VGA
	PORT(
		CLK25 : IN std_logic;    
      rez_160x120 : IN std_logic;
      rez_320x240 : IN std_logic;
		Hsync : OUT std_logic;
		Vsync : OUT std_logic;
		Nblank : OUT std_logic;      
		clkout : OUT std_logic;
		activeArea : OUT std_logic;
		Nsync : OUT std_logic
		);
	END COMPONENT;

	COMPONENT ov7670_controller
	PORT(
		clk : IN std_logic;
		resend : IN std_logic;    
		siod : INOUT std_logic;      
		config_finished : OUT std_logic;
		sioc : OUT std_logic;
		reset : OUT std_logic;
		pwdn : OUT std_logic;
		xclk : OUT std_logic
		);
	END COMPONENT;

	COMPONENT debounce
	PORT(
		clk : IN std_logic;
		i : IN std_logic;          
		o : OUT std_logic
		);
	END COMPONENT;

	COMPONENT frame_buffer
	PORT(
		data : IN std_logic_vector(11 downto 0);
		rdaddress : IN std_logic_vector(16 downto 0);
		rdclock : IN std_logic;
		wraddress : IN std_logic_vector(16 downto 0);
		wrclock : IN std_logic;
		wren : IN std_logic;          
		q : OUT std_logic_vector(11 downto 0)
		);
	END COMPONENT;
	
	COMPONENT frame_buffer_picture IS
	PORT
	(
		data		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		rdaddress		: IN STD_LOGIC_VECTOR (16 DOWNTO 0);
		rdclock		: IN STD_LOGIC ;
		wraddress		: IN STD_LOGIC_VECTOR (16 DOWNTO 0);
		wrclock		: IN STD_LOGIC  := '1';
		wren		: IN STD_LOGIC  := '0';
		q		: OUT STD_LOGIC_VECTOR (11 DOWNTO 0)
	);
	END COMPONENT;
	
	COMPONENT frame_buffer_LCD IS
	PORT
	(
		data		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		rdaddress		: IN STD_LOGIC_VECTOR (16 DOWNTO 0);
		rdclock		: IN STD_LOGIC ;
		wraddress		: IN STD_LOGIC_VECTOR (16 DOWNTO 0);
		wrclock		: IN STD_LOGIC  := '1';
		wren		: IN STD_LOGIC  := '0';
		q		: OUT STD_LOGIC_VECTOR (11 DOWNTO 0)
	);
	END COMPONENT;
	
	

	COMPONENT ov7670_capture
	PORT(
      rez_160x120 : IN std_logic;
      rez_320x240 : IN std_logic;
		pclk : IN std_logic;
		vsync : IN std_logic;
		href : IN std_logic;
		d : IN std_logic_vector(7 downto 0);          
		addr : OUT std_logic_vector(16 downto 0);
		dout : OUT std_logic_vector(11 downto 0);
		we : OUT std_logic
		);
	END COMPONENT;

	COMPONENT RGB
	PORT(
		Din : IN std_logic_vector(11 downto 0);
		Nblank : IN std_logic;          
		R : OUT std_logic_vector(7 downto 0);
		G : OUT std_logic_vector(7 downto 0);
		B : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT vga_pll
	PORT(
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC ;
		c1		: OUT STD_LOGIC ;
		c2		: OUT STD_LOGIC ;
		c3		: OUT STD_LOGIC 
		);
	END COMPONENT;

	COMPONENT Address_Generator
	PORT(
		CLK25       : IN  std_logic;
      rez_160x120 : IN std_logic;
      rez_320x240 : IN std_logic;
		enable      : IN  std_logic;       
      vsync       : in  STD_LOGIC;
		address     : OUT std_logic_vector(16 downto 0)
		);
	END COMPONENT;
	
	COMPONENT MOUSE
   PORT( clk_50MHz, reset 			: IN std_logic;
         mouse_data					: INOUT std_logic;
         mouse_clk 					: INOUT std_logic;
         left_button, right_button	: OUT std_logic;
			mouse_cursor_row 			: OUT std_logic_vector(9 DOWNTO 0); 
			mouse_cursor_column 		: OUT std_logic_vector(9 DOWNTO 0)
		);       	
	END COMPONENT;
	
	COMPONENT icon_takephoto
	PORT( index	:	in	integer range 1 to 2500;
			pixel	:	out std_logic_vector(11 downto 0)
			);
	END COMPONENT icon_takephoto;



   signal clk_camera : std_logic;
   signal clk_vga    : std_logic;
   signal wren       : std_logic;
	signal wren_picture : std_logic := '1';
   signal resend     : std_logic;
   signal nBlank     : std_logic;
   signal vSync      : std_logic;
   signal nSync      : std_logic;
   
   signal wraddress  : std_logic_vector(16 downto 0);
	signal wraddress_static : std_logic_vector(16 downto 0);
   signal wrdata     : std_logic_vector(11 downto 0);
   
   signal rdaddress  : std_logic_vector(16 downto 0);
   signal rddata     : std_logic_vector(11 downto 0);
   signal red,green,blue : std_logic_vector(7 downto 0);
   signal activeArea : std_logic;
   
   signal rez_160x120 : std_logic;
   signal rez_320x240 : std_logic;
	
	
	signal rdaddress_LCD : std_logic_vector(16 downto 0) := (others => '0');
	signal rdaddress_picture : std_logic_vector(16 downto 0) := (others => '0');
   signal rddata_LCD    : std_logic_vector(11 downto 0) := (others => '0');
   signal rddata_picture: std_logic_vector(11 downto 0) := (others => '0');	
	signal picture 		: std_logic;
	
	signal left_button_int  : std_logic;
	signal right_button_int : std_logic;
	signal mouse_reset		: std_logic := '1';
	
	signal icon_takephoto_index : integer range 0 to 2500 := 1;
	signal icon_takephoto_pixel : std_logic_vector(11 downto 0) := (others => '0');
	
begin
   vga_r <= red(7 downto 4);
   vga_g <= green(7 downto 4);
   vga_b <= blue(7 downto 4);
   
   rez_160x120 <= not KEY(0);
   rez_320x240 <=  KEY(3);
  
inst_vga_pll : vga_pll port map(
	  inclk0 => CLOCK_50,
	  c0 => clk_camera,
	  c1 => clk_vga,
	  c2 => pixelClock,
	  c3 => PWM_Output 
	  );

   VGA_VS <= vsync;
   
	Inst_VGA: VGA PORT MAP(
		CLK25      => clk_vga,
      rez_160x120 => rez_160x120,
      rez_320x240 => rez_320x240,
		clkout     => VGA_CLK,
		Hsync      => VGA_HS,
		Vsync      => vsync,
		Nblank     => VGA_BLANK_N,
		Nsync      => VGA_SYNC_N,
      activeArea => activeArea
	);

	Inst_debounce: debounce PORT MAP(
		clk => clk_vga,
		i   => KEY(1),
		o   => resend	
	);

	
   Inst_picture: debounce PORT MAP(
		clk => clk_vga,
		i   => KEY(2),
		o   => picture
	);
	
	Inst_Mouse: MOUSE PORT MAP(
		 clk_50MHz		=> CLOCK_50,
		 reset 			=> mouse_reset,
       mouse_data		=> PS2_DAT,
       mouse_clk 		=> PS2_CLK,
       left_button	=> left_button_int,
       right_button	=> right_button_int,
		 mouse_cursor_row 	=>	cursorTop,
		 mouse_cursor_column => cursorLeft
		);
		
	Inst_icon_takephoto: icon_takephoto	PORT MAP( 
		index	=> icon_takephoto_index,
		pixel	=> icon_takephoto_pixel
		);

	

	Inst_ov7670_controller: ov7670_controller PORT MAP(
		clk             => clk_camera,
		resend	       => resend,
		config_finished => config_finished,
		sioc            => GPIO(24),--ov7670_sioc,
		siod            => GPIO(25),--ov7670_siod,
		reset           => GPIO(10),--ov7670_reset,
		pwdn            => GPIO(11),--ov7670_pwdn,
		xclk            => GPIO(21)--ov7670_xclk
	);

	Inst_frame_buffer: frame_buffer PORT MAP(
		rdaddress => rdaddress,
		rdclock   => clk_vga,
		q         => rddata,
      
		wrclock   => GPIO(20),--ov7670_pclk,
		wraddress => wraddress(16 downto 0),
		data      => wrdata,
		wren      => wren
	);
	
	Inst_frame_buffer_LCD: frame_buffer_LCD PORT MAP(
		rdaddress => rdaddress_LCD,
		rdclock   => pixelClock,
		q         => rddata_LCD,
		
		wrclock   => GPIO(20),--ov7670_pclk,
		wraddress => wraddress(16 downto 0),
		data      => wrdata,
		wren      => wren
	);
	
	Inst_frame_buffer_picture: frame_buffer_picture PORT MAP(
		rdaddress => rdaddress_picture,
		rdclock   => pixelClock,
		q         => rddata_picture,
		
		wrclock   => GPIO(20),--ov7670_pclk,
		wraddress => wraddress(16 downto 0),
		data      => wrdata,
		wren      => wren_picture
	);
	
   
	Inst_ov7670_capture: ov7670_capture PORT MAP(
		pclk  => GPIO(20),--ov7670_pclk,
      rez_160x120 => rez_160x120,
      rez_320x240 => rez_320x240,
		vsync => GPIO(22),--ov7670_vsync,
		href  => GPIO(23),--ov7670_href,
		d     => GPIO(19 downto 12),--ov7670_data,
		addr  => wraddress,
		dout  => wrdata,
		we    => wren
	);

	Inst_RGB: RGB PORT MAP(
		Din => rddata,
		Nblank => activeArea,
		R => red,
		G => green,
		B => blue
	);

	Inst_Address_Generator: Address_Generator PORT MAP(
		CLK25 => clk_vga,
      rez_160x120 => rez_160x120,
      rez_320x240 => rez_320x240,
		enable => activeArea,
      vsync  => vsync,
		address => rdaddress
	);
	
	
	
GPIO(6)  <= '0'; -- ON /OFF 
GPIO(7)  <= '1'; -- ON /OFF 
GPIO(9)  <= PWM_Output; -- PWM
GPIO(27) <= PixelClock;	-- CLOCK
GPIO(1) <= '0' when  (Hcount =  TH )  else '1';  -- or (Hcount <  1) ) else '1';  -- HSD,
GPIO(0) <= '0' when  (Vcount = TV )   else '1'; --or  (Vcount < 3)  ) else '1';  -- VSD

PixelLCD: process(PixelClock)
	
	begin
		if (PixelClock'event and PixelClock = '1') then
			
--			if (wren_picture = '1' and wraddress = wraddress_static) then
--				wren_picture <= '0';
--			end if;
			
			
		   if  (Hcount = 320 and Vcount = 240) then
			   rdaddress_LCD <= (others => '0');
				
			elsif  (Hcount = 320 and Vcount = 480) then
			   rdaddress_picture <= (others => '0');
				
			elsif (Hcount >= cursorLeft) and (Hcount <= (cursorLeft+cursorWidth)) and (Vcount >= cursorTop) and (Vcount <= (cursorTop+cursorHeight)) and  (CursorDataCurrent(CursorDataX) = '1') then
				GPIO (5 DOWNTO 2 ) <=  (others => '1');
				GPIO(35 DOWNTO 32) <=  (others => '1'); 
				GPIO(31 DOWNTO 28) <=  (others => '1');
				
				if  (Hcount < 320 and Vcount < 240) then -- cursor in live image region
					rdaddress_LCD <= rdaddress_LCD + 1;
				end if;
				
				if  (Hcount < 320 and Vcount >= 240 and Vcount < 480 and wren_picture = '0') then -- cursor in static image region
					rdaddress_picture <= rdaddress_picture + 1;
				end if;
				
				if  ((Hcount>400) and (Hcount<=450) and (Vcount>50) and (Vcount<=100)) then -- cursor in photo_icon region
					icon_takephoto_index <= icon_takephoto_index + 1;
					if (icon_takephoto_index = 2500) then
						icon_takephoto_index <= 1;
					end if;
					
					
					if (left_button_int = '1') then
						wren_picture <= '0';
--						wraddress_static <= wraddress;
					end if;
					
					if (right_button_int = '1') then
						wren_picture <= '1';
					end if;
					
				end if;
			
			elsif ( (Hcount>400) and (Hcount<=450) and (Vcount>50) and (Vcount<=100) ) then -- icon_take_photo region
				icon_takephoto_index <= icon_takephoto_index + 1;
				
				GPIO (5 DOWNTO 2 ) <=  icon_takephoto_pixel(11 downto 8); -- RED 
				GPIO(35 DOWNTO 32) <=  icon_takephoto_pixel(7 downto 4); -- GREEN 
				GPIO(31 DOWNTO 28) <=  icon_takephoto_pixel(3 downto 0); -- BLUE
				
				if (icon_takephoto_index = 2500) then
					icon_takephoto_index <= 1;
				end if;
				
					
			elsif  (Hcount < 320 and Vcount < 240) then -- live image region
				rdaddress_LCD <= rdaddress_LCD + 1;   
				 
				GPIO (5 DOWNTO 2 ) <=  rddata_LCD(11 downto 8); -- RED 
				GPIO(35 DOWNTO 32) <=  rddata_LCD(7 downto 4); -- GREEN 
				GPIO(31 DOWNTO 28) <=  rddata_LCD(3 downto 0); -- BLUE
				
			elsif  (Hcount < 320 and Vcount >= 240 and Vcount < 480 and wren_picture = '0') then -- static image region
				rdaddress_picture <= rdaddress_picture + 1;   
				 
				GPIO (5 DOWNTO 2 ) <=  rddata_picture(11 downto 8); -- RED 
				GPIO(35 DOWNTO 32) <=  rddata_picture(7 downto 4); -- GREEN 
				GPIO(31 DOWNTO 28) <=  rddata_picture(3 downto 0); -- BLUE
				
			else  -- rest of display
				GPIO (5 DOWNTO 2 ) <=  (others => '0');
				GPIO(35 DOWNTO 32) <=  (others => '0');
				GPIO(31 DOWNTO 28) <=  (others => '0');
			end if;
			
		end if;
end process;

		  
CursorDataCurrent <= CursorData(CursorDataY);
CursorDataX <= to_integer(unsigned((Hcount-cursorLeft)));
CursorDataY <= to_integer(unsigned((Vcount-cursorTop)));


	PixelCounter: process(PixelClock)
	begin
		if (PixelClock'event and PixelClock = '0') then
			if (Hcount < TH) then
				Hcount <= Hcount + 1;
			else
				if (Vcount < TV) then
					Vcount <= Vcount + 1;
				else
					Vcount <= (others => '0');
				end if;
				Hcount <= (others => '0'); 
			end if;
		end if;
	end process;
	
	DE_Generator: process(PixelClock,Hcount,VCount)
	begin 
		if (PixelClock'event and PixelClock = '0') then
			if ( (HCount > THB) and (Hcount < THB+THD) and (Vcount > TVB) and (Vcount < TVB + TVD) )  then GPIO(26) <= '1';
			else GPIO(26) <= '0';
			end if;
		end if;
	end process;
		

end Behavioral;

