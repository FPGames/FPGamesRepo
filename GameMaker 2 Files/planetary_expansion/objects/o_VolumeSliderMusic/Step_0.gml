/// @description Mouse volume slider 
x = o_VolumeSliderBackgroundMusic.xVolumeButtonSprite;
y = o_VolumeSliderBackgroundMusic.y;
if position_meeting(mouse_x, mouse_y, o_VolumeSliderMusic)
{
	image_index = 1;
}
else if !position_meeting(mouse_x, mouse_y, o_VolumeSliderMusic)
{
	image_index = 0;
}