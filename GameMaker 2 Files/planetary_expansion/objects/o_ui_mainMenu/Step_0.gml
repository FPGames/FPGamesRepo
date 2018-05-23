/// @description Changing image blend for hovering
if position_meeting(mouse_x, mouse_y, o_ui_mainMenu) image_blend = c_green;
else image_blend = -1;
if position_meeting(mouse_x, mouse_y, o_ui_mainMenu) && mouse_check_button_pressed(mb_left)
{
	room_goto(start_menu_rm)
}