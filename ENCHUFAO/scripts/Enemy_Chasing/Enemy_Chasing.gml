// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_Chasing()
{
//--------BOUNCE WITH EACH OTHER---------//
	if place_meeting(x,y,o_enemyP) && (!bounced)
	{
		bounced = true;
		alarm[8] = 10;
	    direction = direction+choose(random_range(50,70),random_range(-50,-70))
		image_angle = direction;
	} 
	
	if (alarm[8] <= 0)
	{
		bounced = false;	
	}
	
//-----------TAKE COVER-------------//
	enemyShield = collision_circle(x,y,100,o_enemy_Waiting_Shield,false,true);
	
	if (enemyShield) && (enemyShield.existsShield) && (alarm[7] <= 0)
	{
		takeCover = true;
		enemySpeed = global.coverSpeed;	
	}
	else
	{
		enemySpeed = enemySpeedInitial;
	}

	if (takeCover)
	{
		if (enemyShield)
		{
			if instance_exists(o_playerShip)
			{
				if (point_distance(x,y,o_playerShip.x, o_playerShip.y)) < (point_distance(enemyShield.x,enemyShield.y,o_playerShip.x, o_playerShip.y))
				{
					enemySpeed = global.coverSpeed-0.5;
				}
				else
				{
					enemySpeed = global.coverSpeed;
				}
			}
		}
		if (alarm[6] <= 0)
		{
			leaveCover = choose(0,0,1);
		
		if (leaveCover == 1)
			{
				enemySpeed = enemySpeedInitial;
				alarm[7] = random_range(300,600) //leave cover time
				takeCover = false;
			}
			else
			{
				alarm[6] = random_range(200,300) //retry leave cover time
			}
		}
	}
	
//----------------CHASING MOVENEMT------------------//
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
			alarm[5] = 10;
			_speed = enemySpeed
			path_start(myPath,_speed ,path_action_stop, false)
			image_angle = direction
		}
	}
}