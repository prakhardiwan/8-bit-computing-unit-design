library ieee;
use ieee.std_logic_1164.all;

entity adder is
	port(
			X,Y: in std_logic_vector(7 downto 0);
			Z: out std_logic_vector(7 downto 0)
			);
end entity adder;

architecture logic of adder is 

	component Full_Adder is
		port( A,B,C: in std_logic; S,Cout: out std_logic);
	end component;
	signal carry:std_logic_vector(7 downto 0);

begin 
	fa0: Full_Adder port map(A=>X(0), B=>Y(0), C=>'0', S=>Z(0), Cout=>carry(0));
	fa1: Full_Adder port map(A=>X(1), B=>Y(1), C=>carry(0), S=>Z(1), Cout=>carry(1));
	fa2: Full_Adder port map(A=>X(2), B=>Y(2), C=>carry(1), S=>Z(2), Cout=>carry(2));
	fa3: Full_Adder port map(A=>X(3), B=>Y(3), C=>carry(2), S=>Z(3), Cout=>carry(3));
	fa4: Full_Adder port map(A=>X(4), B=>Y(4), C=>carry(3), S=>Z(4), Cout=>carry(4));
	fa5: Full_Adder port map(A=>X(5), B=>Y(5), C=>carry(4), S=>Z(5), Cout=>carry(5));
	fa6: Full_Adder port map(A=>X(6), B=>Y(6), C=>carry(5), S=>Z(6), Cout=>carry(6));
	fa7: Full_Adder port map(A=>X(7), B=>Y(7), C=>carry(6), S=>Z(7), Cout=>carry(7));

end logic;