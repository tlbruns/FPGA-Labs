-------------------------------------------------------------------------------
--
-- Project					: Inferred Memory 
-- File name				: ram_8_32.vhd
-- Title				    	: Inferred Memory
-- Description				: Implements a 32x8 RAM block using the DE2-115 board
-- Design library			: N/A
-- Analysis Dependency	: none
-- Simulator(s)			: ModelSim-Altera version 10.1d
-- Initialization	    	: none
-- Notes			
-------------------------------------------------------------------------------
-- Revisions
--			Date				Author				Revision		Comments
--     10/8/2012	M. Beccani T. Bruns		Rev A			None
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

ENTITY ram_infer IS
   PORT
   (
      clock: IN   std_logic;
      data:  IN   std_logic_vector (7 DOWNTO 0);
      write_address:  IN  INTEGER RANGE 0 TO 31;
      read_address:   IN   INTEGER RANGE  0 TO 31;
      we:    IN   std_logic;
      q:     OUT  std_logic_vector (7 DOWNTO 0)
   );
END ram_infer;

ARCHITECTURE rtl OF ram_infer IS
   TYPE mem IS ARRAY(0 TO 31) OF std_logic_vector(7 DOWNTO 0);
   SIGNAL ram_block : mem;
BEGIN
   PROCESS (clock)
   BEGIN
      IF (clock'event AND clock = '1') THEN
         IF (we = '1') THEN
            ram_block(write_address) <= data;
         END IF;
         q <= ram_block(read_address);
      END IF;
   END PROCESS;
END rtl;