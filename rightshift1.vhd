library ieee;
use ieee.std_logic_1164.all;



entity rightshift1 is
port (Y: in std_logic_vector(7 downto 0);
		S1: in std_logic;
		R1: out std_logic_vector(7 downto 0));
end entity rightshift1;

architecture logic of rightshift1 is

begin
R1(7) <= '0' when S1='1' else Y(7);
R1(6) <= Y(7) when S1='1' else Y(6);
R1(5) <= Y(6) when S1='1' else Y(5);
R1(4) <= Y(5) when S1='1' else Y(4);
R1(3) <= Y(4) when S1='1' else Y(3);
R1(2) <= Y(3) when S1='1' else Y(2);
R1(1) <= Y(2) when S1='1' else Y(1);
R1(0) <= Y(1) when S1='1' else Y(0);
end logic;