----------------------------------------------------------------------------------
-- Engineer: Mike Field <hamster@snap.net.nz>
-- 
-- Module Name: top_level - Behavioral 
-- Description: Top level module of the Zedboard OV7670 design
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

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
		rdaddress : IN std_logic_vector(18 downto 0);
		rdclock : IN std_logic;
		wraddress : IN std_logic_vector(18 downto 0);
		wrclock : IN std_logic;
		wren : IN std_logic;          
		q : OUT std_logic_vector(11 downto 0)
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
		addr : OUT std_logic_vector(18 downto 0);
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
		inclk0 : IN std_logic;          
		c0 : OUT std_logic;
		c1 : OUT std_logic
		);
	END COMPONENT;

	COMPONENT Address_Generator
	PORT(
		CLK25       : IN  std_logic;
      rez_160x120 : IN std_logic;
      rez_320x240 : IN std_logic;
		enable      : IN  std_logic;       
      vsync       : in  STD_LOGIC;
		address     : OUT std_logic_vector(18 downto 0)
		);
	END COMPONENT;


   signal clk_camera : std_logic;
   signal clk_vga    : std_logic;
   signal wren       : std_logic;
   signal resend     : std_logic;
   signal nBlank     : std_logic;
   signal vSync      : std_logic;
   signal nSync      : std_logic;
   
   signal wraddress  : std_logic_vector(18 downto 0);
   signal wrdata     : std_logic_vector(11 downto 0);
   
   signal rdaddress  : std_logic_vector(18 downto 0);
   signal rddata     : std_logic_vector(11 downto 0);
   signal red,green,blue : std_logic_vector(7 downto 0);
   signal activeArea : std_logic;
   
   signal rez_160x120 : std_logic;
   signal rez_320x240 : std_logic;
	
begin
   vga_r <= red(7 downto 4);
   vga_g <= green(7 downto 4);
   vga_b <= blue(7 downto 4);
   
   rez_160x120 <= not KEY(0);
   rez_320x240 <= not KEY(3);
  
inst_vga_pll : vga_pll port map(
	  inclk0 => CLOCK_50,
	  c0 => clk_camera,
	  c1 => clk_vga
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
		wraddress => wraddress(18 downto 0),
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

end Behavioral;

