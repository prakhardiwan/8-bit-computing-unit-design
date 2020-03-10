library ieee;
use ieee.std_logic_1164.all;



entity rightshift4 is
port (Y: in std_logic_vector(7 downto 0);
		S3: in std_logic;
		R3: out std_logic_vector(7 downto 0));
end entity rightshift4;

architecture logic of rightshift4 is

begin
R3(0) <= Y(4) when S3='1' else Y(0);
R3(1) <= Y(5) when S3='1' else Y(1);
R3(2) <= Y(6) when S3='1' else Y(2);
R3(3) <= Y(7) when S3='1' else Y(3);
R3(7) <= '0' when S3='1' else Y(7);
R3(6) <= '0' when S3='1' else Y(6);
R3(5) <= '0' when S3='1' else Y(5);
R3(4) <= '0' when S3='1' else Y(4);
end logic;