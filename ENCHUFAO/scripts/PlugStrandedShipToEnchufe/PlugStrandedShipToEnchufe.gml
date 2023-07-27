// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlugStrandedShipToEnchufe()
{
	gamepad_set_vibration(0,0.2,0.2);
	alarm[4] = 10;
	
	audio_play_sound_on(global.audioEmitter,choose(snd_plugged, snd_plugged_2, snd_plugged_3),false, 50);
	
	
	global.pluggingStrandedShipToEnchufe = true;
	pluggedShip = false;
	instance_destroy(o_cableStrandedShipFake);
	instance_destroy(ship);
	o_cable.pluggedShip = false;
	global.unPluggingShip = true;
	//o_strandedShip.connected = false;
	instance_create_layer(o_strandedShip.x, o_strandedShip.y, "Enemies", o_cableStrandedShip);
}