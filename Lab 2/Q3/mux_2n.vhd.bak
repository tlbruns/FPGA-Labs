library ieee;
use ieee.std_logic_1164.all;

entity mux_2n is
generic ( n : integer := 7);
port( 
      rst: in std_logic; 
		sel: in std_logic;
      d_in1: in std_logic_vector(n-1 downto 0); 
		d_in2: in std_logic_vector(n-1 downto 0); 
      d_out_m: out std_logic_vector(n-1 downto 0) );
		
end mux_2n;

architecture behavioral of mux_2n is
begin
process(rst,d_in1,d_in2,sel)
begin
 if rst = '1' then d_out_m <= (Others => '1');  
 elsif sel ='0' then d_out_m <= d_in1; 
 else d_out_m <= d_in2; 
end if;
end process; 
end behavioral; 


