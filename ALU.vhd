library ieee;
use ieee.std_logic_1164.all;

entity ALU is
	port(x : in  std_logic_vector (7 downto 0);y : in  std_logic_vector (7 downto 0); 

                    opcode : in  std_logic_vector(1 downto 0);  

                    o : out  std_logic_vector (7 downto 0) ); 

end entity ALU;

architecture logic of ALU is 

	component leftshift is
		port (X,Y: in std_logic_vector(7 downto 0);
			Z: out std_logic_vector(7 downto 0)
			);
	end component;
	
	component rightshift is
		port (X,Y: in std_logic_vector(7 downto 0);
			Z: out std_logic_vector(7 downto 0)
			);
	end component;
	
	component adder is
		port (X,Y: in std_logic_vector(7 downto 0);
			Z: out std_logic_vector(7 downto 0)
			);
	end component;
	
	component multiplier is
		port (X: in std_logic_vector(7 downto 0);
		Y: in std_logic_vector(7 downto 0);
		Z: out std_logic_vector(7 downto 0));
	end component;
	
	
	
	signal P,Q,R,S : std_logic_vector(7 downto 0);
	
	begin
			fa0: leftshift port map(X=>y, Y=>x, Z=>Q);
			fa1: rightshift port map(X=>y, Y=>x, Z=>R);
			fa2: adder port map(Y=>x, X=>y, Z=>P);
			fa3: multiplier port map(Y=>x, X=>y, Z=>S);
			o <= P when opcode="00" else 
				   Q when opcode="01" else 
				   R when opcode="10" else 
				   S when opcode="11" else 
				   "00000000";
end logic;