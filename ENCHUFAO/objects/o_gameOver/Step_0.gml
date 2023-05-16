/// @description Insert description here
// You can write your code in this editor
image_alpha+=0.05;

if (image_alpha>=1)
{
	gamepad_set_vibration(0, 0, 0);
	if keyboard_check_pressed(ord("X")) || gamepad_button_check_pressed(0, gp_face1)
	{
		game_restart();	
	}
}




