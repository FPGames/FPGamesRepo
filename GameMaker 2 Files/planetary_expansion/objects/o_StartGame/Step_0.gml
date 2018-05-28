/// @description Changing image blend for hovering
if position_meeting(mouse_x, mouse_y, o_StartGame) image_blend = c_yellow;
else image_blend = -1;
if position_meeting(mouse_x, mouse_y, o_StartGame) && mouse_check_button_pressed(mb_left)
{
	audio_stop_all()
	room_goto(dusty_depot_rm)
}