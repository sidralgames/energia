/// @description Insert description here
// You can write your code in this editor
if (canBreach)
{
	if (global.BossBreach_HP > 0) && (global.totalEnemiesOnScreen < 40)
	{
		if instance_exists(o_playerShip)
		{
			 breachcx = 1*(irandom(width_)+1)//;
			 breachcy = 1*(irandom(height_)+1);//height div 2;
		
			 breachX = breachcx * CELL_WIDTH+CELL_WIDTH/2;
			 breachY = breachcy * CELL_HEIGHT+CELL_HEIGHT/2;
		
			if (point_distance(breachX, breachY, o_playerShip.x, o_playerShip.y) < 350) &&
			(point_distance(breachX, breachY, o_playerShip.x, o_playerShip.y) > 50)
			{
				if (global.wallgrid_[# breachcx, breachcy] == FLOOR)
				&& (global.wallgrid_[# breachcx, breachcy-1] == FLOOR)
				&& (global.wallgrid_[# breachcx, breachcy+1] == FLOOR) 
				{
					spawningBreach = true;
					breachObj = instance_create_layer(breachX, breachY, "Breach", o_breach)
					breachesCount+=1;
					if (breachesCount = 2)
					{
						canBreach = false
					}
					//breachObj = instance_create_layer(breachX, breachY, "Breach", o_blackHole)
					breachRetryTime = random_range(400,500);
				}
				else
				{
					breachRetryTime = breachRetryTimeInitial;
				}
			}
			else
			{
				breachRetryTime = breachRetryTimeInitial;
			}
		}
	}
}
