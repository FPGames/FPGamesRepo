/// @description Changing image blend for hovering
if position_meeting(mouse_x, mouse_y, o_QuitButton) image_blend = c_red;
else image_blend = -1;
if position_meeting(mouse_x, mouse_y, o_QuitButton) && mouse_check_button_pressed(mb_left)
{
	game_end()
}