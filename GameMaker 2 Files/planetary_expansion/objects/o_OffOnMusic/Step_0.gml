/// @description Changing image blend for hovering
if position_meeting(mouse_x, mouse_y, o_OffOnMusic) image_blend = c_green;
else image_blend = -1;
if position_meeting(mouse_x, mouse_y, o_OffOnMusic) && mouse_check_button_pressed(mb_left)
{
	if (GlobalVariablesOptions.musicPlay == true)
	{
		GlobalVariablesOptions.musicPlay = false;
		GlobalVariablesOptions.musicFadeIn = false;
	}
	else
	{
		GlobalVariablesOptions.musicPlay = true;
		GlobalVariablesOptions.musicFadeIn = true;
		GlobalVariablesOptions.musicGainVolume = 0;
	}
}
if (GlobalVariablesOptions.musicPlay = true)
{
	sprite_index = s_On;
}
else
{
	sprite_index = s_Off;
}