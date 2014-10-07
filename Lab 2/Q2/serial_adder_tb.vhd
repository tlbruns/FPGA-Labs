library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity serial_adder_tb is
end serial_adder_tb;

architecture tb of serial_adder_tb is

  component counter32
    port (
      clk: in std_ulogic;
      ena: in std_ulogic;
      rst: in std_ulogic;
      q  : out std_ulogic_vector(31 downto 0));
  end component;
  
  component serial_adder_fsm is
   PORT(
      clk  : IN  STD_LOGIC; -- KEY0
      a    : IN  STD_LOGIC; -- SW16
		b    : IN  STD_LOGIC; -- SW17
      reset : IN   STD_LOGIC;  -- SW15
		fsm_state: OUT STD_LOGIC;
      s   : OUT  STD_LOGIC);
END component;

  
  signal clk: std_logic := '0';
  signal a: std_logic := '0';
  signal b: std_logic := '0';
  signal reset: std_logic := '0';
  signal fsm_state: std_logic; 
  signal s  : std_logic;
  TYPE STATE_TYPE IS (G, H); 
begin

  dut : serial_adder_fsm port map (
    clk => clk,
	 a => a,
	 b => b,
    reset => reset,
	 fsm_state => fsm_state,
    s => s); 
    
process
begin
  for i in 1 to 9 loop
    clk <= not clk;
    wait for 10 ps;
    clk <= not clk;
    wait for 10 ps;
    -- clock period = 10 ns
  end loop;
  wait;  -- simulation stops here
end process;

process
begin
a <= '0';
b <= '0';
wait for 30 ps;
a <= '0';
b <= '1';
wait for 20 ps;
a <= '1';
b <= '0';
wait for 20 ps;
a <= '1';
b <= '1';

wait for 20 ps;
a <= '1';
b <= '1';
wait for 20 ps;
a <= '0';
b <= '1';
wait for 20 ps;
a <= '1';
b <= '0';
wait for 20 ps;
a <= '0';
b <= '0';
wait for 20 ps;

end process;  
  
PROCESS
BEGIN
WAIT FOR 15 ps;
ASSERT (s = '0') -- if false issues report string
REPORT "Output incorrect at 15 ps"
SEVERITY NOTE;
ASSERT (fsm_state = '0') -- if false issues report string
REPORT "State incorrect at 15 ps"
SEVERITY NOTE;

WAIT FOR 30 ps;
ASSERT (s = '1') -- if false issues report string
REPORT "Output incorrect at 45 ps"
SEVERITY NOTE;
ASSERT (fsm_state = '0') -- if false issues report string
REPORT "State incorrect at 45 ps"
SEVERITY NOTE;

WAIT FOR 20 ps;
ASSERT (s = '1') -- if false issues report string
REPORT "Output incorrect at 65 ps"
SEVERITY NOTE;
ASSERT (fsm_state = '0') -- if false issues report string
REPORT "State incorrect at 65 ps"
SEVERITY NOTE;

WAIT FOR 20 ps;
ASSERT (s = '0') -- if false issues report string
REPORT "Output incorrect at 85 ps"
SEVERITY NOTE;
ASSERT (fsm_state = '1') -- if false issues report string
REPORT "State incorrect at 85 ps"
SEVERITY NOTE;

WAIT FOR 20 ps;
ASSERT (s = '1') -- if false issues report string
REPORT "Output incorrect at 105 ps"
SEVERITY NOTE;
ASSERT (fsm_state = '1') -- if false issues report string
REPORT "State incorrect at 105 ps"
SEVERITY NOTE;

WAIT FOR 20 ps;
ASSERT (s = '0') -- if false issues report string
REPORT "Output incorrect at 125 ps"
SEVERITY NOTE;
ASSERT (fsm_state = '1') -- if false issues report string
REPORT "State incorrect at 125 ps"
SEVERITY NOTE;

WAIT FOR 20 ps;
ASSERT (s = '0') -- if false issues report string
REPORT "Output incorrect at 145 ps"
SEVERITY NOTE;
ASSERT (fsm_state = '1') -- if false issues report string
REPORT "State incorrect at 145 ps"
SEVERITY NOTE;

WAIT FOR 20 ps;
ASSERT (s = '0') -- if false issues report string
REPORT "Output incorrect at 165 ps"
SEVERITY NOTE;
ASSERT (fsm_state = '0') -- if false issues report string
REPORT "State incorrect at 165 ps"
SEVERITY NOTE;

end process;
end tb;
