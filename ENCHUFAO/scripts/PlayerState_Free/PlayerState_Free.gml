// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Free()
{
	mask_index = splayer;
	
	if (pluggedToStrandedShip == true)
	{
		PluggedToShip();
	}
	else if (plugged == true)
	{
		PluggedToEnchufe();
	}
	else
	{
		if (pluggedTimer >= 0)
		{
			pluggedTimer-=0.5;
		}
		if instance_exists(o_cable)
		{
			if (global.energy > 0) && (o_cable.bossWormConnection == false)
			{
				MoveShip();	
			}
			else
			{
				_hpush = clamp(_hpush, -spaceSpeed, spaceSpeed);
				_vpush = clamp(_vpush, -spaceSpeed, spaceSpeed);	
			}
		}
	}
	
	var axisrh = gamepad_axis_value(0, gp_axisrh);
	var axisrv = gamepad_axis_value(0, gp_axisrv);
	
	var direIm = point_direction(x, y, o_crosshair.x, o_crosshair.y);
	dire = direIm;
	
	if (abs(axisrh) > 0.4) || (abs(axisrv) > 0.4)
	{
		_angle = direIm;
		dire = direIm;
	}
	else
	{
		direIm = _angle;
		dire = direIm;
	}
}