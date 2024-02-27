// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkChasing()
{
	if (state = ENEMYSTATE.CHASING) && instance_exists(o_playerShip)
	{
		if (point_distance(x,y,o_playerShip.x, o_playerShip.y) > 540)
		{
			keepChasingTime --;
		
			if (keepChasingTime <= 0)
			{
				keepChasing = choose(true, false)
				if (keepChasing = false)
				{
					xStart = x;
					yStart = y;
					state = ENEMYSTATE.WAITING;
				
				}
			
				keepChasingTime = 180;
			}
		}
	}
}