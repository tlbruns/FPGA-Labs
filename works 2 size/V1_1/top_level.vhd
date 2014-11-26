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
           
--           ov7670_pclk  : in  STD_LOGIC;
--           ov7670_xclk  : out STD_LOGIC;
--           ov7670_vsync : in  STD_LOGIC;
--           ov7670_href  : in  STD_LOGIC;
--           ov7670_data  : in  STD_LOGIC_vector(7 downto 0);
--           ov7670_sioc  : out STD_LOGIC;
--           ov7670_siod  : inout STD_LOGIC;
--           ov7670_pwdn  : out STD_LOGIC;
--           ov7670_reset : out STD_LOGIC
			  
			  
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
	
	constant squareWidth: integer := 45;
	constant squareHeight: integer := 45;
	signal squareLeft: std_logic_vector(10 downto 0);
	signal squareTop: std_logic_vector(10 downto 0);
	signal moveRight: std_logic := '1';
	signal moveDown: std_logic := '1';
	
		type imageData_t is array(0 to 45) of std_logic_vector(45 downto 0);
	constant imageData : imageData_t := (	"0000000000000000001111111111000000000000000000",
														"0000000000000111111111111111111110000000000000",
														"0000000000001111111111111111111111000000000000",
														"0000000000011111111111111111111111100000000000",
														"0000000001111111111111111111111111111000000000",
														"0000000011111111111111111111111111111100000000",
														"0000001111111111111111111111111111111111000000",
														"0000011111111111111111111111111111111111100000",
														"0000111111111111111111111111111111111111110000",
														"0000111111111111111111111111111111111111110000",
														"0001111111111111111111111111111111111111111000",
														"0001111111111111111111111111111111111111111000",
														"0011111111111111111111111111111111111111111100",
														"0111111111111100001111111111000011111111111110",
														"0111111111111000000111111110000001111111111110",
														"0111111111111000000111111110000001111111111110",
														"0111111111111000000111111110000001111111111110",
														"0111111111111000000111111110000001111111111110",
														"1111111111111100001111111111000011111111111111",
														"1111111111111111111111111111111111111111111111",
														"1111111111111111111111111111111111111111111111",
														"1111111111111111111111111111111111111111111111",
														"1111111111111111111111111111111111111111111111",
														"1111111111111111111111111111111111111111111111",
														"1111111111111111111111111111111111111111111111",
														"1111111111111111111111111111111111111111111111",
														"1111111111111111111111111111111111111111111111",
														"1111111111110000000000000000000000111111111111",
														"0111111111110000000000000000000000111111111110",
														"0111111111110000000000000000000000111111111110",
														"0111111111110000000000000000000000111111111110",
														"0111111111111000000000000000000001111111111110",
														"0111111111111000000000000000000001111111111110",
														"0011111111111100000000000000000011111111111100",
														"0001111111111100000000000000000011111111111000",
														"0001111111111111000000000000001111111111111000",
														"0000111111111111110000000000111111111111110000",
														"0000011111111111111000000001111111111111100000",
														"0000011111111111111111111111111111111111100000",
														"0000000111111111111111111111111111111110000000",
														"0000000011111111111111111111111111111100000000",
														"0000000001111111111111111111111111111000000000",
														"0000000000011111111111111111111111100000000000",
														"0000000000001111111111111111111111000000000000",
														"0000000000000011111111111111111100000000000000",
														"0000000000000000001111111111000000000000000000");
	
	signal imageDataX, imageDataY: integer;
	signal imageDataCurrent: std_logic_vector(45 downto 0);

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


   signal clk_camera : std_logic;
   signal clk_vga    : std_logic;
   signal wren       : std_logic;
   signal resend     : std_logic;
   signal nBlank     : std_logic;
   signal vSync      : std_logic;
   signal nSync      : std_logic;
   
   signal wraddress  : std_logic_vector(16 downto 0);
   signal wrdata     : std_logic_vector(11 downto 0);
   
   signal rdaddress  : std_logic_vector(16 downto 0);
   signal rddata     : std_logic_vector(11 downto 0);
   signal red,green,blue : std_logic_vector(7 downto 0);
   signal activeArea : std_logic;
   
   signal rez_160x120 : std_logic;
   signal rez_320x240 : std_logic;
	
	
	signal rdaddress_LCD  : std_logic_vector(16 downto 0) := (others => '0');
   signal rddata_LCD     : std_logic_vector(11 downto 0) := (others => '0');
	signal picture : std_logic;
	
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
	
	
	

	Inst_ov7670_controller: ov7670_controller PORT MAP(
		clk             => clk_camera,
		resend          => resend,
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
		
		   if  (Hcount = 320 and Vcount = 240) then
			   rdaddress_LCD <= (others => '0');	
			elsif  (Hcount < 320 and Vcount < 240) then
				rdaddress_LCD <= rdaddress_LCD + 1;   
				 
				GPIO (5 DOWNTO 2 ) <=  rddata_LCD(11 downto 8); -- RED 
				GPIO(35 DOWNTO 32) <=  rddata_LCD(7 downto 4); -- GREEN 
				GPIO(31 DOWNTO 28) <=  rddata_LCD(3 downto 0); -- BLUE
			else  
				GPIO (5 DOWNTO 2 ) <=  (others => '1');
				GPIO(35 DOWNTO 32) <=  (others => '1');
				GPIO(31 DOWNTO 28) <=  (others => '1');
			end if;
			
		end if;
	end process;



--GPIO (5 DOWNTO 2 ) <= "0000" when (Hcount >= squareLeft) and (Hcount <= (squareLeft+squareWidth)) and (Vcount >= squareTop) and (Vcount <= (squareTop+squareHeight)) and  (imageDataCurrent(imageDataX) = '1') else -- (conv_std_logic_vector(imageDataX, 5)(0) = '1')
--		 "1111" when (Hcount >= 0) and (Hcount < 266) else 
--		 "0000"; -- RED
--GPIO(35 DOWNTO 32) <= "0000" when (Hcount >= squareLeft) and (Hcount <= (squareLeft+squareWidth)) and (Vcount >= squareTop) and (Vcount <= (squareTop+squareHeight)) and (imageDataCurrent(imageDataX) = '1') else
--		   "1111" when (Hcount >= 266) and (Hcount < 522	) else
--		   "0000";	-- GREEN 
--GPIO(31 DOWNTO 28) <= "0000" when (Hcount >= squareLeft) and (Hcount <= (squareLeft+squareWidth)) and (Vcount >= squareTop) and (Vcount <= (squareTop+squareHeight)) and (imageDataCurrent(imageDataX) = '1') else
--		  "1111" when (Hcount >= 522	) and (Hcount < 800) else
--		  "0000"; -- BLUE
		  
--imageDataCurrent <= imageData(imageDataY);
--imageDataX <= to_integer(unsigned((Hcount-squareLeft)));
--imageDataY <= to_integer(unsigned((Vcount-squareTop)));

--GPIO(35 DOWNTO 32) <= "0000";
--GPIO(31 DOWNTO 28) <= "0000";
--GPIO(5 DOWNTO 2)   <= "1111";


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
		
--	SecondGenerator: process(PixelClock)
--	begin
--		if rising_edge(PixelClock) then
--			if (Prescaler <= "11110100001001000") then
--				Prescaler <= Prescaler + 1;
--			else
--				Prescaler <= (others => '0');
--				Tick <= not Tick;
--			end if;
--		end if;
--	end process;
--
--	Changer: process(Tick)
--	begin
--		if rising_edge(Tick) then
--			if (moveRight = '1') then
--				if (squareLeft < (800-squareWidth)) then
--					squareLeft <= squareLeft + 1;
--				else
--					moveRight <= '0';
--				end if;
--			else
--				if (squareLeft > 0) then
--					squareLeft <= squareLeft - 1;
--				else
--					moveRight <= '1';
--				end if;			
--			end if;
--			
--			if (moveDown = '1') then
--				if (squareTop < (480-squareHeight)) then
--					squareTop <= squareTop + 1;
--				else
--					moveDown <= '0';
--				end if;	
--			else
--				if (squareTop > 0) then
--					squareTop <= squareTop - 1;
--				else
--					moveDown <= '1';
--				end if;				
--			end if;
--		end if;
--	end process;	

end Behavioral;

