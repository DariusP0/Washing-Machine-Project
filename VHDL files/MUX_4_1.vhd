library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MUX_4_1 is
	port(C: in STd_logic; P: in STd_logic;
	Y: out STd_logic_vector(3 downto 0));
end entity;

architecture COMPORTAMENTAL of MUX_4_1 is
type TIMP is array(0 to 3) of STD_logic_vector(3 downto 0);
signal T: TIMP:= ("0100","0101","0101","0110");
signal S: Std_logic_vector(0 to 1);
begin							   
	S <= (P & C);
	process(S,T)
	begin
		case S is
			when "00" => Y <= T(0);
			when "01" => Y <= T(1);
			when "10" => Y <= T(2);
			when "11" => Y <= T(3);
			when others => Y <= "UUUU";
		end case;
	end process;
end architecture;