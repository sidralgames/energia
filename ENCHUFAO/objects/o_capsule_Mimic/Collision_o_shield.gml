/// @description Insert description here
// You can write your code in this editor
if (sprite_index = s_CapsuleBrain)
{
	_hp -= 2;
	global.shields-=1;
	audio_play_sound_on(global.audioEmitter, snd_shieldImpact, false, 50);
	global.shieldsUsed+=1;
	gamepad_set_vibration(0,0.1,0.1);
	if instance_exists(o_playerShip)
	{
		o_playerShip.alarm[4] = 5;
	}
}


