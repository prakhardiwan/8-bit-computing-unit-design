library ieee;
use ieee.std_logic_1164.all;

entity rightshift is
	port(
			X,Y: in std_logic_vector(7 downto 0);
			Z: out std_logic_vector(7 downto 0)
			);

end entity rightshift;

architecture logic of rightshift is 

	component rightshift1 is
		port (Y: in std_logic_vector(7 downto 0);
		S1: in std_logic;
		R1: out std_logic_vector(7 downto 0));
	end component;
	
	component rightshift2 is
		port (Y: in std_logic_vector(7 downto 0);
		S2: in std_logic;
		R2: out std_logic_vector(7 downto 0));
	end component;
	
	component rightshift4 is
		port (Y: in std_logic_vector(7 downto 0);
		S3: in std_logic;
		R3: out std_logic_vector(7 downto 0));
	end component;
	
	signal after1,after2,Iy:std_logic_vector(7 downto 0); 
	signal sum,x0,x1,x2:std_logic;
	
begin 
	sum<= X(3) or X(4) or X(5) or X(6) or X(7);
	shift1: rightshift1 port map(Y=>Y,S1=>X(0), R1=>after1);
	shift2: rightshift2 port map(Y=>after1, S2=>X(1), R2=>after2);
	shift3: rightshift4 port map( Y=>after2, S3=>X(2), R3=>Iy);
	Z<= "00000000" when sum = '1' else Iy;
	
end logic;