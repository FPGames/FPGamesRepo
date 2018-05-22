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
optionSelect_mode = OPTIONS_SELECT.AUDIO;

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
playerControlsDisplay = 1;

// Video Setup
videoMenuDelay = 0;
