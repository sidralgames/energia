/// @description Insert description here
// You can write your code in this editor
if (global.shields <= 0)
{
	if (tocado = false)
	{
		instance_destroy(other)
		audio_play_sound(snd_hit, 50, false)
		alarm[1] = 30
		tocado = true;
		global.hp -=1;
	}
}




