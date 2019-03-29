library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity spiDriver is 
port(
	dataIn :in std_logic_vector (7 downto 0);
	miso :in std_logic;
	dataOut :out std_logic_vector (7 downto 0);
	cs, sck, mosi, trigger :out std_logic
	);
	
architecture logic of spiDriver is
	type state_machine is
	(idle, start, bit7, bit6, bit5 bit4, bit3, bit2, bit1, bit0, stop);

begin
	process(clk)
	variable sm :state_machine;
		case sm is
			when idle =>
				
				sm := start;
			when start =>
				sm := bit7;
			when bit7 =>
				sm := bit6;
			when bit6 =>
				sm := bit5;
			when bit5 =>
				sm := bit4;
			when bit4 =>
				sm := bit3;
			when bit3 =>
				sm := bit2;
			when bit2 =>
				sm := bit1;
			when bit1 =>
				sm := bit0;
			when bit0 =>
				sm := stop;
			when stop =>
				sm := idle;
		end case;
	end process;
end logic;