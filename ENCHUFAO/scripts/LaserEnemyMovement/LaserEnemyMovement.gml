// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function LaserEnemyMovement()
{
	if (global.haveInvisibiltyCloak && global.invisibleCloak == true) || (global.inSmokeArea = true)
	{
		path_end()
		var a = point_direction(x, y, x+diffX,y+diffY);
		direction += sign(dsin(a - direction)) * (precision * global.relativeSpeed);
		_angle = direction;
		if (alarm[10] <= 0)
		{
			speed = enemySpeed * min(1, global.relativeSpeed+0.2);
		}
		else
		{
			speed = enemySpeed
		}
		
		if (tile_meeting(x+hspeed,y,"Tiles"))
		{
		    hspeed = -hspeed*bnc;
		}
		else if (tile_meeting(x,y+vspeed,"Tiles"))
		{
		    vspeed = -vspeed*bnc;
		}
				
		
	}
	else
	{
		
		mp_grid_path(global.gridRoom1, myPath, x, y, o_playerShip.x ,o_playerShip.y, true);
	
		if tile_meeting(x + lengthdir_x(20, 1), y+ lengthdir_y(20, 1), "Tiles") ||
		tile_meeting(x + lengthdir_x(20, 90), y+ lengthdir_y(20, 90), "Tiles") ||
		tile_meeting(x + lengthdir_x(20, 180), y+ lengthdir_y(20, 180), "Tiles") ||
		tile_meeting(x + lengthdir_x(20, 270), y+ lengthdir_y(20, 270), "Tiles") || 
		tile_meeting(x, y, "Tiles")
		{
			if (alarm[10] <= 0)
			{
				_speed = enemySpeed * min(1, global.relativeSpeed+0.2);
			}
			else
			{
				_speed = enemySpeed;
			}
			path_start(myPath,_speed ,path_action_stop, false)
			_angle = direction;

		}
		else
		{
			path_end()
			var a = point_direction(x, y, o_playerShip.x+diffX,  o_playerShip.y+diffY);
			direction += sign(dsin(a - direction)) * (precision * global.relativeSpeed);
			_angle = direction;
			if (alarm[10] <= 0)
			{
				speed = enemySpeed * min(1, global.relativeSpeed+0.2);
			}
			else
			{
				speed = enemySpeed
			}
		}
	}
}