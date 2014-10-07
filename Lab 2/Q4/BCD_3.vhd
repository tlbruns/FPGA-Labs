library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

----------------------------------------------------

entity BCD_3 is

port (
  clock:  in std_logic;
  rst:    in std_logic;
  enable:  in std_logic;
  q0:      out std_logic_vector(3 downto 0);
  q1:      out std_logic_vector(3 downto 0);
  q2:      out std_logic_vector(3 downto 0)
  );
  
end BCD_3; 

----------------------------------------------------

architecture behv of BCD_3 is           
  

  
begin
  process (clock, enable, rst)
  		variable count1: INTEGER RANGE 0 TO 10;
		variable count2: INTEGER RANGE 0 TO 10;
		variable count3: INTEGER RANGE 0 TO 10;
  begin
    if (clock='1' and clock'event) then
		 if rst = '1' then 
		  q0 <= (others => '0');
		  q1 <= (others => '0');
		  q2 <= (others => '0');
		  count1 := 0;
		  count2 := 0;
		  count3 := 0;
		 elsif enable  = '1' then 
		 count1 := count1 + 1;
			if count1 = 10  then count1 := 0; count2 := count2 + 1;
			end if;
			if count2 = 10  then count1 := 0; count2 := 0; count3 := count3 + 1;
			end if;
			if count3 = 10 then count1 := 0; count2 := 0; count3 := 0; 
			end if;
		 end if;
	 end if;
   
	case count1 is  
   when 0 =>  q0 <= "0000";
	when 1 =>  q0 <= "0001";
	when 2 =>  q0 <= "0010";
	when 3 =>  q0 <= "0011";
	when 4 =>  q0 <= "0100";
	when 5 =>  q0 <= "0101";
	when 6 =>  q0 <= "0110";
	when 7 =>  q0 <= "0111";
	when 8 =>  q0 <= "1000";
	when 9 =>  q0 <= "1001";
   when others =>  q0 <= "0000";
	end case; 
	
	case count2 is  
   when 0 =>  q1 <= "0000";
	when 1 =>  q1 <= "0001";
	when 2 =>  q1 <= "0010";
	when 3 =>  q1 <= "0011";
	when 4 =>  q1 <= "0100";
	when 5 =>  q1 <= "0101";
	when 6 =>  q1 <= "0110";
	when 7 =>  q1 <= "0111";
	when 8 =>  q1 <= "1000";
	when 9 =>  q1 <= "1001";
   when others =>  q1 <= "0000";
	end case; 
	
		case count3 is  
   when 0 =>  q2 <= "0000";
	when 1 =>  q2 <= "0001";
	when 2 =>  q2 <= "0010";
	when 3 =>  q2 <= "0011";
	when 4 =>  q2 <= "0100";
	when 5 =>  q2 <= "0101";
	when 6 =>  q2 <= "0110";
	when 7 =>  q2 <= "0111";
	when 8 =>  q2 <= "1000";
	when 9 =>  q2 <= "1001";
   when others =>  q2 <= "0000";
	end case; 
	
	end process;  
	   -- CONCURRENT ASSIGNMENTS 
end behv;
