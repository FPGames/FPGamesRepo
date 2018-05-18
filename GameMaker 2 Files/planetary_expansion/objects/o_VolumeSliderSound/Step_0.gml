/// @description Temporary sound file
// You can write your code in this editor
if (oOption.audioSelect_cursor == 1)
{
	sprite_index = sVolumeSlider2;
}
else
{
	sprite_index = sVolumeSlider1;
}
if (GlobalVariables.soundVolume < 0)
{
	GlobalVariables.soundVolume = 0;
}
if (GlobalVariables.soundVolume > 1)
{
	GlobalVariables.soundVolume = 1;
}
x = (GlobalVariables.soundVolume*100*2)+952

