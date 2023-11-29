// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function LowBatterySounds()
{
	if (global.energy <=80 && soundEnergy = false)
	{
		sounded = false
		soundEnergy = true
		audio_play_sound_on(global.audioEmitter, snd_battery, true, 90)
	}

	if (global.energy > 80) || (plugged == true)
	{
		sounded = false
		soundEnergy = false
		audio_stop_sound(snd_battery)
	}

	if (global.energy <= 0 && sounded = false)
	{
		audio_stop_sound(snd_battery)
		sounded = true;
		audio_play_sound_on(global.audioEmitter, snd_noBattery, false, 50)
	}

}