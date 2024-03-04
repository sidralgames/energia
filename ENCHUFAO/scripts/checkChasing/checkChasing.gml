// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkChasing()
{
	if (state = ENEMYSTATE.CHASING) && instance_exists(o_playerShip) && (canStopChasing)
	{
		if (point_distance(x,y,o_playerShip.x, o_playerShip.y) > 540)
		{
			keepChasingTime --;
		
			if (keepChasingTime <= 0)
			{
				keepChasing = choose(true, true, false);
				
				if (keepChasing = false)
				{
					if !tile_meeting(x + lengthdir_x(30, 1), y+ lengthdir_y(30, 1), "Tiles") && 
					!tile_meeting(x + lengthdir_x(30, 90), y+ lengthdir_y(30, 90), "Tiles") && 
					!tile_meeting(x + lengthdir_x(30, 180), y+ lengthdir_y(30, 180), "Tiles") && 
					!tile_meeting(x + lengthdir_x(30, 270), y+ lengthdir_y(30, 270), "Tiles") && 
					!tile_meeting(x, y, "Tiles")
					{
						xStart = x;
						yStart = y;
						state = ENEMYSTATE.WAITING;
					}
				}
				
				keepChasingTime = 240;
			}
		}
	}
}