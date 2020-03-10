library ieee;
use ieee.std_logic_1164.all;

entity leftshift is
	port(
			X,Y: in std_logic_vector(7 downto 0);
			Z: out std_logic_vector(7 downto 0)
			);

end entity leftshift;

architecture logic of leftshift is 

	component leftshift1 is
		port (Y: in std_logic_vector(7 downto 0);
		S1: in std_logic;
		L1: out std_logic_vector(7 downto 0));
	end component;
	
	component leftshift2 is
		port (Y: in std_logic_vector(7 downto 0);
		S2: in std_logic;
		L2: out std_logic_vector(7 downto 0));
	end component;
	
	component leftshift4 is
		port (Y: in std_logic_vector(7 downto 0);
		S3: in std_logic;
		L3: out std_logic_vector(7 downto 0));
	end component;
	
	signal after1,after2,Ix:std_logic_vector(7 downto 0); 
	signal sum,x0,x1,x2:std_logic;

	
begin 
	sum <= (X(3) or X(4) or X(5) or X(6) or X(7));
	shift1: leftshift1 port map(Y=>Y,S1=>X(0), L1=>after1);
	shift2: leftshift2 port map(Y=>after1,S2=>X(1), L2=>after2);
	shift3: leftshift4 port map( Y=>after2, S3=>X(2),L3=>Ix);
	Z<="00000000" when sum = '1' else Ix;
end logic;