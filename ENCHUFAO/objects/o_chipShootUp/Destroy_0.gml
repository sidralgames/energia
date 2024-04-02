/// @description Insert description here
// You can write your code in this editor

global.chipsLaserTot -=1;

global.ammoMod += 15;

if (global.ammoMod > 50)
{
	global.ammoMod = 50;	
}

event_inherited();



