
PROGRAM _CYCLIC
	(* Insert code here *)
	graphValue[2] := 60*SIN(value)+	70;
	
	
	IF i < 628 THEN
	
		i := i + 1;
			value := i * 0.1;
	ELSE
		i := 0;
	END_IF
	
	
	j := j + 1;
	IF j >49 THEN
		j := 0;
	END_IF
    
	chartValue[j] := chartValue[j] + 13;
	IF chartValue[j] >100 THEN
		chartValue[j] := 0;
	END_IF
	
	
	// graphValue to StackedBarChartItem
	// value of 200.0 as max to 0-10
	 tempGraphValue0 := REAL_TO_INT(graphValue[0]) / 20;
	 tempGraphValue1 := REAL_TO_INT(graphValue[1]) / 20;
	
	brsmemset(ADR(StackedBarChart[8]),0,10);
	brsmemset(ADR(StackedBarChart[9]),0,10);
	
	FOR  k := 1 TO tempGraphValue0 DO

		StackedBarChart[8].Items[k - 1] := 1;
	END_FOR;
	FOR  k := 1 TO tempGraphValue1 DO
		StackedBarChart[9].Items[k -1] := 1;
	END_FOR;

END_PROGRAM
