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
	sprite_index = s_FullScreen;
}
if GlobalVariablesOptions.displayMode = 1
{
	sprite_index = s_Windowed;
}
if GlobalVariablesOptions.displayMode = 2
{
	sprite_index = s_WindowedFullscreen;
}
