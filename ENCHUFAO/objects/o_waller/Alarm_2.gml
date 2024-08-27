/// @description GANG SPAWN
// spawners
if (room != Sala_Tutorial) && (levelType != "Secret")
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
							if point_distance(exM,eyM,padreNear.x, padreNear.y) > 300
							{
								if (global.level = 1)
								{
									enemyToSpawn = choose(0,0,1,2,3)
								}
								else
								{
									enemyToSpawn = irandom(7)
								}
							
								instance_create(exM,eyM,o_enemySpawnerIndicator);
								spawners+=1;
							
								switch (enemyToSpawn)
								{
									case 0: SpawnEnemyFast(); break;
									case 1: SpawnEnemyBasic(); break;
									case 2: SpawnEnemyFastAndShield(); break;
									case 3: SpawnEnemyMini(); break;
									case 4: SpawnEnemyFastAndMore(); break;
									case 5: SpawnEnemyBasicAndSniper(); break;
									case 6: SpawnEnemyBomberAndMini(); break;
									case 7: SpawnEnemyMitosisAndMini(); break;	
								}
							
								timesSpawner-=1;
							}
						}
						else
						{
							instance_create(exM,eyM,o_enemySpawnerIndicator);
							SpawnBlackHole();
							SpawnEnemyFast();
							timesSpawner-=1;
							spawners+=1;
						}
					}
				}
			}
		}
	}
}


if (room = Sala_Tutorial) && (global.level = 0)
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
			
				if (point_distance(exM, eyM, o_playerShip.x, o_playerShip.y) > 400)
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
								if point_distance(exM,eyM,padreNear.x, padreNear.y) < 200
								{
							
									instance_create(exM,eyM,o_enemySpawnerIndicator);
									spawners+=1;
									SpawnEnemyBasic(); 
				
									timesSpawner-=1;
								}
							}
							else
							{
								instance_create(exM,eyM,o_enemySpawnerIndicator);
								SpawnEnemyFast();
								timesSpawner-=1;
								spawners+=1;
							}
						}
				}
			}
		}
	}
}

if (room = Sala_Tutorial) && (global.level >= 1)
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
			
				if (point_distance(exM, eyM, o_playerShip.x, o_playerShip.y) > 400)
				{
					if (point_distance(exM, eyM, o_bulletExplic.x, o_bulletExplic.y) > 500)
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
								if point_distance(exM,eyM,padreNear.x, padreNear.y) < 200
								{
							
									instance_create(exM,eyM,o_enemySpawnerIndicator);
									spawners+=1;
									SpawnEnemyBasic(); 
				
									timesSpawner-=1;
								}
							}
							else
							{
								instance_create(exM,eyM,o_enemySpawnerIndicator);
								SpawnEnemyFast();
								timesSpawner-=1;
								spawners+=1;
							}
						}
					}
				}
			}
		}
	}
}

