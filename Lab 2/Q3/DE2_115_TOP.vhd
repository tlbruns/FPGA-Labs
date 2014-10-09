-------------------------------------------------------------------------------
--
-- Project name			: ticker_tape
-- File name				: DE2_115_TOP.vhd
-- Title						: DE2_115_TOP
-- Description				: Top-level entity to display a scrolling 'Hello'
--								: message using the 7-segment displays on the DE2-115 
--								: evaluation board
-- Design library			: N/A
-- Analysis Dependency	: N/A
-- Initialization			: N/A
-- Simulator(s)			: ModelSim-Altera Starter Edition version 10.1d
-- Notes						: include Debounce.vhd, Reg_n.vhd, and mux_2n.vhd
--
-------------------------------------------------------------------------------
--
-- Revisions
--		Date					Author				 Revision		Comments
--		10/8/2014	T. Bruns & M. Beccani		Rev A			Design creation
--
--			
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DE2_115_TOP is
	generic  (
	n : integer := 7
	);
	
	port (
    -- Clock
    CLOCK_50 	: in std_logic;                     -- 50 MHz

    -- Buttons and switches
    KEY : in std_logic_vector(3 downto 0);         -- Push buttons
    SW  : in std_logic_vector(17 downto 0);        -- DPDT switches

    -- LED displays
    HEX0 : out std_logic_vector(6 downto 0);       -- 7-segment display (active low)
    HEX1 : out std_logic_vector(6 downto 0);       -- 7-segment display (active low)
    HEX2 : out std_logic_vector(6 downto 0);       -- 7-segment display (active low)
    HEX3 : out std_logic_vector(6 downto 0);       -- 7-segment display (active low)
    HEX4 : out std_logic_vector(6 downto 0);       -- 7-segment display (active low)
    HEX5 : out std_logic_vector(6 downto 0);       -- 7-segment display (active low)
    HEX6 : out std_logic_vector(6 downto 0);       -- 7-segment display (active low)
    HEX7 : out std_logic_vector(6 downto 0)        -- 7-segment display (active low)
    );
  
end DE2_115_TOP;

architecture pipeline of DE2_115_TOP is

	COMPONENT Debounce is
		PORT(
		 CLK 	: in  STD_LOGIC;	-- 50 MHz input clock
		 x 	: in  STD_LOGIC;	-- Push button input
		 DBx 	: out STD_LOGIC	-- Debounced push button
		 );
	END COMPONENT;

	COMPONENT Reg_n IS
		PORT( 
		 clk	: in  std_logic; 
		 rst	: in  std_logic; 
		 d_in	: in  std_logic_vector(n-1 downto 0); 
		 d_out: out std_logic_vector(n-1 downto 0) 
		 );
	END COMPONENT;

	COMPONENT mux_2n IS
		PORT( 
		 rst		: in  std_logic; 
		 sel		: in  std_logic;
		 d_in1	: in  std_logic_vector(n-1 downto 0); 
		 d_in2	: in  std_logic_vector(n-1 downto 0); 
		 d_out_m	: out std_logic_vector(n-1 downto 0) 
		 );
	END COMPONENT;

	TYPE STATE_TYPE IS (s0, s1, s2, s3, s4, s5, s6, s7, s8); 
	SIGNAL current_state, next_state: STATE_TYPE;

	signal debounce_int:std_logic;
	signal sel_int: std_logic;

	signal mux_int:std_logic_vector(n-1 downto 0);
	signal ext_int:std_logic_vector(n-1 downto 0);

	signal d0_int:std_logic_vector(n-1 downto 0);
	signal d1_int:std_logic_vector(n-1 downto 0);
	signal d2_int:std_logic_vector(n-1 downto 0);
	signal d3_int:std_logic_vector(n-1 downto 0);
	signal d4_int:std_logic_vector(n-1 downto 0);
	signal d5_int:std_logic_vector(n-1 downto 0);
	signal d6_int:std_logic_vector(n-1 downto 0);
	signal d7_int:std_logic_vector(n-1 downto 0);


	BEGIN
	BUTTON : Debounce port map(CLOCK_50,KEY(0),debounce_int); 
	REG_1  : Reg_n port map (debounce_int,SW(0),mux_int,d0_int);
	REG_2  : Reg_n port map (debounce_int,SW(0),d0_int,d1_int);
	REG_3  : Reg_n port map (debounce_int,SW(0),d1_int,d2_int);
	REG_4  : Reg_n port map (debounce_int,SW(0),d2_int,d3_int);
	REG_5  : Reg_n port map (debounce_int,SW(0),d3_int,d4_int);
	REG_6  : Reg_n port map (debounce_int,SW(0),d4_int,d5_int);
	REG_7  : Reg_n port map (debounce_int,SW(0),d5_int,d6_int);
	REG_8  : Reg_n port map (debounce_int,SW(0),d6_int,d7_int);
	MUX_1   : Mux_2n port map (SW(0),sel_int,d7_int,ext_int,mux_int);


	PROCESS (current_state)
	BEGIN  			 
			CASE current_state IS
				WHEN s0=> 
				sel_int <= '1'; next_state <= s1; ext_int <= "0001001"; -- H
				WHEN s1=> 
				sel_int <= '1'; next_state <= s2; ext_int <= "0000110"; -- E
				WHEN s2=> 
				sel_int <= '1'; next_state <= s3; ext_int <= "1000111"; -- L 
				WHEN s3=> 
				sel_int <= '1'; next_state <= s4; ext_int <= "1000111"; -- L
				WHEN s4=>
				sel_int <= '1'; next_state <= s5; ext_int <= "1000000"; -- O
				WHEN s5=> 
				sel_int <= '1'; next_state <= s6; ext_int <= "0111111";  -- 
				WHEN s6=> 
				sel_int <= '1'; next_state <= s7; ext_int <= "0111111"; -- 
				WHEN s7=> 
				sel_int <= '1'; next_state <= s8; ext_int <= "0111111"; -- 
				WHEN s8=> 
				sel_int <= '0'; next_state <= s8; ext_int <= "0111111"; 
			END CASE;
			
	END PROCESS;
		
	PROCESS (debounce_int,SW(0))
		BEGIN
			IF (debounce_int'EVENT AND debounce_int ='1') THEN
				IF SW(0) = '1' THEN current_state <= s0; 
				ELSE current_state <= next_state; 
				END IF;			
			END IF;	
	END PROCESS;
		
	HEX0 <= d0_int; 	
	HEX1 <= d1_int;
	HEX2 <= d2_int;
	HEX3 <= d3_int;
	HEX4 <= d4_int;
	HEX5 <= d5_int;
	HEX6 <= d6_int;
	HEX7 <= d7_int;
	
END pipeline;

