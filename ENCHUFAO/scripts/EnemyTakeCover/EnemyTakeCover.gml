// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyTakeCover()
{
	enemyShield = collision_circle(x,y,100,o_enemy_Waiting_Shield,false,true);
	
	if (enemyShield) && (enemyShield.existsShield) && (alarm[7] <= 0)
	{
		takeCover = true;
		enemySpeed = global.coverSpeed * min(1, global.relativeSpeed+0.2);	
	}
	else
	{
		if (enemyIsMini)
		{
			if (point_distance(x,y,o_playerShip.x, o_playerShip.y) > activeDistance)
			{
				farSpeed= lerp(farSpeed, farSpeedInitial, 0.05)
				enemySpeed = enemySpeedInitial * min(1, global.relativeSpeed+0.2)*farSpeed;
			}
			else
			{
				farSpeed= lerp(farSpeed, 1, 0.08)
				enemySpeed = enemySpeedInitial * min(1, global.relativeSpeed+0.2)*farSpeed;
			}
		}
		else
		{
			enemySpeed = enemySpeedInitial * min(1, global.relativeSpeed+0.2);
		}
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
				if (enemyIsMini)
				{
					if (point_distance(x,y,o_playerShip.x, o_playerShip.y) > activeDistance)
					{
						farSpeed= lerp(farSpeed, farSpeedInitial, 0.05)
						enemySpeed = enemySpeedInitial * min(1, global.relativeSpeed+0.2)*farSpeed;
					}
					else
					{
						farSpeed= lerp(farSpeed, 1, 0.08)
						enemySpeed = enemySpeedInitial * min(1, global.relativeSpeed+0.2)*farSpeed;
					}
				}
				else
				{
					enemySpeed = enemySpeedInitial * min(1, global.relativeSpeed+0.2);
				}
				
				alarm[7] = random_range(300,600) //leave cover time
				takeCover = false;
			}
			else
			{
				alarm[6] = random_range(200,300) //retry leave cover time
			}
		}
	}
}