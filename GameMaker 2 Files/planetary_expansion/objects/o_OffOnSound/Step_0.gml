/// @description Changing image blend for hovering
if position_meeting(mouse_x, mouse_y, o_OffOnSound) image_blend = c_yellow;
else image_blend = -1;
if position_meeting(mouse_x, mouse_y, o_OffOnSound) && mouse_check_button_pressed(mb_left)
{
	if (GlobalVariablesOptions.soundPlay == true)
	{
		GlobalVariablesOptions.soundPlay = false;
	}
	else
	{
		GlobalVariablesOptions.soundPlay = true;
	}
}