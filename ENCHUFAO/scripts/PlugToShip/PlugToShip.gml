// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlugToShip()
{
	gamepad_set_vibration(0,0.2,0.2);
	alarm[4] = 10;
	
	audio_play_sound_on(global.audioEmitter,choose(snd_plugged, snd_plugged_2, snd_plugged_3),false, 50);
	
	pluggedShip = true;
	
	ship = instance_nearest(x,y,o_chargerStrandedShip);
	thisStrandedShip = ship.myShip;
	
	instance_destroy(thisStrandedShip.myCable);
	with (thisStrandedShip)
	{
		cableFake = instance_create_layer(x,y, "Enemies", o_cableStrandedShipFake);
	}
	//ship._hpush = thisStrandedShip._hpush;
	//ship._vpush = thisStrandedShip._vpush;
	global.pluggingShip = true;
	thisStrandedShip.connected = true;
	ship.connected = true;
	thisStrandedShip.connectedToEnchufe = false;
	thisStrandedShip.speed = 0;
	global.xToPlug = ship.x;
	global.yToPlug = ship.y;
}