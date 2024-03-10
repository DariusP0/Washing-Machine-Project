library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MUX_16_1 is
	port(T00: in Std_logic; T01: in STd_logic; C: in STd_logic; P: in STd_logic;
	Y: out STd_logic_vector(3 downto 0));
end entity;

architecture COMPORTAMENTAL of MUX_16_1 is
type TIMP is array(0 to 15) of STD_logic_vector(3 downto 0);
signal T: TIMP:= ("0001","0001","0010","0011","0001","0010","0011","0101",
				"0001","0001","0010","0011","0001","0010","0011","0101");
signal S: Std_logic_vector(0 to 3);
begin							   
	S <= (C & P & T01 & T00);
	process(S,T)
	begin
		case S is
			when x"0" => Y <= T(0);
			when x"1" => Y <= T(1);
			when x"2" => Y <= T(2);
			when x"3" => Y <= T(3);
			when x"4" => Y <= T(4);
			when x"5" => Y <= T(5);
			when x"6" => Y <= T(6);
			when x"7" => Y <= T(7);
			when x"8" => Y <= T(8);
			when x"9" => Y <= T(9);
			when x"A" => Y <= T(10);
			when x"B" => Y <= T(11);
			when x"C" => Y <= T(12);
			when x"D" => Y <= T(13);
			when x"E" => Y <= T(14);
			when x"F" => Y <= T(15);
			when others => Y <= "UUUU";
		end case;
	end process;
end architecture;