// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyLaserIA()
{
	if (slowed)
	{
		enemySpeed = lerp(enemySpeed, 0, 0.1);
		slowedCont--;
		if (slowedCont <= 0)
		{
			slowedCont = slowedContMax;
			slowed = false;
		}
	}
	else
	{
		enemySpeed = lerp(enemySpeed, enemySpeedInitial, 0.1);
	}
	
	if (moving)
	{
		LaserEnemyMovement();
	}
	else
	{
		LaserEnemyShoot();
	}
}