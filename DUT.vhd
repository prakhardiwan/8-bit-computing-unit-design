library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(17 downto 0);
           output_vector: out std_logic_vector ( 7 downto 0) );
end entity;

architecture DutWrap of DUT is 

   component ALU is 

        port ( x : in  std_logic_vector (7 downto 0);         y : in  std_logic_vector (7 downto 0); 

                    opcode : in  std_logic_vector(1 downto 0);  

                    o : out  std_logic_vector (7 downto 0) ); 

    end component ALU; 

begin  

   alu_instance: ALU  

           port map ( x => input_vector(15 downto 8),     y => input_vector(7 downto 0), 

                   opcode => input_vector(17 downto 16),  o => output_vector(7 downto 0) ); 

end DutWrap;
