/// @description Mouse volume slider 
if (GlobalVariablesOptions.musicControl)
{
	if (!held)
	{
		image_xscale = 1.0;
		x = lerp(200,room_width-200,GlobalVariables.musicVolume)
		y = 308
		if (collision_point(mouse_x,mouse_y,object_index,false,false) != noone)
		{
			held = true;
		}
	}
	else
	{
		image_xscale = 0.7;
		x = clamp(mouse_x,200,room_width-200);
		with (GlobalVariablesOptions)
		{
			musicVolume = (other.x-200)/(room_width-400);
		}
		if (!mouse_check_button(mb_left)) held = false;
	}
}
image_yscale = image_xscale

