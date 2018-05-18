/// @description keyboard check and pressed
//desc setup
// keyboard Controls
/// option selecting
if (optionSelect_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		optionSelect_cursor++;
		if (optionSelect_cursor >= optionSelect_items) optionSelect_cursor = 0;
	}
	if (keyboard_check_pressed(vk_down))
	{
		optionSelect_cursor--;
		if (optionSelect_cursor < 0) optionSelect_cursor = optionSelect_items-1;
	}
	if (keyboard_check_pressed(vk_enter))
	{
		optionSelect_committed = optionSelect_cursor;
		optionSelect_control = false;
		if (optionSelect_cursor == 3) {audioSelect_control = true;}
		if (optionSelect_cursor == 2) {controlSelect_control = true;}
		
	}
}
/// audio selecting
if (audioSelect_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		audioSelect_cursor++;
		if (audioSelect_cursor > 4) audioSelect_cursor = 0;
	}
	if (keyboard_check_pressed(vk_down))
	{
		audioSelect_cursor--;
		if (audioSelect_cursor < 0) audioSelect_cursor = 4;
	}
	if (keyboard_check_pressed(vk_left)) or (keyboard_check_pressed(vk_backspace))
	{
		audioSelect_control = false;
		optionSelect_control = true;
		audioSelect_cursor = -1;
		audioSelect_committed = -1;
		optionSelect_committed = -1;
	}
	if (keyboard_check_pressed(vk_enter))
	{
		audioSelect_committed = audioSelect_cursor;
		if (audioSelect_committed == 4) && (GlobalVariables.musicPlay)
		{
			GlobalVariables.musicPlay = false;
		}
		else if (audioSelect_committed == 4) && (!GlobalVariables.musicPlay)
		{
			GlobalVariables.musicPlay = true;
		}
		if (audioSelect_committed == 2) && (GlobalVariables.soundPlay)
		{
			GlobalVariables.soundPlay = false;
		}
		else if (audioSelect_committed == 2) && (!GlobalVariables.soundPlay)
		{
			GlobalVariables.soundPlay = true;
		}
		if (audioSelect_committed == 3)
		{
			audioSelect_control = false;
			volumeSlider1_control = true;
		}
		if (audioSelect_committed == 0) && (GlobalVariables.musicTrack == 1)
		{
			GlobalVariables.musicTrack = 2;
		}
		else if (audioSelect_committed == 0) && (GlobalVariables.musicTrack == 2)
		{
			GlobalVariables.musicTrack = 1;
		}
		if (audioSelect_committed == 1)
		{
			audioSelect_control = false;
			volumeSlider2_control = true;
		}
	}
}
/// music volume slider
if (volumeSlider1_control)
{
	if (keyboard_check(vk_left))
	{
		audioMinusRightDelay = 0;
		audioMinusLeftDelay++
		if (audioMinusLeftDelay = 1000) {audioBonusLeft = 0.03;}
		GlobalVariables.musicVolume = GlobalVariables.musicVolume - audioBonusLeft;
	}
	if (keyboard_check(vk_right))
	{
		audioMinusLeftDelay = 0;
		audioMinusRightDelay++
		if (audioMinusRightDelay = 1000) {audioBonusRight = 0.03;}
		GlobalVariables.musicVolume = GlobalVariables.musicVolume + audioBonusRight;
	}
	if (keyboard_check_pressed(vk_backspace))
	{
		audioMinusLeftDelay = 0;
		audioMinusRightDelay = 0;
		audioBonusLeft = 0.01;
		audioBonusRight = 0.01;
		volumeSlider1_control = false;
		audioSelect_control = true;
	}
	if (audioMinusLeftDelay == 0) {audioBonusLeft = 0.01;}
	if (audioMinusRightDelay == 0) {audioBonusRight = 0.01;}
}
/// sound volume slider
if (volumeSlider2_control)
{
	if (keyboard_check(vk_left))
	{
		audioMinusLeftDelay++
		if (audioMinusLeftDelay = 1000) {audioBonusLeft = 0.03;}
		GlobalVariables.soundVolume = GlobalVariables.soundVolume - audioBonusLeft;
	}
	if (keyboard_check(vk_right))
	{
		audioMinusLeftDelay = 0;
		audioMinusRightDelay++
		if (audioMinusRightDelay = 1000) {audioBonusRight = 0.03;}
		GlobalVariables.soundVolume = GlobalVariables.soundVolume + audioBonusRight;
	}
	if (keyboard_check(vk_backspace))
	{
		audioMinusLeftDelay = 0;
		audioMinusRightDelay = 0;
		audioBonusLeft = 0.01;
		audioBonusRight = 0.01;
		volumeSlider2_control = false;
		audioSelect_control = true;
	}
	if (audioMinusLeftDelay == 0) {audioBonusLeft = 0.01;}
	if (audioMinusRightDelay == 0) {audioBonusRight = 0.01;}
}
/// option select +
switch (optionSelect_mode)
{
	case OPTIONS_SELECT.AUDIO:
	{
		controlOptionsDraw = false;
		videoOptionsDraw = false;
		audioOptionsDraw = true;
		sprite_index = sAudioBackground;
		if (audioMenuDelay == 0)
		{
			instance_create_layer((GlobalVariables.musicVolume*100*2)+952,425,"VolumeSlider", oVolumeSliderMusic);
		    instance_create_layer((GlobalVariables.soundVolume*100*2)+952,545,"VolumeSlider", oVolumeSliderSound);
		    instance_create_layer(1052,425,"VolumeSliderBackground", oVolumeSliderBackground);
		    instance_create_layer(1052,545,"VolumeSliderBackground", oVolumeSliderBackground);
			audioMenuDelay = 1;
		}
		break;
	}
	case OPTIONS_SELECT.CONTROLS:
	{
		audioMenuDelay = 0;
		instance_destroy(oVolumeSliderSound); 
		instance_destroy(oVolumeSliderMusic); 
		instance_destroy(oVolumeSliderBackground); 
		audioOptionsDraw = false;
		videoOptionsDraw = false;
		controlOptionsDraw = true;
		sprite_index = sControlsBackground;
		controlSelect_control = true;
		break;
	}
	case OPTIONS_SELECT.VIDEO:
	{
		audioMenuDelay = 0;
		instance_destroy(oVolumeSliderSound); 
		instance_destroy(oVolumeSliderMusic); 
		instance_destroy(oVolumeSliderBackground); 
		audioOptionsDraw = false;
		controlOptionsDraw = false;
		videoOptionsDraw = true;
		//sprite_index = sVideoBackground;
		videoSelect_control = true;
		break;
	}
	case OPTIONS_SELECT.BACK:
	{
		audioMenuDelay = 0;
		audioOptionsDraw = false;
		instance_destroy(oOption); 
		instance_create_layer(400,400,"Menu", oMenu);
		break;
	}
}
if (optionSelect_committed != -1)
{
	switch (optionSelect_committed)
	{
		case 3: optionSelect_mode = OPTIONS_SELECT.AUDIO; break;
		case 2: optionSelect_mode = OPTIONS_SELECT.CONTROLS; break;
		case 1: optionSelect_mode = OPTIONS_SELECT.VIDEO; break;
		case 0: optionSelect_mode = OPTIONS_SELECT.BACK; break;
	}
}
else if (optionSelect_committed != 3)
{
	audioSelect_control = false;
}
if (optionSelect_cursor == 3) {optionSelect_mode = OPTIONS_SELECT.AUDIO;}
else if(optionSelect_cursor == 2) {optionSelect_mode = OPTIONS_SELECT.CONTROLS;}
else if(optionSelect_cursor == 1) {optionSelect_mode = OPTIONS_SELECT.VIDEO;}
// music, sound and track checker
//if (GlobalVariables.musicPlay) {MOFN = On;}
//else if (!GlobalVariables.musicPlay) {MOFN = Off;}
//if (GlobalVariables.soundPlay) {SOFN = On;}
//else if (!GlobalVariables.soundPlay) {SOFN = Off;}
if (GlobalVariables.musicTrack == 1) {Track = "Cave";}
else if (GlobalVariables.musicTrack == 2) {Track = "Forest";}
