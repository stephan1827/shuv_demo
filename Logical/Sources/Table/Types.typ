
TYPE
	TableStruct : 	STRUCT 
		TimeStamp : ARRAY[0..19]OF STRING[80] := ['22:04:43','23:00:15',18('')];
		Message : ARRAY[0..19]OF WSTRING[256] := ["Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea tak","Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.",18("")];
		State : ARRAY[0..19]OF BOOL;
	END_STRUCT;
END_TYPE
