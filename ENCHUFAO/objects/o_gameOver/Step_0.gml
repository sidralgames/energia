
/// @description Insert description here
// You can write your code in this editor
if (alarm[0] <= 0)
{
	if (killedByCreated = false)
	{
		killedByCreated = true
		killedBy = instance_create_layer(x,y,"Pause", o_killedBy);
	}
	image_alpha+=0.05;

	if (image_alpha>=1)
	{
		image_alpha = 1;
		gamepad_set_vibration(0, 0, 0);
		if keyboard_check_pressed(ord("X")) || gamepad_button_check_pressed(0, gp_face1)
		{
			//room_instance_clear(Sala_0)
			SaveGame();
			game_restart();
		}
	}
}





