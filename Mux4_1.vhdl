library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity mux4_1 is 
	port(  mux_in : in std_logic_vector(3 downto 0);
          mux_sel: in std_logic_vector(1 downto 0);
          mux_out : out std_logic );
end entity;

architecture equations of mux4_1 is
		signal s0_bar, s1_bar, zero, one, two, three,I0,I1,I2,I3,S1,S2 : std_logic ;


begin 

	inv1: Inverter
			port map( A=>mux_sel(0), Y=>s0_bar);
	inv2: Inverter
			port map( A=>mux_sel(1), Y=>s1_bar);
	and0: and_2 
			port map( A=>s1_bar, B=>s0_bar, Y=>zero);
	and1: and_2 
			port map( A=>s1_bar, B=>mux_sel(0), Y=>one);
	and2: and_2 
			port map( A=>mux_sel(1), B=>s0_bar, Y=>two);
	and3: and_2 
			port map( A=>mux_sel(1), B=>mux_sel(0), Y=>three);
	and4: and_2 
			port map( A=>zero, B=>mux_in(0), Y=>I0);
	and5: and_2 
			port map( A=>one, B=>mux_in(1), Y=>I1);
	and6: and_2 
			port map( A=>two, B=>mux_in(2), Y=>I2);
	and7: and_2 
			port map( A=>three, B=>mux_in(3), Y=>I3);
	sum1: or_2
			port map( A=>I0, B=>I1, Y=> S1);
	sum2: or_2
			port map( A=>I2, B=>I3, Y=> S2);
	sum3: or_2
			port map( A=>S1, B=>S2, Y=>mux_out);
	
end equations;
				 
				 
		