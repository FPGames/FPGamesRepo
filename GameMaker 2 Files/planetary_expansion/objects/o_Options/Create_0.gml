/// @description Variables
/// Menu setup
controlDevice = 0;
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
optionSelect_committed = -1;
optionSelect_control = true;
optionSelect_cursor = 3;

/// Option selecting setup. Options including Audio, Controls, Video and Back
// Audio Setup
audioSelect_control = false;
audioSelect_committed = -1;
audioSelect_cursor = -1;

// Audio/Music on or off and volume Slider setup
Off = "Off";
On = "On";
Track = "Cave";
volumeSlider1_control = false;
volumeSlider2_control = false;
audioBonusLeft = 0.01;
audioBonusRight = 0.01;
audioMinusLeftDelay = 0;
audioMinusRightDelay = 0;
audioMenuDelay = 0;

// Control Setup
controlMenuDelay = 0;
controlSelect_control = false;
playerControlsDisplay = 1;

// Video Setup
videoSelect_control = false;
videoMenuDelay = 0;
