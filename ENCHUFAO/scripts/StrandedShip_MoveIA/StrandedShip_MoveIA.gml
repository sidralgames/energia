// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StrandedShip_MoveIA()
{
	
	myCharger._hpush = 0;
	myCharger._vpush = 0;
	_hpush = 0;
	_vpush = 0;
	
	if (!connected)
	{
		if instance_exists(o_playerShip)
		{
			myPath = path_add();
			mp_grid_path(gridRoom1, myPath, x, y, o_playerShip.x ,o_playerShip.y, true);
	
			if !tile_meeting(x, y, "Tiles")
			{
				_hpush = 0;
				_vpush = 0;
				alarm[5] = 20;
					path_end();
					var a = point_direction(x, y, o_playerShip.x+diffX,  o_playerShip.y+diffY);
					direction += sign(dsin(a - direction)) * (2 * global.relativeSpeed);
					_angle = direction;
					speed = strandedSpeed * min(1, global.relativeSpeed+0.2);
			}
			else
			{
				if alarm[5] > 0
				{
				_hpush = 0;
				_vpush = 0;
				_speed = 1.5 * min(1, global.relativeSpeed+0.2);
				path_start(myPath,_speed ,path_action_continue, false)
				_angle = direction
				}
			}
		}	
	}
	else
	{
	speed = 0;
	path_end();
	}
}