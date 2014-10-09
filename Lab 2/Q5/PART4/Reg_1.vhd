-------------------------------------------------------------------------------
--
-- Project name			: Reg_1
-- File name				: Reg_1.vhd
-- Title						: generic 1-bit register
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

entity Reg_1 is
port( clk: in std_logic; 
      rst: in std_logic; 
      d_in: in std_logic; 
      d_out: out std_logic);
end Reg_1;

architecture behavioral of Reg_1 is
begin
process(clk,rst,d_in)
begin
if (clk'event and clk = '1') then 
 if rst = '1' then d_out <=  '0'; 
 else d_out <= d_in; 
 end if; 
end if;

end process; 
end behavioral; 