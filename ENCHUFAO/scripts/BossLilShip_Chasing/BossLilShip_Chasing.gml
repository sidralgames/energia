// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossLilShip_Chasing()
{
//--------BOUNCE WITH EACH OTHER---------//
	if collision_circle(x,y,5,o_enemyP,false,true) && (!bounced)
	{
		bounced = true;
		alarm[8] = 30;
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
	
		diffX = choose(random_range(-150, 150));
		diffY = choose(random_range(-150, 150));
		alarm[4] = random_range(30, 60)
	}

	if instance_exists(o_playerShip)
	{
		EnemyBasicChasingIA();
	}
}