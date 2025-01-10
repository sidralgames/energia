/// @description Insert description here
// You can write your code in this editor






// Inherit the parent event
event_inherited();
if instance_exists(o_playerShip)
{
if (global.chargingEnergy) && (!global.pluggedInEnergy) && (charging) 
	//&& (o_playerShip.pluggedTimer < 200)
{
	if (charge <= 200)
	{
		charge+=1;
	}
}

if (charge >= 200)
{
	global.pluggedInEnergy = true;
	global.activatedEnergyRadar = true;
}
}


if (enchufeActive)
{
	image_speed = 0.5;
	if (image_index > 111)
	{
		image_index = 22
	}
}
else
{
	image_index = 0;
	image_speed = 0;
}




//CheckBatteryToDraw(global.enchufeEnergyUpgradesList, global.enchufeEnergyUpgradesNum)
