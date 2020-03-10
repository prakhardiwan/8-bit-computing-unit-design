library ieee;
use ieee.std_logic_1164.all;



entity leftshift4 is
port (Y: in std_logic_vector(7 downto 0);
		S3: in std_logic;
		L3: out std_logic_vector(7 downto 0));
end entity leftshift4;

architecture logic of leftshift4 is

begin
L3(3) <= '0'  when S3='1' else Y(3);
L3(2) <= '0'  when S3='1' else Y(2);
L3(1) <= '0'  when S3='1' else Y(1);
L3(0) <= '0'  when S3='1' else Y(0);
L3(7) <= Y(3) when S3='1' else Y(7);
L3(6) <= Y(2) when S3='1' else Y(6);
L3(5) <= Y(1) when S3='1' else Y(5);
L3(4) <= Y(0) when S3='1' else Y(4);
end logic;