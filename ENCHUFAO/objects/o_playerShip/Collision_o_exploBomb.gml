/// @description Insert description here
// You can write your code in this editor
if (other.damagePlayer == true)
{
	if (global.shields<1)
	{
		if (tocado = false)
		{
			gamepad_set_vibration(0,0.3,0.3);
			alarm[4] = 10;
			audio_play_sound_on(global.audioEmitter, snd_hit, false, 50)
			alarm[1] = 30
			tocado = true;
			global.hp -= 1 * global.damageReceived;
			screenShake(4,30);
			global.hitsTaken+=1;
		}
	}
	else
	{
		if (tocado = false)
		{
			gamepad_set_vibration(0,0.3,0.3);
			alarm[4] = 10;
			alarm[1] = 30
			tocado = true;
			global.shields-=1;
			screenShake(4,30);
			global.hitsTaken+=1;
		}
	}
}




