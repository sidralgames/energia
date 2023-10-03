/// @description Insert description here
// You can write your code in this editor
if (shipReady)
{
	if (tocado = false)
	{
		instance_destroy(other)
		//audio_play_sound_on(global.audioEmitter, snd_hit, false, 50)
		alarm[7] = 30
		tocado = true;
		hp -= 1;
	
	}
}






