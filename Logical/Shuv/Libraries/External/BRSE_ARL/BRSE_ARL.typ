
TYPE
	BRSE_ARL_ERR_enum : 
		(
		BRSE_ARL_ID_ALREADY_INITIALIZED := 58200,
		BRSE_ARL_ID_NOT_VALID,
		BRSE_ARL_BUFFER_FULL,
		BRSE_ARL_OUT_OF_MEMORY
		);
	BRSE_ARL_Arguments_typ : 	STRUCT 
		r : ARRAY[0..4]OF REAL;
		s : ARRAY[0..4]OF UDINT;
		b : ARRAY[0..4]OF BOOL;
		i : ARRAY[0..4]OF DINT;
	END_STRUCT;
END_TYPE
