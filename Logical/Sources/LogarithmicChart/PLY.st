

FUNCTION_BLOCK PLY

//*****************************************************************************//
//----------------------POLYLINE-----------------------------------------------//
//*****************************************************************************//

// The string Chart_Graph contains the polyline points which should be added to the logarithmic background grid of the chart.
	// First step is to add the start section to the output string. "Polyline" is the function for polylines as per SVG coding guidline.
	output	:= ' <polyline points=" ';
	
	// FOR statement to calculate the polyline points
	FOR counter := 0 TO 29 BY 1 DO
		// For all 30 current values the individual x cordinate will be calculated on a 600px grid, a 50px offset needs to be added as the background grid doesen't starts at 0px. 
		coordinates_x[counter]  := INT_TO_STRING(REAL_TO_INT(grid_offset_left+(((LOG(((input_x[counter])*scale_x)))*grid_size)/3))); 
		
		// For all 30 voltage values the individual y cordinate will be calculated on a 600px grid. Due to the fact that the Y axis starts at the bottom but the SVG cordinates are starting at the top the total hight of the chart must be subtracted.  
		coordinates_y[counter]  := INT_TO_STRING(REAL_TO_INT(grid_size-(((LOG((input_y[counter])*scale_y))*grid_size)/3))); 
	 
		// The following steps adds the 30 current and voltage cordinates to the output string.
		brsstrcat(ADR(output), ADR(coordinates_x[counter]));
		brsstrcat(ADR(output), ADR(','));
		brsstrcat(ADR(output), ADR(coordinates_y[counter]));
		brsstrcat(ADR(output), ADR(' '));
	END_FOR;
	
	// Reset the FOR statement after all 30 values have been calculated.
	IF counter=29 THEN
		counter := 0;
	END_IF;
	
// The polyline has three options to change it's design. But the option fill is not used, because it doesen't makes sense for the current project.
	// Color
	brsstrcat(ADR(output), ADR(' " stroke=" '));
	brsstrcat(ADR(output), ADR(color));
		
	// Stroke width
	brsstrcat(ADR(output), ADR(' " stroke-width=" '));
	brsstrcat(ADR(output), ADR(width));
	brsstrcat(ADR(output), ADR(' " fill="none" /> '));

// Marker for the legend to identify the text by a colored rectangle
	// Offset for X position
	brsstrcat(ADR(output), ADR('<rect x="'));
	var3	:= INT_TO_STRING(label_x_pos-15);
	brsstrcat(ADR(output), ADR(var3));
	// Offset for Y position
	brsstrcat(ADR(output), ADR('" y="'));
	var4	:= INT_TO_STRING(label_y_pos-5);
	brsstrcat(ADR(output), ADR(var4));
	// Set the width for the marker, same height as for the polyline itself
	brsstrcat(ADR(output), ADR('" width="14" height="'));
	brsstrcat(ADR(output), ADR(width));
	// Set the color for the marker, same color as for the polyline itself
	brsstrcat(ADR(output), ADR('" style="fill:'));
	brsstrcat(ADR(output), ADR(color));
	brsstrcat(ADR(output), ADR(';stroke-width:0;stroke:rgb(0,0,0)" />'));
	
// Legend text
	// Offset for X position
	brsstrcat(ADR(output), ADR('<text x="'));
	var2	:= INT_TO_STRING(label_x_pos);
	brsstrcat(ADR(output), ADR(var2));
	// Offset for Y position
	brsstrcat(ADR(output), ADR('" y="'));
	var1	:= INT_TO_STRING(label_y_pos);
	brsstrcat(ADR(output), ADR(var1));
	// Text
	brsstrcat(ADR(output), ADR('" fill="black">'));
	brsstrcat(ADR(output), ADR(label));
	brsstrcat(ADR(output), ADR('</text>'));
END_FUNCTION_BLOCK
