// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_ChasingFar()
{
//--------BOUNCE WITH EACH OTHER---------//
	//enemyToBounce = collision_circle(x,y,10,o_enemyP,false,true)
	//if  enemyToBounce && (enemyToBounce.canBounce) && (!bounced)
	//{
	//	bounced = true;
	//	alarm[8] = 10;
	//    direction = direction+choose(random_range(30,50),random_range(-30,-50))
	//	_angle = direction;
	//} 
	
	//if (alarm[8] <= 0)
	//{
	//	bounced = false;	
	//}
	
//-----------TAKE COVER-------------//
	EnemyTakeCover();
	
//----------------CHASING MOVENEMT------------------//
if (isMotherShip)
{
	part_particles_create(global.naveEnemy_Waiting_sys, x-lengthdir_x(13,direction), y-lengthdir_y(13,direction), global.naveEnemy_Waiting , 1)
}
else
{
	part_particles_create(global.naveEnemy_Waiting_sys, x-lengthdir_x(12,direction), y-lengthdir_y(12,direction), global.naveEnemy_Waiting , 1)
}

	if (alarm[4] <= 0)
	{
	
		diffX = choose(random_range(-250, -200), random_range(200,250));
		diffY = choose(random_range(-250, -200), random_range(200,250));
		alarm[4] = random_range(30, 60)
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
				_angle = direction;
				speed = enemySpeed * min(1, global.relativeSpeed+0.2);
				
				
					if (tile_meeting(x+hspeed,y,"Tiles"))
					{
					    hspeed = -hspeed*bnc;
					}
					else if (tile_meeting(x,y+vspeed,"Tiles"))
					{
					    vspeed = -vspeed*bnc;
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