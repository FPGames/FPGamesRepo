/// @description draw options
/// Draw gui
draw_set_font(fMenu);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom)
for (var i = 0; i < optionSelect_items; i++;)
{
	var audio = optionSelect[3];
	var controls = optionSelect[2];
	var video = optionSelect[1];
	var back = optionSelect[0];
	if (optionSelect_cursor == 3)
	{
	    audio = string_insert(">", audio, 0);
		var cola = c_white;
	}
	else if(optionSelect_committed == 3)
	{
		var cola = c_black;
	}
	else if(optionSelect_cursor != 3) && (optionSelect_committed != 3)
	{
		var cola = make_color_rgb(137,137,137)
	}
	if (optionSelect_cursor == 2)
	{
	    controls = string_insert(">", controls, 0);
		var colc = c_white;
	}
	else if(optionSelect_committed == 2)
	{
		var cola = c_black;
	}
	else if(optionSelect_cursor != 2) && (optionSelect_committed != 2)
	{
		var colc = make_color_rgb(137,137,137)
	}
	if (optionSelect_cursor == 1)
	{
	    video = string_insert(">", video, 0);
		var colv = c_white;
	}
	else if(optionSelect_committed == 1)
	{
		var cola = c_black;
	}
	else if(optionSelect_cursor != 1) && (optionSelect_committed != 1)
	{
		var colv = make_color_rgb(137,137,137)
	}
	if (optionSelect_cursor == 0)
	{
	    back = string_insert(">", back, 0);
		var colb = c_white;
	}
	else if(optionSelect_committed == 0)
	{
		var cola = c_black;
	}
	else if(optionSelect_cursor != 0) && (optionSelect_committed != 0)
	{
		var colb = make_color_rgb(137,137,137)
	}
	var xx = optionSelect_x;
	var yya = optionSelect_y - (optionSelect_itemheight * (6));
	var yyc = optionSelect_y - (optionSelect_itemheight * (4));
	var yyv = optionSelect_y - (optionSelect_itemheight * (2));
	var yyb = optionSelect_y - (optionSelect_itemheight * (0));
	draw_text_colour(xx, yya, audio, cola, cola, cola, cola, 1);
	draw_text_colour(xx, yyc, controls, colc, colc, colc, colc, 1);
	draw_text_colour(xx, yyv, video, colv, colv, colv, colv, 1);
	draw_text_colour(xx, yyb, back, colb, colb, colb, colb, 1);
	
}

// drawing audio options
if (audioOptionsDraw == true)
{
	if (audioSelect_cursor == 4)
	{
		colMFN = c_white;
	}
}