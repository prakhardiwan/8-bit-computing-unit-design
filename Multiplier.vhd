library ieee;
use ieee.std_logic_1164.all;

--library work;
--use work.Gates.all;

entity multiplier is
port (X: in std_logic_vector(7 downto 0);
		Y: in std_logic_vector(7 downto 0);
		Z: out std_logic_vector(7 downto 0));
end entity multiplier;

architecture Struct of multiplier is

signal i1,i2,i3,i4,i5,i6,i7,i8,j1,j2,j3,j4,j5,j6,j7,k1,k2,k3,k4,k5,k6 : std_logic_vector(7 downto 0);
	
component leftshift is
		port(X,Y: in std_logic_vector(7 downto 0);
			Z: out std_logic_vector(7 downto 0)
			);
end component leftshift;

component adder is
	port(X,Y: in std_logic_vector(7 downto 0);
		Z: out std_logic_vector(7 downto 0));
end component adder;

component MultiMux is
	port(X: in std_logic_vector(7 downto 0);
			S: in std_logic;
			Y: out std_logic_vector(7 downto 0));
end component MultiMux;

begin

p1:Multimux port map(X=>X,S=>Y(0),Y=>i1);
p2:Multimux port map(X=>X,S=>Y(1),Y=>i2);
s2:leftshift port map(Y=>i2,X=>"00000001",Z=>j1);

p3:Multimux port map(X=>X,S=>Y(2),Y=>i3);
s3:leftshift port map(Y=>i3,X=>"00000010",Z=>j2);

p4:Multimux port map(X=>X,S=>Y(3),Y=>i4);
s4:leftShift port map(Y=>i4,X=>"00000011",Z=>j3);

p5:Multimux port map(X=>X,S=>Y(4),Y=>i5);
s5:leftShift port map(Y=>i5,X=>"00000100",Z=>j4);

p6:Multimux port map(X=>X,S=>Y(5),Y=>i6);
s6:leftShift port map(Y=>i6,X=>"00000101",Z=>j5);

p7:Multimux port map(X=>X,S=>Y(6),Y=>i7);
s7:leftShift port map(Y=>i7,X=>"00000110",Z=>j6);

p8:Multimux port map(X=>X,S=>Y(7),Y=>i8);
s8:leftShift port map(Y=>i8,X=>"00000111",Z=>j7);

f1:adder port map(X=>i1,Y=>j1,Z=>k1);
f2:adder port map(X=>k1,Y=>j2,Z=>k2);
f3:adder port map(X=>k2,Y=>j3,Z=>k3);
f4:adder port map(X=>k3,Y=>j4,Z=>k4);
f5:adder port map(X=>k4,Y=>j5,Z=>k5);
f6:adder port map(X=>k5,Y=>j6,Z=>k6);
f7:adder port map(X=>k6,Y=>j7,Z=>Z);

end Struct;
