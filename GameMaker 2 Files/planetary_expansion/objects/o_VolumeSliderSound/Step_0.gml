/// @description Temporary sound file
// You can write your code in this editor
if (o_Options.audioSelect_cursor == 1)
{
	sprite_index = s_VolumeSlider2;
}
else
{
	sprite_index = s_VolumeSlider1;
}
if (GlobalVariablesOptions.soundVolume < 0)
{
	GlobalVariablesOptions.soundVolume = 0;
}
if (GlobalVariablesOptions.soundVolume > 1)
{
	GlobalVariablesOptions.soundVolume = 1;
}
x = (GlobalVariablesOptions.soundVolume*100*2)+952

