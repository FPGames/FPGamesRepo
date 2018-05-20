/// @description Changing image blend for hovering
if position_meeting(mouse_x, mouse_y, o_OffOnMusic) image_blend = c_yellow;
else image_blend = -1;
if position_meeting(mouse_x, mouse_y, o_OffOnMusic) && mouse_check_button_pressed(mb_left)
{
	if (GlobalVariablesOptions.musicPlay == true)
	{
		GlobalVariablesOptions.musicPlay = false;
	}
	else
	{
		GlobalVariablesOptions.musicPlay = true;
	}
}