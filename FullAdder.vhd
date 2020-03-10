library ieee;
use ieee.std_logic_1164.all;


entity Full_adder is 
	port(A,B,C: in std_logic; S,Cout: out std_logic);
end entity Full_adder;

architecture equation of Full_adder is 
begin
	
	S <= (A xor B xor C);
	Cout<= ((A and B) or (B and C) or (A and C));
end equation;