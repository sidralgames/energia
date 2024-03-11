/// @description Insert description here
// You can write your code in this editor

_hp = 0;
if (global.shields > 0)
{
	audio_play_sound_on(global.audioEmitter, snd_shieldImpact, false, 50);
	global.shields-=1;
	global.shieldsUsed+=1;
	gamepad_set_vibration(0,0.1,0.1);
	if instance_exists(o_playerShip)
	{
		o_playerShip.alarm[4] = 5;
	}
}


