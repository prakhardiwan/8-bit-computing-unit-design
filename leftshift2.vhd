library ieee;
use ieee.std_logic_1164.all;



entity leftshift2 is
port (Y: in std_logic_vector(7 downto 0);
		S2: in std_logic;
		L2: out std_logic_vector(7 downto 0));
end entity leftshift2;

architecture logic of leftshift2 is

begin
L2(5) <= Y(3) when S2='1' else Y(5);
L2(4) <= Y(2) when S2='1' else Y(4);
L2(3) <= Y(1) when S2='1' else Y(3);
L2(2) <= Y(0) when S2='1' else Y(2);
L2(7) <= Y(5) when S2='1' else Y(7);
L2(6) <= Y(4) when S2='1' else Y(6);
L2(1) <= '0' when S2='1' else Y(1);
L2(0) <= '0' when S2='1' else Y(0);
end logic;