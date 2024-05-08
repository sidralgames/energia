// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_ChasingFar()
{

	if (slowed)
	{
		enemySpeed = lerp(enemySpeed, 0, 0.1+slowedPeta);
		slowedCont--;
		if (slowedCont <= 0)
		{
			slowedPeta = 0;
			slowedCont = slowedContMax;
			slowed = false;
		}
	}
	else
	{
		enemySpeed = lerp(enemySpeed, enemySpeedInitial, 0.1);
	}
//-----------TAKE COVER-------------//
	EnemyTakeCover();
	
//----------------CHASING MOVENEMT------------------//
if (isMotherShip)
{
	part_particles_create(global.naveEnemy_Waiting_sys, x-lengthdir_x(13,_angle), y-lengthdir_y(13,_angle), global.naveEnemy_Waiting , 1)
}
else
{
	part_particles_create(global.naveEnemy_Waiting_sys, x-lengthdir_x(12,_angle), y-lengthdir_y(12,_angle), global.naveEnemy_Waiting , 1)
}

	if (alarm[4] <= 0)
	{
	
		diffX = choose(random_range(-10, -20), random_range(20,10));
		diffY = choose(random_range(-10, -20), random_range(20,10));
		alarm[4] = random_range(30, 60)
	}

	if instance_exists(o_playerShip)
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
			
		if (!isMotherShip) && (canHaveAShield)
		{
			if (point_distance(x,y,o_playerShip.x, o_playerShip.y) <= 200)
			{
				dire = point_direction(x,y,o_playerShip.x, o_playerShip.y);
				if (!closeToWall)
				{
					_angle = dire;
				}
				if (alarm[0] <= 0)
				{
					var bullet = instance_create_layer(x + lengthdir_x(10, _angle), y + lengthdir_y(10, _angle),
					"Bullets", o_bulletEnemy);
					bullet.bulletSpeed = 3;
					bullet.image_angle = _angle;
					bullet.direction = _angle;
			
					alarm[0] = random_range(60,120)
				}
			}
		}
		
	
	}
}