/// @description Insert description here
// You can write your code in this editor
// spawners

if (timesTotal > 0)
{
	if times >0 
	{
		if instance_exists(o_playerShip)
		{
			 cx = 1*(irandom(width_)+1)//;
			 cy = 1*(irandom(height_)+1);//height div 2;
			
			 exM = cx * CELL_WIDTH+CELL_WIDTH/2;
			 eyM = cy * CELL_HEIGHT+CELL_HEIGHT/2;
			
			if (point_distance(exM, eyM, o_playerShip.x, o_playerShip.y) > 500)
			{
				if (global.wallgrid_[# cx, cy] == FLOOR) &&
				(global.wallgrid_[# cx+1, cy] == FLOOR) &&
				(global.wallgrid_[# cx-1, cy] == FLOOR) //&&
				//(global.wallgrid_[# cx, cy-1] == FLOOR) &&
				//(global.wallgrid_[# cx, cy+1] == FLOOR) 
				{
	
					if (spawners >= 1) 
					{
						padreNear = instance_nearest(exM, eyM,o_enemySpawnerIndicator_F)
						if point_distance(exM,eyM,padreNear.x, padreNear.y) > 400
						{
							enemyToSpawn = choose(0,1,2)
							instance_create(exM,eyM,o_enemySpawnerIndicator);
							spawners+=1;
							switch (enemyToSpawn)
							{
								case 0: SpawnEnemyFast(); break;
								case 1: SpawnEnemyBasic(); break;
								case 2: SpawnEnemyFastAndShield(); break;
								
							}
							
							times-=1;
						}
					}
					else
					{
						instance_create(exM,eyM,o_enemySpawnerIndicator);
						SpawnBlackHole();
						SpawnEnemyFast();
						times-=1;
						spawners+=1;
					}
				}
			}
		}
	}
}

