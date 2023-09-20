// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_ChasingFar()
{
//--------BOUNCE WITH EACH OTHER---------//
	if collision_circle(x,y,5,o_enemyP,false,true) && (!bounced)
	{
		bounced = true;
		alarm[8] = 10;
	    direction = direction+choose(random_range(30,50),random_range(-30,-50))
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
		enemySpeed = global.coverSpeed * min(1, global.relativeSpeed+0.2);	
	}
	else
	{
		enemySpeed = enemySpeedInitial * min(1, global.relativeSpeed+0.2);
	}

	if (takeCover)
	{
		if (enemyShield)
		{
			if instance_exists(o_playerShip)
			{
				if (point_distance(x,y,o_playerShip.x, o_playerShip.y)) < (point_distance(enemyShield.x,enemyShield.y,o_playerShip.x, o_playerShip.y))
				{
					enemySpeed = (global.coverSpeed-0.5) * min(1, global.relativeSpeed+0.2);
				}
				else
				{
					enemySpeed = global.coverSpeed * min(1, global.relativeSpeed+0.2);
				}
			}
		}
		if (alarm[6] <= 0)
		{
			leaveCover = choose(0,0,1);
		
		if (leaveCover == 1)
			{
				enemySpeed = enemySpeedInitial * min(1, global.relativeSpeed+0.2);
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


	if (alarm[4] <= 0)
	{
	
		diffX = choose(random_range(-250, -200), random_range(200,250));
		diffY = choose(random_range(-250, -200), random_range(200,250));
		alarm[4] = random_range(30, 90)
	}

	if instance_exists(o_playerShip)
	{
			if (point_distance(x,y,o_playerShip.x, o_playerShip.y) <= 200)
			{
					myPath = path_add();
					mp_grid_path(gridRoom1, myPath, x, y, o_playerShip.x,  o_playerShip.y, true);
					changedSpeed = false;
					EnemyBasicChasingIAFar();
			
			}
			else
			{
				if (changedSpeed = false)
				{
					changedSpeed = true;
					//_hpush = hspeed;
					//_vpush = vspeed;
					speed = 0;	
				}
				path_end();
				var a = point_direction(x, y, o_playerShip.x+diffX,  o_playerShip.y+diffY);
				direction += sign(dsin(a - direction)) * (precision * global.relativeSpeed);
				image_angle = direction;
				speed = enemySpeed * min(1, global.relativeSpeed+0.2);
				
				
					if (tile_meeting(x+hspeed,y,"Tiles"))
					{
					    hspeed = -hspeed*bnc;
					} 
	
					if (tile_meeting(x,y+vspeed,"Tiles"))
					{
					    vspeed = -vspeed*bnc;
					}
				
			}
		
		if (point_distance(x,y,o_playerShip.x, o_playerShip.y) <= 200)
		{
			dire = point_direction(x,y,o_playerShip.x, o_playerShip.y);
			if (!closeToWall)
			{
				image_angle = dire;
			}
			if (alarm[0] <= 0)
			{
				var bullet = instance_create_layer(x + lengthdir_x(10, image_angle), y + lengthdir_y(10, image_angle),
				"Bullets", o_bulletEnemy);
				bullet._hpush = lengthdir_x(3, image_angle);
				bullet._vpush = lengthdir_y(3, image_angle);
				bullet.image_angle = image_angle;
				bullet.direction = image_angle;
			
				alarm[0] = random_range(60,120)
			}
		}
	
	}
}