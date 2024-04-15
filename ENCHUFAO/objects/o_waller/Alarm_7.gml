/// @description GANG SPAWN SECRET
// spawners
if (levelType = "Secret")
{
	switch(secretType)
	{
		case "Snipers":
		{
			if (timesTotal > 0)
			{
				if timesSpawner >0 
				{
					if instance_exists(o_playerShip)
					{
						 cx = 1*(irandom(width_))//;
						 cy = 1*(irandom(height_));//height div 2;
			
						 exM = cx * CELL_WIDTH+CELL_WIDTH/2;
						 eyM = cy * CELL_HEIGHT+CELL_HEIGHT/2;
			
						if (point_distance(exM, eyM, o_playerShip.x, o_playerShip.y) > 60)
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
									if point_distance(exM,eyM,padreNear.x, padreNear.y) > 30
									{
										instance_create(exM,eyM,o_enemySpawnerIndicator);
										spawners+=1;
										SpawnEnemyBasicAndSniper();
							
										timesSpawner-=1;
									}
								}
								else
								{
									instance_create(exM,eyM,o_enemySpawnerIndicator);
									SpawnEnemyBasicAndSniper();
									timesSpawner-=1;
									spawners+=1;
								}
							}
						}
					}
				}
			}
		}
		break;
	}
}

