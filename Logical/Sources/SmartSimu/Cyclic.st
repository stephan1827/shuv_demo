
PROGRAM _CYCLIC
	emtptyOEE := (100 - currentOEE);
	 
	// simulation of currentOEE
	// toggle between 75 and 76%
	
	IF seventyFive THEN
		currentOEE := 75;
	ELSE
		currentOEE := 76;
	END_IF
	seventyFive := NOT seventyFive;
	
	
	
END_PROGRAM
