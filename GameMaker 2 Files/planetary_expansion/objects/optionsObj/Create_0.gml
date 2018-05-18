/// @description Variables
/// Menu setup
optionSelectBackground = 3;
enum OPTIONS_SELECT
{
	AUDIO,
	CONTROLS,
	VIDEO,
	BACK,
}
/// Option selecting setup. Options including Audio, Controls, Video and Back
optionSelect_control = true;
optionSelect_mode = OPTIONS_SELECT.AUDIO;
optionSelect_font = fMenu;
optionSelect_itemheight = font_get_size(fMenu);
optionSelect_committed = -1;
optionSelect_control = true;
optionSelect_x = 420;
optionSelect_y = 490;

optionSelect[3] = "Audio";
optionSelect[2] = "Controls";
optionSelect[1] = "Video";
optionSelect[0] = "Back";

optionSelect_items = array_length_1d(optionSelect);
optionSelect_cursor = 3;
/// Option selecting setup. Options including Audio, Controls, Video and Back
// Audio Setup
audioSelect_control = false;
audioSelect_font = fMenu;
audioSelect_itemheight = font_get_size(fMenu);
audioSelect_committed = -1;
audioSelect_x = 1100;
audioSelect_cursor = -1;

// Audio/Music on or off and volume Slider setup
Off = "Off";
On = "On";
Track = "Cave";
audioOptionsDraw = false;
colMFN = c_orange;
colSFN = c_orange;
colTrack = c_orange;
volumeSlider1_control = false;
volumeSlider2_control = false;
audioBonusLeft = 0.01;
audioBonusRight = 0.01;
audioMinusLeftDelay = 0;
audioMinusRightDelay = 0;
audioMenuDelay = 0;

// Control Setup
controlSelect_control = false;
controlOptionsDraw = false
col_up = c_orange;
col_down = c_orange;
col_left = c_orange;
col_right = c_orange;
col_shoot = c_orange;
col_aim = c_orange;
playerControlsDisplay = 1;

// Video Setup
videoSelect_control = false;
videoOptionsDraw = false;
