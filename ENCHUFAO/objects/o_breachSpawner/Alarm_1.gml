/// @description Insert description here
// You can write your code in this editor
if (global.BossBreach_HP > 0) && (global.totalEnemiesOnScreen < 40) && !instance_exists(o_breachBoss)
{
	if instance_exists(o_playerShip)
	{
		 breachcx = 1*(irandom(width_)+1)//;
		 breachcy = 1*(irandom(height_)+1);//height div 2;
		
		 breachX = breachcx * CELL_WIDTH+CELL_WIDTH/2;
		 breachY = breachcy * CELL_HEIGHT+CELL_HEIGHT/2;
		
		if (point_distance(breachX, breachY, o_playerShip.x, o_playerShip.y) < 300) &&
		(point_distance(breachX, breachY, o_playerShip.x, o_playerShip.y) > 50)
		{
			if (global.wallgrid_[# breachcx, breachcy] == FLOOR)
			&& (global.wallgrid_[# breachcx-1, breachcy] == FLOOR)
			&& (global.wallgrid_[# breachcx+1, breachcy] == FLOOR) 
			{
				spawningBreach = true;
				breachObj = instance_create_layer(breachX, breachY, "Breach", o_breachBoss)
				//breachObj = instance_create_layer(breachX, breachY, "Breach", o_blackHole)
				breachBossRetryTime = random_range(1000,1200);
			}
			else
			{
				breachBossRetryTime = random_range(50,70);
			}
		}
		else
		{
			breachBossRetryTime = random_range(50,70);
		}
	}
}
