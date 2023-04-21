
PROGRAM _CYCLIC

//*****************************************************************************//
//----------------------POLYLINE-----------------------------------------------//
//*****************************************************************************//

	// Call the function block for the polyline no. 1
	PLY_0();
	PLY_0.input_x			:= raw_values_x_axis_1;
	PLY_0.input_y			:= raw_values_y_axis_1;
	PLY_0.color				:= stroke_color_1;
	PLY_0.width				:= stroke_width_1;
	PLY_0.label		 		:= name_plolyline_1;
	PLY_0.scale_x			:= scale_value_x;
	PLY_0.scale_y			:= scale_value_y;
	PLY_0.label_x_pos		:= 680;
	PLY_0.label_y_pos		:= 56;
	PLY_0.grid_offset_left	:= 50.0;
	PLY_0.grid_size			:= 600.0;
	
	output_string_chart_graph_1	:= PLY_0.output;
	
	// Call the function block for the polyline no. 2
	PLY_1();
	PLY_1.input_x			:= raw_values_x_axis_2;
	PLY_1.input_y			:= raw_values_y_axis_2;
	PLY_1.color				:= stroke_color_2;
	PLY_1.width				:= stroke_width_2;
	PLY_1.label			 	:= name_plolyline_2;
	PLY_1.scale_x			:= scale_value_x;
	PLY_1.scale_y			:= scale_value_y;
	PLY_1.label_x_pos		:= 680;
	PLY_1.label_y_pos		:= 90;
	PLY_1.grid_offset_left	:= 50.0;
	PLY_1.grid_size			:= 600.0;
	
	output_string_chart_graph_2	:= PLY_1.output;
	
	// Call the function block for the polyline no. xx
	(*
	PLY_x();
	PLY_x.input_x			:= xx;
	PLY_x.input_y			:= xx;
	PLY_x.color				:= xx;
	PLY_x.width				:= xx;
	PLY_x.label		 		:= xx;
	PLY_x.scale_x			:= xx;
	PLY_x.scale_y			:= xx;
	PLY_x.label_x_pos		:= xx;
	PLY_x.label_y_pos		:= xx;
	PLY_0.grid_offset_left	:= xx;
	PLY_0.grid_size			:= xx;
	
	xx					:= PLY_x.output;
	*)

//*****************************************************************************//
//----------------------Label--------------------------------------------------//
//*****************************************************************************//
	
// Check which scale is selected and set the value for the coordinate calculation and chose the right scale label
	// Make the selection for the x axis
	IF axis_scale_x = 0 THEN
		scale_value_x	:= 1000.0;
	ELSIF axis_scale_x = 1 THEN
		scale_value_x	:= 100.0;
	ELSIF axis_scale_x = 2 THEN
		scale_value_x	:= 10.0;
	ELSIF axis_scale_x = 3 THEN
		scale_value_x	:= 1.0;
	ELSIF axis_scale_x = 4 THEN
		scale_value_x	:= 0.1;
	END_IF;
	
	// Set the label for the X axis
	label[4]		:= REAL_TO_STRING(1/scale_value_x);
	brsstrcat(ADR(label[4]), ADR(unit_x_axis));
	label[5]		:= REAL_TO_STRING((1/scale_value_x)*10);
	brsstrcat(ADR(label[5]), ADR(unit_x_axis));
	label[6]		:= REAL_TO_STRING((1/scale_value_x)*100);
	brsstrcat(ADR(label[6]), ADR(unit_x_axis));
	label[7]		:= REAL_TO_STRING((1/scale_value_x)*1000);
	brsstrcat(ADR(label[7]), ADR(unit_x_axis));
	
	// Make the selection for the Y axis
	IF axis_scale_y = 0 THEN
		scale_value_y	:= 1000.0;
	ELSIF axis_scale_y = 1 THEN
		scale_value_y	:= 100.0;
	ELSIF axis_scale_y = 2 THEN
		scale_value_y	:= 10.0;
	ELSIF axis_scale_y = 3 THEN
		scale_value_y	:= 1.0;
	ELSIF axis_scale_y = 4 THEN
		scale_value_y	:= 0.1;
	END_IF;
	
	// Set the label for the Y axis
	label[3]		:= REAL_TO_STRING(1/scale_value_y);
	brsstrcat(ADR(label[3]), ADR(unit_y_axis));
	label[2]		:= REAL_TO_STRING((1/scale_value_y)*10);
	brsstrcat(ADR(label[2]), ADR(unit_y_axis));
	label[1]		:= REAL_TO_STRING((1/scale_value_y)*100);
	brsstrcat(ADR(label[1]), ADR(unit_y_axis));
	label[0]		:= REAL_TO_STRING((1/scale_value_y)*1000);
	brsstrcat(ADR(label[0]), ADR(unit_y_axis));
	
// This code generates the string to add the labels for the x,y axis and for the polyline
	// Set the string empty
	output_string_label	:= '';
	
	// Labels for the Y and X axis
	FOR cnt1 := 0 TO 7 BY 1 DO
		// X position of each label
		brsstrcat(ADR(output_string_label), ADR('<text x="'));
		brsstrcat(ADR(output_string_label), ADR(label_x_pos[cnt1]));
		// Y position of each label
		brsstrcat(ADR(output_string_label), ADR('" y="'));
		brsstrcat(ADR(output_string_label), ADR(label_y_pos[cnt1]));
		// Content of each label
		brsstrcat(ADR(output_string_label), ADR('" fill="black">'));
		brsstrcat(ADR(output_string_label), ADR(label[cnt1]));
		brsstrcat(ADR(output_string_label), ADR('</text>'));
	END_FOR;
	
	IF cnt1=7 THEN
		cnt1	:= 0;
	END_IF;
	
//*****************************************************************************//
//----------------------FINAL OUTPUT STRING------------------------------------//
//*****************************************************************************//
	// Clear the string
	output_string_chart	:= '';
	// Add the string for the polyline graph
	brsstrcat(ADR(output_string_chart), ADR(output_string_chart_graph_1));
	IF show_graph_2 THEN
		brsstrcat(ADR(output_string_chart), ADR(output_string_chart_graph_2));
	END_IF;
	// brsstrcat(ADR(output_string_chart), ADR(future graph)); -> add here the name of the second graph from the polyline section above.
	
	// Add the string for the labels
	brsstrcat(ADR(output_string_chart), ADR(output_string_label));
	
END_PROGRAM
