
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

----------------------------------------------------

entity counter_785tick is

	generic (
	  width: natural := 26;
	  max_count: natural := 1000000     -- 50 MHz / 1 Hz
	);
	port (
	  clock:  in std_logic;
	  rst:    in std_logic;
	  count_enable:  in std_logic;
	  Q:      out std_logic
	);
end counter_785tick;

----------------------------------------------------

architecture behv of counter_785tick is           

	signal prescaler: std_logic_vector(width-1 downto 0);
	signal pre_Q : std_logic;

	begin

	  process (clock, count_enable, rst)
	  
	  begin
		 if (clock='1' and clock'event) then
			 if rst = '1' then
				prescaler <= (others => '0');
				pre_Q <= '0';
			 elsif count_enable = '1' then 
				  if prescaler = max_count then
					 prescaler <= (others => '0');
					 pre_Q <= '1';
				  else
					 prescaler <= prescaler + 1;
					 pre_Q <= '0';
				  end if;
			 end if;
		 end if; 
	  end process;    

		 -- CONCURRENT ASSIGNMENTS 
		 Q <= pre_Q;

end behv;