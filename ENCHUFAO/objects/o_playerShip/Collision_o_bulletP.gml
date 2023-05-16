/// @description Insert description here
// You can write your code in this editor
	if (tocado = false)
	{
		gamepad_set_vibration(0,0.3,0.3);
		alarm[4] = 10;
		instance_destroy(other)
		audio_play_sound(snd_hit, 50, false)
		alarm[1] = 30
		tocado = true;
		global.hp -=1;
		screenShake(4,30)
	}





