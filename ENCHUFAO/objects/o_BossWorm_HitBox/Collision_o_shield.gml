/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (global.shields > 0)
{
	global.shields-=1;
	audio_play_sound_on(global.audioEmitter, snd_shieldImpact, false, 50);
	global.shieldsUsed+=1;
	gamepad_set_vibration(0,0.1,0.1);
	if instance_exists(o_playerShip)
	{
		o_playerShip.alarm[4] = 5;
	}
}





