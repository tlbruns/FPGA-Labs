library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity ramlpm_tb is
end ramlpm_tb;

architecture tb of ramlpm_tb is

  component ramlpm
    port (
		address		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
  end component;
  
  signal address:STD_LOGIC_VECTOR (4 DOWNTO 0) := "00000";
  signal clock: STD_LOGIC  := '1';
  signal data: STD_LOGIC_VECTOR (7 DOWNTO 0) := "00000001";
  signal wren: STD_LOGIC  := '0' ;
  signal q: STD_LOGIC_VECTOR (7 DOWNTO 0);

begin

  dut : ramlpm port map (
    address => address,
    clock => clock,
	  data => data,
    wren => wren,
    q => q
	 ); 
    
process
begin
  for i in 1 to 20 loop
    clock <= not clock;
    wait for 10 ps;
    clock <= not clock;
    wait for 10 ps;
  end loop;
end process;

process  -- Writes into the memory : data starts from 1 we increment data by 2 for each address data are changed 7 ps after clock rising edge
begin
wren <= '1'; 
wait for 20 ps;
for i in 1 to 32 loop
   wait for 20 ps; 
   address <= address + "00001";
	 data <= data + "00000010";
  end loop;
  
 wren <= '0'; 
 address <= "00000";
 data <= "00000001";
 
 for i in 1 to 32 loop
   wait for 20 ps; 
	 -- assert (q = data ) report ("Expected q = ") & 
	-- integer'image(to_integer(unsigned(( data  ))  )) &  " but q = " & 
	-- integer'image(to_integer(unsigned(( q  ))  )) severity ERROR;
	 
	address <= address + "00001";
	--data <= data + "00000010";
  end loop;
 
  
  
end process;


--  
--PROCESS
--BEGIN
--WAIT FOR 15 ps;
--ASSERT (s = '0') -- if false issues report string
--REPORT "Output incorrect at 15 ps"
--SEVERITY NOTE;
--ASSERT (fsm_state = '0') -- if false issues report string
--REPORT "State incorrect at 15 ps"
--SEVERITY NOTE;
--
--WAIT FOR 30 ps;
--ASSERT (s = '1') -- if false issues report string
--REPORT "Output incorrect at 45 ps"
--SEVERITY NOTE;
--ASSERT (fsm_state = '0') -- if false issues report string
--REPORT "State incorrect at 45 ps"
--SEVERITY NOTE;
--
--WAIT FOR 20 ps;
--ASSERT (s = '1') -- if false issues report string
--REPORT "Output incorrect at 65 ps"
--SEVERITY NOTE;
--ASSERT (fsm_state = '0') -- if false issues report string
--REPORT "State incorrect at 65 ps"
--SEVERITY NOTE;
--
--WAIT FOR 20 ps;
--ASSERT (s = '0') -- if false issues report string
--REPORT "Output incorrect at 85 ps"
--SEVERITY NOTE;
--ASSERT (fsm_state = '1') -- if false issues report string
--REPORT "State incorrect at 85 ps"
--SEVERITY NOTE;
--
--WAIT FOR 20 ps;
--ASSERT (s = '1') -- if false issues report string
--REPORT "Output incorrect at 105 ps"
--SEVERITY NOTE;
--ASSERT (fsm_state = '1') -- if false issues report string
--REPORT "State incorrect at 105 ps"
--SEVERITY NOTE;
--
--WAIT FOR 20 ps;
--ASSERT (s = '0') -- if false issues report string
--REPORT "Output incorrect at 125 ps"
--SEVERITY NOTE;
--ASSERT (fsm_state = '1') -- if false issues report string
--REPORT "State incorrect at 125 ps"
--SEVERITY NOTE;
--
--WAIT FOR 20 ps;
--ASSERT (s = '0') -- if false issues report string
--REPORT "Output incorrect at 145 ps"
--SEVERITY NOTE;
--ASSERT (fsm_state = '1') -- if false issues report string
--REPORT "State incorrect at 145 ps"
--SEVERITY NOTE;
--
--WAIT FOR 20 ps;
--ASSERT (s = '0') -- if false issues report string
--REPORT "Output incorrect at 165 ps"
--SEVERITY NOTE;
--ASSERT (fsm_state = '0') -- if false issues report string
--REPORT "State incorrect at 165 ps"
--SEVERITY NOTE;

--end process;
end tb;
