
/// @description Insert description here
// You can write your code in this editor
Controls_Input();

if (alarm[0] <= 0) && (killedby != -1)
{
	if (killedByCreated = false)
	{
		killedByText = instance_create_layer(x,y,"Pause", o_killedBy);
		killedByCreated = true;
	}
	image_alpha+=0.05;

	if (image_alpha>=1)
	{
		image_alpha = 1;
		gamepad_set_vibration(0, 0, 0);
		if (key_x)
		{
			//room_instance_clear(Sala_0)
			SaveGame();
			
			with(o_main)
			{
				FreeLightSurface();
				ActivateAndDestroy();
				instance_destroy();
			}
		}
	}
}





