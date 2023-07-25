// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PluggedToShip()
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
	
		
	global.xToPlug = ship.x;
	global.yToPlug = ship.y;
		
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
		ship._hpush -= lengthdir_x(0.1,dir)
		ship._vpush -= lengthdir_y(0.1,dir)
	}
	
	if (key_x) 
	{
		UnplugFromShip();
	}
}