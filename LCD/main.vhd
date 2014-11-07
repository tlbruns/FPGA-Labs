
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is
	port (
		CLOCK_50: in std_logic;
		GPIO : inout std_logic_vector(35 downto 0)
		--PX_CLK: out std_logic;
		--DE: out std_logic;	
		--PWM: out std_logic;
		--RED: out std_logic_vector(7 downto 0);
		--GREEN: out std_logic_vector(7 downto 0);
		--BLUE: out std_logic_vector(7 downto 0)		
	);
end main;

architecture Behavioral of main is

COMPONENT pll IS
	PORT
	(
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC ;
		c1		: OUT STD_LOGIC 
	);
END COMPONENT;

-- HORIZONTAL TIMING PARAMETERS

   constant THD  :   integer := 800; 
	constant TH   :   integer := 928; 
	constant THPW :   integer := 48;
	constant THB  :   integer := 88; 
	constant THFP :  integer := 40;
	constant TH_THDD : integer := 128;
	
	-- V TIMING PARAMETERS
	
	constant TVD  :   integer := 480; 
	constant TV   :   integer := 525; 
	constant TVB  :   integer := 32; 
	constant TVFP :   integer := 13; 
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

	
begin

 pll_clock : pll PORT MAP (
		inclk0	=>  CLOCK_50,
		c0	      =>  PixelClock,	
		c1       => PWM_Output
	);
	
	
GPIO(6)  <= '0'; -- ON /OFF 
GPIO(7)  <= '1'; -- ON /OFF 
GPIO(9)  <= PWM_Output; -- PWM
GPIO(27) <= PixelClock;	-- CLOCK
--GPIO(26) <= '1' when ( (Hcount > THB) and (Hcount < THB+THD) and (Vcount > TVB) and (Vcount < TVB + TVD) ) else '0'; -- DE
GPIO(1) <= '0' when ( (Hcount =  TH )  or (Hcount <  1) ) else '1';  -- HSD,
GPIO(0) <= '0' when ( (Vcount = TV ) or  (Vcount < 3)  ) else '1';  -- VSD







--GPIO (5 DOWNTO 2 ) <= "1111" when (Hcount >= squareLeft) and (Hcount <= (squareLeft+squareWidth)) and (Vcount >= squareTop) and (Vcount <= (squareTop+squareHeight)) and  (imageDataCurrent(imageDataX) = '1') else -- (conv_std_logic_vector(imageDataX, 5)(0) = '1')
--		 "1111" when (Hcount >= 0) and (Hcount < 266) else 
--		 "0000"; -- RED
--GPIO(35 DOWNTO 32) <= "1111" when (Hcount >= squareLeft) and (Hcount <= (squareLeft+squareWidth)) and (Vcount >= squareTop) and (Vcount <= (squareTop+squareHeight)) and (imageDataCurrent(imageDataX) = '1') else
--		   "1111" when (Hcount >= 266) and (Hcount < 5	) else
--		   "0000";	-- GREEN 
--GPIO(31 DOWNTO 28) <= "1111" when (Hcount >= squareLeft) and (Hcount <= (squareLeft+squareWidth)) and (Vcount >= squareTop) and (Vcount <= (squareTop+squareHeight)) and (imageDataCurrent(imageDataX) = '1') else
--		  "1111" when (Hcount >= 5	) and (Hcount < 800) else
--		  "0000"; -- BLUE
		  
--imageDataCurrent <= imageData(imageDataY);
--imageDataX <= to_integer(unsigned((Hcount-squareLeft)));
--imageDataY <= to_integer(unsigned((Vcount-squareTop)));

GPIO(35 DOWNTO 32) <= "0000";
GPIO(31 DOWNTO 28) <= "0000";
GPIO(5 DOWNTO 2) <= "1111";


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
	
	
	
--	HSync: process(PixelClock)
--	begin
--		if falling_edge(PixelClock) then
--			if (Hcount <= 1) then
--				GPIO(1) <= '0';
--			else
--				GPIO(1) <= '1';
--			end if;
--		end if;
--	end process;
--	
--	VSync: process(PixelClock)
--	begin
--		if falling_edge(PixelClock) then
--			if (Vcount <= 3) then
--				GPIO(0) <= '0';
--			else
--				GPIO(0) <= '1';
--			end if;
--		end if;
--	end process;
--	
	
		
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

