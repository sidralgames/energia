// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function UnplugFromShip()
{
	
	gamepad_set_vibration(0,0.15,0.15);
	alarm[4] = 5;
	audio_play_sound_on(global.audioEmitter,choose(snd_unPlugged, snd_unPlugged_2, snd_unPlugged_3),false,50)
	pluggedShip = false;
	plugged = false;
	o_cable.plugged = false;
	instance_destroy(o_cableStrandedShipFake);
	instance_destroy(ship);
	o_cable.pluggedShip = false;
	global.unPluggingShip = true;
	global.unPlugging = true;
	o_strandedShip.connected = false;
	instance_create_layer(o_strandedShip.x, o_strandedShip.y, "Enemies", o_cableStrandedShip);
}