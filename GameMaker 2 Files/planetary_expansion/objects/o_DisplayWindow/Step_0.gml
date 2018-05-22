/// @description Changing image blend for hovering
if (position_meeting(mouse_x, mouse_y, o_DisplayWindow))
{
	image_blend = c_green;
}
else image_blend = -1;
if position_meeting(mouse_x, mouse_y, o_DisplayWindow) && mouse_check_button_pressed(mb_left)
{
	GlobalVariablesOptions.displayMode++
	if (GlobalVariablesOptions.displayMode > 2)
	{
		GlobalVariablesOptions.displayMode = 0;
	}
}
if GlobalVariablesOptions.displayMode = 0
{
	image_index = 0;
}
if GlobalVariablesOptions.displayMode = 1
{
	image_index = 1;
}
if GlobalVariablesOptions.displayMode = 2
{
	image_index = 2;
}