// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PluggedToEnchufe()
{
	if alarm[4]>48
	{
		gamepad_set_vibration(0,0.05,0.05);
	}
	else if (tocado = false)
	{
		gamepad_set_vibration(0,0,0);
	}
	if alarm[4] <= 0
	{
		alarm[4] = 50;
	}
	pluggedTimer+=max(0.1, 0.38*global.overchargeTime);
		
	if (pluggedTimer >= 300)
	{	
		Unplug();
		o_charger.overcharged = true;
		o_charger.alarm[0] = 300;
	}
	
	if instance_exists(enchufe)
	{
		global.xToPlug = enchufe.x;
		global.yToPlug = enchufe.y;
	}
		
	part_particles_create(global.enchufe_sys, global.xToPlug+random_range(-18,18), global.yToPlug+random_range(-18,18), global.enchufePart , 10)
	
	if (point_distance(x,y,global.xToPlug,global.yToPlug) <= global.cableStat*40)
	{
		if (global.energy > 0)
		{
			MoveShip()
		}
	}
	else
	{
		dir = point_direction(x,y,global.xToPlug,global.yToPlug)
		_hpush = lengthdir_x(2,dir)
		_vpush = lengthdir_y(2,dir)
		alarm[5] = 20;
		enchufe._hpush -= lengthdir_x(0.1,dir)
		enchufe._vpush -= lengthdir_y(0.1,dir)
	}

	
	if (global.spriteShip = splayer_mp3)
	{
		if (global.bonusIsUpgraded)
		{
			global.amplifyPowerLaser = 3.5;
			global.amplifyPowerAmmo = 1;
		}
		else
		{
			global.amplifyPowerLaser = 2.5;
			global.amplifyPowerAmmo = 0.5;
		}
		
		if (partChanged = false)
		{
			instance_destroy(o_partBalaP)
			instance_create(-100,-100,o_partBalaP);
			partChanged = true;
		}
	}
			
	if (key_x) 
	{
		Unplug();
	}
}