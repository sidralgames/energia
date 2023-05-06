// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Free()
{
	mask_index = splayer;
	if (plugged == true)
	{
		if (point_distance(x,y,global.xToPlug,global.yToPlug) <= 200)
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
		}
		
		if (key_x)
		{
			plugged = false;
			global.unPlugging = true;
			global.chargingAmmo = false;
			global.chargingHp = false;
			global.chargingShield = false;
			global.hp = round(global.hp)
			
		}
		
		
	}
	else
	{
		if (global.energy > 0)
			{
				MoveShip()	
			}
	}
	
	var axisrh = gamepad_axis_value(0, gp_axisrh);
	var axisrv = gamepad_axis_value(0, gp_axisrv);

	
	var direIm = point_direction(x, y, o_crosshair.x, o_crosshair.y)
	dire = direIm
	if abs(axisrh) > 0.3 || abs(axisrv) > 0.3
	{
		
	image_angle = direIm;
	dire = direIm;
	
	}
	else
	{
		direIm = image_angle;
		dire = direIm;
	}
	
	if (key_shoot)
	{
		if (alarm[0] <= 0) && (global.ammo >1 )
		{
			var bullet = instance_create_layer(x + lengthdir_x(15, dire), y + lengthdir_y(15, dire),
			"Bullets", o_bulletPlayer);
			global.ammo-=1;
				off =  random_range(offRange,-offRange)
				bullet._hpush = lengthdir_x(7, dire + off);
				bullet._vpush = lengthdir_y(7, dire + off);
				bullet.image_angle = dire+off;
				bullet.direction = dire+off;
				
				//recoil
				//_hpush = -lengthdir_x(recoil, dire+off);
				//_vpush = -lengthdir_y(recoil, dire+off);
				image_angle +=off
				alarm[0]=fireRate;
		}
	}
	
}