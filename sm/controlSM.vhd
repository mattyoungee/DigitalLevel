entity controlSM is
port(

);

architecture logic of controlSM is
	type state_machine is
	(init, waitForTransmit, idle, getData);

	process()
	variable sm :state_machine;
	
	end process;
end logic;