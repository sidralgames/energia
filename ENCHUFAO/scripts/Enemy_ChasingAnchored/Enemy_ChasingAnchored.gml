// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_ChasingAnchored()
{
	if instance_exists(o_playerShip)
	{
		enemySpeed =  lerp(enemySpeed, enemySpeedInitial, 0.1);
		
		if (isMegaEnemy)
		{
			farDist = 1.3;
		}
		else
		{
			farDist = 1;
		}
		
		far = false;
	
		if instance_exists(o_playerShip)
		{
			EnemyBasicChasingIAAnchored();
			
			if (point_distance(x,y,o_playerShip.x, o_playerShip.y) > activeDistance)
			|| (global.haveInvisibiltyCloak && global.invisibleCloak == true)
			|| grid_line_collision(x, y, o_playerShip.x, o_playerShip.y, 10)
			{
				contBounce = 0;
				state = ENEMYSTATE.WAITING;
			}
		}
	}
	else
	{
		contBounce = 0;
		state = ENEMYSTATE.WAITING;
		
	}
}