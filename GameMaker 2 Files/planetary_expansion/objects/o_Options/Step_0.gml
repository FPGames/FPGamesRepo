/// @description create and draw the option menu
// option select +
switch (optionSelect_mode)
{
	case OPTIONS_SELECT.AUDIO:
	{
		sprite_index = s_AudioBackground;
		if (audioMenuDelay == 0)
		{
			instance_create_layer(0,0,"Volume_Slider", o_VolumeSliderMusic);
		    instance_create_layer(0,0,"Volume_Slider", o_VolumeSliderSound);
		    instance_create_layer(680,427,"Volume_Slider_Background", o_VolumeSliderBackgroundMusic);
		    instance_create_layer(680,708,"Volume_Slider_Background", o_VolumeSliderBackgroundSound);
			instance_create_layer(930,284,"ACV_Buttons",o_OffOnMusic);
			instance_create_layer(930,555,"ACV_Buttons",o_OffOnSound);
			audioMenuDelay = 1;
		}
		break;
	}
	case OPTIONS_SELECT.CONTROLS:
	{
		sprite_index = s_ControlsBackground;
		if (controlMenuDelay = 0)
		{
			controlMenuDelay = 1;
		}
		break;
	}
	case OPTIONS_SELECT.VIDEO:
	{
		sprite_index = s_VideoBackground;
		if (videoMenuDelay = 0)
		{
			instance_create_layer(930,288,"ACV_Buttons",o_DisplayWindow);
			instance_create_layer(930,708,"ACV_Buttons",o_FrameCap);
			videoMenuDelay = 1;
		}
		break;
	}
	case OPTIONS_SELECT.BACK:
	{
		GlobalVariablesOptions.mainMenuButtonsExist = true;
		GlobalVariablesOptions.addMMButtondelay = 0;
		GlobalVariablesOptions. optionsExist = false;
		break;
	}
}
if (optionSelect_mode != OPTIONS_SELECT.AUDIO)
{
	instance_destroy(o_VolumeSliderSound); 
	instance_destroy(o_VolumeSliderMusic); 
	instance_destroy(o_VolumeSliderBackgroundMusic); 
	instance_destroy(o_VolumeSliderBackgroundSound); 
	instance_destroy(o_OffOnMusic);
	instance_destroy(o_OffOnSound);
}
if (optionSelect_mode != OPTIONS_SELECT.VIDEO)
{
	instance_destroy(o_DisplayWindow);
	instance_destroy(o_FrameCap);
}
// music, sound and track checker
//if (GlobalVariablesOptions.musicPlay) {MOFN = On;}
//else if (!GlobalVariablesOptions.musicPlay) {MOFN = Off;}
//if (GlobalVariablesOptions.soundPlay) {SOFN = On;}
//else if (!GlobalVariablesOptions.soundPlay) {SOFN = Off;}
//if (GlobalVariablesOptions.musicTrack == 1) {Track = "Cave";}
//else if (GlobalVariablesOptions.musicTrack == 2) {Track = "Forest";}	