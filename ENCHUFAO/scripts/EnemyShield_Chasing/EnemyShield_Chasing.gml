// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyShield_Chasing()
{
	part_particles_create(global.naveEnemy_Waiting_sys, x-lengthdir_x(8,direction), y-lengthdir_y(8,direction), global.naveEnemy_Waiting , 1)

	if instance_exists(o_playerShip)
	{
		myPath = path_add();
		mp_grid_path(gridRoom1, myPath, x, y, o_playerShip.x ,o_playerShip.y, true);
	
		if !tile_meeting(x, y, "Tiles")
		{
			if (alarm[5] <= 0)
			{
			path_end()
			var a = point_direction(x, y, o_playerShip.x,  o_playerShip.y);
			direction += sign(dsin(a - direction)) * precision;
			image_angle = direction;
			speed = enemySpeed;	
			}
		}
		else
		{
			alarm[5] = 5;
			_speed = enemySpeed
			path_start(myPath,_speed ,path_action_stop, false)
			image_angle = direction
		}
	}

	if instance_exists(shield)
	{
		shield.x = x+lengthdir_x(10, direction)
		shield.y = y+lengthdir_y(10, direction)
		shield.image_angle = image_angle;
	}
	else
	{
		existsShield = false;	
	}
}