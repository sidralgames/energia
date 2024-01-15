// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PluggedToEnchufe()
{
	if instance_exists(enchufe)
	{
		if (room != Sala_Tutorial)
		{
			if (enchufe.IsEnchufeBoss)
			{
				pluggedTimer+=max(0.15, 0.43*global.overchargeTime);
			}
			else
			{
				pluggedTimer+=max(0.1, 0.38*global.overchargeTime);
			}
		}
		else
		{
			pluggedTimer+=0.22*global.overchargeTime;
		}
	}
	
		
	if (pluggedTimer >= pluggedTimerMax)
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
	
	if (point_distance(x,y,global.xToPlug,global.yToPlug) <= global.cableStat*38)
	{
		if (global.energy > 0)
		{
			MoveShip()
		}
	}
	else
	{
		dir = point_direction(x,y,global.xToPlug,global.yToPlug)
		
		if (enchufe.isPETA_F)
		{
			_hpush = lengthdir_x(1,dir)
			_vpush = lengthdir_y(1,dir)
		
			enchufe._hpush -= lengthdir_x(0.18,dir)
			enchufe._vpush -= lengthdir_y(0.18,dir)
		}
		else if (enchufe.isMimic)
		{
			_hpush = lengthdir_x(2,dir)
			_vpush = lengthdir_y(2,dir)
		
			enchufe._hpush -= lengthdir_x(0.05,dir)
			enchufe._vpush -= lengthdir_y(0.05,dir)
		}
		else if (enchufe.IsEnchufeBoss)
		{
			_hpush = lengthdir_x(3.25,dir)
			_vpush = lengthdir_y(3.25,dir)
		
		}
		else
		{
			_hpush = lengthdir_x(2,dir)
			_vpush = lengthdir_y(2,dir)
		
			enchufe._hpush -= lengthdir_x(0.1,dir)
			enchufe._vpush -= lengthdir_y(0.1,dir)
		}
		
		
		alarm[5] = 20;
	}

	
	if (global.spriteShip = splayer_mp3)
	{
		if (global.bonusIsUpgraded)
		{
			global.amplifyPowerLaser = 2;
			global.amplifyPowerAmmo = 1;
		}
		else
		{
			global.amplifyPowerLaser = 1;
			global.amplifyPowerAmmo = 0.5;
		}
		
		if (partChanged = false)
		{
			instance_destroy(o_partBalaP)
			instance_create_layer(-100,-100, "Part",o_partBalaP);
			partChanged = true;
		}
	}
	
	if (o_cable.haveToUpdate)
	{
		if (point_distance(x,y,global.xToPlug, global.yToPlug) > 200)
		{
			Unplug();
		}
	}
			
	if (key_x) && (trapped == false)
	{
		Unplug();
	}
}