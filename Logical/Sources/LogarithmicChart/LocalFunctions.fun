
FUNCTION_BLOCK PLY (*Function Block to generate a Polyline within a SVG chart*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		grid_offset_left : REAL; (*Set the offset if the grid doesen't starts directly at the left side of the svg*)
		grid_size : REAL; (*Set the grid size in pixel, grid must be quadratic*)
		scale_y : REAL; (*Numeric value to scale the Y axis, 1= start at 1, 0.1 = start at 10, 1000 = start at 0.001*)
		scale_x : REAL; (*Numeric value to scale the X axis, 1= start at 1, 0.1 = start at 10, 1000 = start at 0.001*)
		label : STRING[15]; (*Legend text for the graph*)
		input_x : ARRAY[0..29] OF REAL; (*Input values for X axis*)
		input_y : ARRAY[0..29] OF REAL; (*Input values for Y axis*)
		color : STRING[15]; (*Input value for stroke color*)
		width : STRING[2]; (*Input value for stroke width*)
		label_y_pos : INT; (*Position of the graph label in Y direction*)
		label_x_pos : INT; (*Position of the graph label in X direction*)
	END_VAR
	VAR_OUTPUT
		output : STRING[800]; (*Output for the generated string*)
	END_VAR
	VAR
		coordinates_x : ARRAY[0..29] OF STRING[4]; (*Internal variable for X coordinates calculating*)
		coordinates_y : ARRAY[0..29] OF STRING[4]; (*Internal variable for Y coordinates calculting*)
		counter : INT; (*Internal counter*)
		var1 : STRING[4]; (*Internal variable for data converting*)
		var2 : STRING[4]; (*Internal variable for data converting*)
		var4 : STRING[4]; (*Internal variable for data converting*)
		var3 : STRING[4]; (*Internal variable for data converting*)
	END_VAR
END_FUNCTION_BLOCK
