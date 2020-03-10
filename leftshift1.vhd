library ieee;
use ieee.std_logic_1164.all;


entity leftshift1 is
port (Y: in std_logic_vector(7 downto 0);
		S1: in std_logic;
		L1: out std_logic_vector(7 downto 0));
end entity leftshift1;

architecture logic of leftshift1 is

begin
L1(6) <= Y(5) when S1='1' else Y(6);
L1(5) <= Y(4) when S1='1' else Y(5);
L1(4) <= Y(3) when S1='1' else Y(4);
L1(3) <= Y(2) when S1='1' else Y(3);
L1(2) <= Y(1) when S1='1' else Y(2);
L1(1) <= Y(0) when S1='1' else Y(1);
L1(0) <= '0'  when S1='1' else Y(0);
L1(7) <= Y(6) when S1='1' else Y(7);
end logic;