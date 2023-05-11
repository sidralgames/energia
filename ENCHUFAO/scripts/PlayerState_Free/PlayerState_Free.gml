// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Free()
{
	
	superShot = (key_r1Down && key_r2Down && key_l1Down && key_l2Down)
	
	
	
	//----------------SUPER SHOOT---------------//
	if (superShot) && (canSuperShot)
	{
		if (contSuperShot <=40)
		{
			contSuperShot +=1;
		}
		screenShake(contSuperShot/30, 30)
		if (contSuperShot = 20) && (crosshairSuper = false)
		{
			crosshairSuper = true;
		}
			
	}
	else
	{
		crosshairSuper = false;
		contSuperShot = 0;
	}
		
	
	mask_index = splayer;
	if (plugged == true)
	{
		part_particles_create(global.enchufe_sys, global.xToPlug+random_range(-18,18), global.yToPlug+random_range(-18,18), global.enchufePart , 10)
	
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
			audio_play_sound(choose(snd_unPlugged, snd_unPlugged_2, snd_unPlugged_3),50,false)
			plugged = false;
			o_cable.plugged = false;
			global.unPlugging = true;
			global.chargingAmmo = false;
			global.chargingHp = false;
			global.chargingShield = false;
			global.chargingEnergy = false;
			global.hp = round(global.hp)
			global.shields = round(global.shields)
			pluggedFinal = false;
			
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
}