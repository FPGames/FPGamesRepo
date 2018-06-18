/// @description Changing image blend for hovering
if instance_exists(o_Options)
{
	if position_meeting(mouse_x, mouse_y, o_VideoButton)
	{
		image_blend = c_green;
	}
	else image_blend = -1;
	if position_meeting(mouse_x, mouse_y, o_VideoButton) && mouse_check_button_pressed(mb_left)
	{
		o_Options.optionSelect_mode = OPTIONS_SELECT.VIDEO;
		o_Options.videoMenuDelay = 0;
	}
}	