/// @description Insert description here
// You can write your code in this editor






// Inherit the parent event
event_inherited();
if instance_exists(o_playerShip)
{
if (charging) 
	//&& (o_playerShip.pluggedTimer < 200)
{
	


if (image_index <= 27)
{
	image_speed = 0.6;
}
else
{
	image_speed = 0;
}
	
}
else{
	if (image_index > 2)
{
	image_speed = -0.7;
}
else
{
	image_speed = 0;
}
	
}


if (charge >= 200)
{
	global.pluggedInEnergy = true;
}
}


//CheckBatteryToDraw(global.enchufeEnergyUpgradesList, global.enchufeEnergyUpgradesNum)
