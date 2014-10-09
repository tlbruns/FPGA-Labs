-------------------------------------------------------------------------------
--
-- Project name			: Reg_8
-- File name				: Reg_8.vhd
-- Title						: generic 8-bit register
-- Description				: adaptable register that can be specified to
--								: store any number of bits
-- Design library			: N/A
-- Analysis Dependency	: N/A
-- Initialization			: N/A
-- Simulator(s)			: ModelSim-Altera Starter Edition version 10.1d
-- Notes						: Set number of bits using the n value in 'generic'
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

entity Reg_5 is
generic ( n : integer := 5);
port( clk: in std_logic; 
      rst: in std_logic; 
      d_in: in std_logic_vector(n-1 downto 0); 
      d_out: out std_logic_vector(n-1 downto 0) );
end Reg_5;

architecture behavioral of Reg_5 is
begin
process(clk,rst,d_in)
begin
if (clk'event and clk = '1') then 
 if rst = '1' then d_out <= (Others => '0'); 
 else d_out <= d_in; 
 end if; 
end if;

end process; 
end behavioral; 