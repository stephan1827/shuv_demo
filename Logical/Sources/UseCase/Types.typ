
TYPE
	UnitType : 	STRUCT 
		Length : LengthUnitType;
		Temperature : TemperatureUnitType;
		Pressure : PressureUnitType;
	END_STRUCT;
	LengthUnitType : 	STRUCT 
		MIllimeter : WSTRING[80] := "{'metric':'MMT','imperial':'MMT','imperial-us':'MMT'}";
		Centimeter : WSTRING[80] := "{'metric':'CMT','imperial':'CMT','imperial-us':'CMT'}";
		Decimeter : WSTRING[80] := "{'metric':'DMT','imperial':'DMT','imperial-us':'DMT'}";
		Meter : WSTRING[80] := "{'metric':'MTR','imperial':'MTR','imperial-us':'MTR'}";
	END_STRUCT;
	PressureUnitType : 	STRUCT 
		Bar : WSTRING[80] := "{'metric':'BAR','imperial':'BAR','imperial-us':'BAR'}";
		PSI : WSTRING[80] := "{'metric':PS','imperial':'PS','imperial-us':'PS'}";
	END_STRUCT;
	TemperatureUnitType : 	STRUCT 
		Celsius : WSTRING[80] := "{'metric':'CEL','imperial':'CEL','imperial-us':'CEL'}";
		Fahrenheit : WSTRING[80] := "{'metric':'FAH','imperial':'FAH','imperial-us':'FAH'}";
		Kelvin : WSTRING[80] := "{'metric':'KEL','imperial':'KEL','imperial-us':'KEL'}";
	END_STRUCT;
END_TYPE
