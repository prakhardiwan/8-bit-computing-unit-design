library ieee;
use ieee.std_logic_1164.all;

entity rightshift2 is
port (Y: in std_logic_vector(7 downto 0);
		S2: in std_logic;
		R2: out std_logic_vector(7 downto 0));
end entity rightshift2;

architecture logic of rightshift2 is

begin
R2(7) <= '0' when S2='1' else Y(7);
R2(6) <= '0' when S2='1' else Y(6);
R2(5) <= Y(7) when S2='1' else Y(5);
R2(4) <= Y(6) when S2='1' else Y(4);
R2(3) <= Y(5) when S2='1' else Y(3);
R2(2) <= Y(4) when S2='1' else Y(2);
R2(1) <= Y(3) when S2='1' else Y(1);
R2(0) <= Y(2)when S2='1' else Y(0);
end logic;
