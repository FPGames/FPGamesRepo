/// @description Changing image blend for hovering
if (position_meeting(mouse_x, mouse_y, o_AudioButton)) or (o_Options.optionSelect_cursor == 3)
{
	image_blend = c_yellow;
	o_Options.optionSelect_cursor = 3;
}
else image_blend = -1;
if position_meeting(mouse_x, mouse_y, o_AudioButton) && mouse_check_button_pressed(mb_left)
{
	o_Options.optionSelect_mode = OPTIONS_SELECT.AUDIO;
	o_Options.audioMenuDelay = 0;
}
if (o_Options.optionSelect_cursor = 3) && (keyboard_check_pressed(vk_enter))
{
	o_Options.optionSelect_mode = OPTIONS_SELECT.AUDIO;
	o_Options.audioMenuDelay = 0;
}