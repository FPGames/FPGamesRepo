/// @description Changing image blend for hovering
if (position_meeting(mouse_x, mouse_y, o_VideoButton)) or (o_Options.optionSelect_cursor == 1)
{
	image_blend = c_yellow;
	o_Options.optionSelect_cursor = 1;
}
else image_blend = -1;
if position_meeting(mouse_x, mouse_y, o_VideoButton) && mouse_check_button_pressed(mb_left)
{
	o_Options.optionSelect_mode = OPTIONS_SELECT.VIDEO;
	o_Options.videoMenuDelay = 0;
}
if (o_Options.optionSelect_cursor = 1) && (keyboard_check_pressed(vk_enter))
{
	o_Options.optionSelect_mode = OPTIONS_SELECT.VIDEO;
	o_Options.videoMenuDelay = 0;
}