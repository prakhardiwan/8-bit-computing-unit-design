library ieee;
use ieee.std_logic_1164.all;

--library work;
--use work.Gates.all;

entity Multimux is
	port (X: in std_logic_vector(7 downto 0);
			S: in std_logic;
			Y: out std_logic_vector(7 downto 0));
end entity Multimux;

architecture logic of Multimux is

begin
Y(7) <= X(7) when S='1'  else '0';
Y(6) <= X(6) when S='1'  else '0';
Y(5) <= X(5) when S='1'  else '0';
Y(4) <= X(4) when S='1'  else '0';
Y(3) <= X(3) when S='1'  else '0';
Y(2) <= X(2) when S='1'  else '0';
Y(1) <= X(1) when S='1'  else '0';
Y(0) <= X(0) when S='1'  else '0';

end logic;