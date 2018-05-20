/// @description Changing image blend for hovering
if (position_meeting(mouse_x, mouse_y, o_OptionBack)) or (o_Options.optionSelect_cursor == 0)
{
	image_blend = c_yellow;
	o_Options.optionSelect_cursor = 0;
}
else image_blend = -1;
if position_meeting(mouse_x, mouse_y, o_OptionBack) && mouse_check_button_pressed(mb_left)
{
	o_Options.optionSelect_mode = OPTIONS_SELECT.BACK;
}
if (o_Options.optionSelect_cursor = 0) && (keyboard_check_pressed(vk_enter))
{
	o_Options.optionSelect_mode = OPTIONS_SELECT.BACK;
}