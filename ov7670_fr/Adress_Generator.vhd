
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Adress_Generator is
    Port ( 	CLK25,enable : in  	STD_LOGIC;								-- horloge de 25 MHz et signal d'activation respectivement
            vsync        : in  	STD_LOGIC;
				adress 		: inout STD_LOGIC_VECTOR (16 downto 0));	-- adresse généré
end Adress_Generator;

architecture Behavioral of Adress_Generator is
   signal val: STD_LOGIC_VECTOR(adress'range):= (others => '0');		-- signal intermidiaire
   constant Larg: integer :=160;													-- La largeur de l'image à afficher
   constant Haut: integer :=120;													-- Hauteur de l'image à afficher
   constant Taille_Memoire : integer := Larg * Haut;						-- la taille de l'image à affiché.
begin
	process(CLK25)
		begin
         if rising_edge(CLK25) then
            if (enable='1') then													-- si enable = 0 on arrete la génération d'adresses
					if (val < Taille_Memoire) then										-- si l'espace mémoire est balayé complétement				
                  val <= val + 1 ;
					end if;
				end if;
            if vsync = '0' then 
               val <= (others => '0');
            end if;
			end if;	
		end process;
adress <= val;																		-- adresse généré
end Behavioral;

