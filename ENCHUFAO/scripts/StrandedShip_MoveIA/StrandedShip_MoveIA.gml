// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StrandedShip_MoveIA()
{
	if instance_exists(myCharger)
	{
		myCharger._hpush = 0;
		myCharger._vpush = 0;
	}
	
	_hpush = 0;
	_vpush = 0;
	
	if (!connected)
	{
		if instance_exists(o_playerShip)
		{
			if tile_meeting(x + lengthdir_x(20, 1), y+ lengthdir_y(20, 1), "Tiles") ||
			tile_meeting(x + lengthdir_x(20, 90), y+ lengthdir_y(20, 90), "Tiles") ||
			tile_meeting(x + lengthdir_x(20, 180), y+ lengthdir_y(20, 180), "Tiles") ||
			tile_meeting(x + lengthdir_x(20, 270), y+ lengthdir_y(20, 270), "Tiles") || 
			tile_meeting(x, y, "Tiles")
			{
				_speed = (strandedSpeed * 0.75) * min(1, global.relativeSpeed+0.2);
				path_start(myPath,_speed ,path_action_continue, false)
				_angle = direction
		
			}
			else
			{
				path_end();
				var a = point_direction(x, y, o_playerShip.x+diffX,  o_playerShip.y+diffY);
				direction += sign(dsin(a - direction)) * (strtandedPrecision * global.relativeSpeed);
				_angle = direction;
				speed = strandedSpeed * min(1, global.relativeSpeed+0.2);
			}
		}	
	}
	else
	{
		speed = 0;
		path_end();
	}
}