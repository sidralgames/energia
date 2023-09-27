/// @description Insert description here
// You can write your code in this editor
if (global.shields<1)
{
	if (tocado = false)
	{
		gamepad_set_vibration(0,0.3,0.3);
		alarm[4] = 10;
		audio_play_sound_on(global.audioEmitter, snd_hit, false, 50)
		alarm[1] = 30
		tocado = true;
		global.hp -=1;
		screenShake(4,30)
		other._hp = 0;
		global.hitsTaken+=1;
	}
}





