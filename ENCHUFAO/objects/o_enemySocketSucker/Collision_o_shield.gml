/// @description Insert description here
// You can write your code in this editor
if (state = ENEMYSTATE.PLUGGED)
{
	state = ENEMYSTATE.FREE;
	enchufe.occupied = false;
	alarm[5] = 60;
}
else
{
	if (alarm[5] <= 0)
	{
		_hp = 0;
	}
	if (global.shields > 0)
	{
		global.shields-=1;
	}
	global.shieldsUsed+=1;
	gamepad_set_vibration(0,0.1,0.1);
	if instance_exists(o_playerShip)
	{
		o_playerShip.alarm[4] = 5;
	}
}

audio_play_sound_on(global.audioEmitter, snd_shieldImpact, false, 50);



