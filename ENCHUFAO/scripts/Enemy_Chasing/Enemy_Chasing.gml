// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_Chasing()
{
	if instance_exists(o_playerShip)
	{
	//--------BOUNCE WITH EACH OTHER---------//
	if (enemyIsMini)
	{
		enemyToBounce = collision_circle(x,y,4,o_enemyP,false,true)
	}
	else
	{
		enemyToBounce = collision_circle(x,y,10,o_enemyP,false,true)
	}
		if  enemyToBounce && (enemyToBounce.canBounce) && (!bounced)
		{
			bounced = true;
			alarm[8] = 10;
		    direction = direction+choose(random_range(30,50),random_range(-30,-50))
			_angle = direction;
		} 
	
		if (alarm[8] <= 0)
		{
			bounced = false;	
		}
	
	//-----------TAKE COVER-------------//
	
		EnemyTakeCover();
	
		//----------------CHASING MOVENEMT------------------//
		if (enemyIsMini)
		{
			part_particles_create(global.naveEnemy_Mini_sys, x-lengthdir_x(2,direction), y-lengthdir_y(2,direction), global.naveEnemy_Mini , 1)
		}
		else
		{
			part_particles_create(global.naveEnemy_Waiting_sys, x-lengthdir_x(8,direction), y-lengthdir_y(8,direction), global.naveEnemy_Waiting , 1)

		}
		
		if (alarm[4] <= 0)
		{
	
			diffX = choose(random_range(-50, 50));
			diffY = choose(random_range(-50, 50));
			alarm[4] = random_range(30, 60)
		}

		if instance_exists(o_playerShip)
		{
			EnemyBasicChasingIA();
		}
	}
}