/// @description Insert description here
// You can write your code in this editor
event_inherited();

if (flashAlpha > 0) 
{
	flashAlpha -= 0.09;
}

switch(state)
{
	case ENEMYSTATE.WAITING: Enemy_Waiting(); break;
	case ENEMYSTATE.CHASING: Enemy_ChasingFar(); break;
	case ENEMYSTATE.SHOCKED: Enemy_Shocked(); break;
}

//if instance_exists(lightEnemy)
//	{
//		lightEnemy.light [| eLight.X] = x
//		lightEnemy.light [| eLight.Y] = y
//	}
if instance_exists(o_playerShip)
{
	if (state = ENEMYSTATE.CHASING) && (point_distance(x,y,o_playerShip.x, o_playerShip.y) <= UnloadDistance)
	{
		contMinis --;
	
		if (contMinis <= 0)
		{
			contMinis = random_range(200, 400)
			
			enemyMini = instance_create_layer(x-lengthdir_x(8,direction), y-lengthdir_y(8,direction), "Player", o_bombMine)
			if instance_exists(enemyMini)
			{
				enemyMini.bulletSpeed = enemySpeed;
				enemyMini.direction = _angle-180;
			}
			
		}
	
	
	}
}

if (_hp <= 0)
{
	EnemyDeathShake();
	
	global.XPpoints +=enemyXP;
	
	explo = instance_create(x,y,o_exploPurple);
	explo.image_xscale = 0.5;
	explo.image_yscale = 0.5;
	
	if instance_exists(explo)
	{
		instance_destroy();
	}
}