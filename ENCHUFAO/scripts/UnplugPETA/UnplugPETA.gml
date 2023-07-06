// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function UnplugPETA()
{
	o_enchufe_Father.enchufeActive = false;
	gamepad_set_vibration(0,0.15,0.15);
	o_playerShip.alarm[4] = 5;
	audio_play_sound(choose(snd_unPlugged, snd_unPlugged_2, snd_unPlugged_3),50,false)
	o_playerShip.plugged = false;
	o_cable.plugged = false;
	global.unPlugging = true;
	global.chargingAmmo = false;
	global.chargingHp = false;
	global.chargingShield = false;
	global.chargingEnergy = false;
	global.hp = round(global.hp)
	global.shields = round(global.shields)
	o_playerShip.pluggedFinal = false;
	
}