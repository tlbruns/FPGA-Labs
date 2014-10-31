----------------------------------------------------------------------------------
-- Engineer: Mike Field <hamster@snap.net.nz>
-- 
-- Module Name: top_level - Behavioral 
-- Description: Top level module of the Zedboard OV7670 design
--
----------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all;
USE ieee.std_logic_unsigned.ALL;

entity top_level is
    Port ( 
	      CLOCK_50 : in  STD_LOGIC;
			GPIO 		: inout std_logic_vector(35 downto 0);
			SW  		: in std_logic_vector(17 downto 0);   -- DPDT switches
         config_finished : out STD_LOGIC;
           
         VGA_HS  		 : out STD_LOGIC;  -- H_SYNC
         VGA_VS 		 : out STD_LOGIC;  -- V_SYNC
			VGA_BLANK_N  : out std_logic;  -- BLANK
         VGA_CLK 	 	 : out std_logic;  -- Clock
			VGA_SYNC_N	 : out std_logic;  -- SYNC
			           
			VGA_R 		 : out unsigned(7 downto 0);
			VGA_G 		 : out unsigned(7 downto 0);
			VGA_B 		 : out unsigned(7 downto 0)
           
        --   ov7670_pclk  : in  STD_LOGIC;
       --    ov7670_xclk  : out STD_LOGIC;
       --    ov7670_vsync : in  STD_LOGIC; 
        --   ov7670_href  : in  STD_LOGIC;
       --    ov7670_data  : in  STD_LOGIC_vector(7 downto 0); GPIO(17 downto 10)
        --   ov7670_sioc  : out STD_LOGIC;
        --   ov7670_siod  : inout STD_LOGIC;
         --  ov7670_pwdn  : out STD_LOGIC; GPIO(19)
        --   ov7670_reset : out STD_LOGIC
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

--	COMPONENT frame_buffer
--	PORT(
--		data : IN std_logic_vector(11 downto 0);
--		rdaddress : IN std_logic_vector(18 downto 0);
--		rdclock : IN std_logic;
--		wraddress : IN std_logic_vector(18 downto 0);
--		wrclock : IN std_logic;
--		wren : IN std_logic;          
--		q : OUT std_logic_vector(11 downto 0)
--		);
--	END COMPONENT;
	
COMPONENT frame_buffer2 IS
PORT(
		data		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		rdaddress		: IN STD_LOGIC_VECTOR (18 DOWNTO 0);
		rdclock		: IN STD_LOGIC ;
		wraddress		: IN STD_LOGIC_VECTOR (18 DOWNTO 0);
		wrclock		: IN STD_LOGIC;
		wren		: IN STD_LOGIC;
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

--	component vga_pll_zedboard
	--port (
	--	CLK100       : in  std_logic;
	--	CLK50_camera : out std_logic;
	--	CLK25_vga    : out std_logic);
 -- end component;
	
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
	signal GPIO_32 : std_logic;
	
   signal activeArea : std_logic;
   
   signal rez_160x120 : std_logic;
   signal rez_320x240 : std_logic;
	
	signal puppa 		: std_logic;
	
begin

   VGA_CLK <= clk_vga;
	VGA_VS <= vsync;
	VGA_SYNC_N <= nsync;
	VGA_BLANK_N <= nBlank; 
	
	
   vga_r <=  unsigned( "0" & red(7 downto 4)   & "000");
   vga_g <=  unsigned( "0" & red(7 downto 4) & "000");
   vga_b <=  unsigned( "0" & red(7 downto 4)  & "000");
	
   rez_160x120 <= SW(17);
   rez_320x240 <= SW(16);
	
	
	Inst_vga_pll: vga_pll PORT MAP(
		inclk0 => CLOCK_50,
		c0 => clk_camera,
		c1 => clk_vga
	);

--inst_vga_pll : vga_pll_zedboard
 -- port map
 --  ( CLK100 => CLK100,
--    CLK50_camera => CLK_camera,
 --    CLK25_vga => CLK_vga);

    
   
	Inst_VGA: VGA PORT MAP(
		CLK25      => clk_vga,
      rez_160x120 => rez_160x120,
      rez_320x240 => rez_320x240,
		clkout     => open,
		Hsync      => VGA_HS,
		Vsync      => vsync,
		Nblank     => NBlank,
		Nsync      => nsync,
      activeArea => activeArea
	);

	Inst_debounce: debounce PORT MAP(
		clk => clk_vga,
		i   => SW(15),
		o   => resend
	);

	Inst_ov7670_controller: ov7670_controller PORT MAP(
		clk             => clk_camera,
		resend          => resend,
		config_finished => config_finished,
		sioc            => GPIO(20),--ov7670_sioc,
		siod            => GPIO(21),--ov7670_siod,
		reset           => GPIO(18), --ov7670_reset,
		pwdn            => GPIO(19), --ov7670_pwdn,
		xclk            => GPIO(32)--ov7670_xclk
	);

	Inst_frame_buffer: frame_buffer2 PORT MAP(
		rdaddress => rdaddress,
		rdclock   => clk_vga,
		q         => rddata,
      
		wrclock   => GPIO(33),  --ov7670_pclk,
		wraddress => wraddress(18 downto 0),
		data      => wrdata,
		wren      => wren
	);
	 
	Inst_ov7670_capture: ov7670_capture PORT MAP(
		pclk  => GPIO(33),--ov7670_pclk,
      rez_160x120 => rez_160x120,
      rez_320x240 => rez_320x240,
		vsync => GPIO(35), --ov7670_vsync,
		href  => GPIO(34),--ov7670_href,
		d     =>  GPIO(17 downto 10),   -- ov7670_data,
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

