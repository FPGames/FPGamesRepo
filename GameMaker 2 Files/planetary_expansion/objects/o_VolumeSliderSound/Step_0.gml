/// @description Mouse volume slider 
x = o_VolumeSliderBackgroundSound.xVolumeButtonSprite;
y = o_VolumeSliderBackgroundSound.y;
if position_meeting(mouse_x, mouse_y, o_VolumeSliderSound)
{
	image_index = 1;
}
else if !position_meeting(mouse_x, mouse_y, o_VolumeSliderSound)
{
	image_index = 0;
}