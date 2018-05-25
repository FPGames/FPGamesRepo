 /// @description Changing image blend for hovering
if position_meeting(mouse_x, mouse_y, o_FrameCap) image_blend = c_green;
else image_blend = -1;
if position_meeting(mouse_x, mouse_y, o_FrameCap) && mouse_check_button_pressed(mb_left)
{
	if (GlobalVariablesOptions.frameCap == true)
	{
		GlobalVariablesOptions.frameCap = false;
	}
	else
	{
		GlobalVariablesOptions.frameCap = true;
	}
}
if (GlobalVariablesOptions.frameCap = true)
{
	sprite_index = s_On;
}
else
{
	sprite_index = s_Off;
}