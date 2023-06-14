/// @description Insert description here
// You can write your code in this editor
// spawners
_wall_map_id = layer_tilemap_get_id("Tiles");

if timesTotal > 0
{
	if times >0 
	{
		if instance_exists(o_playerShip)
		{
			var cx = 1*(irandom(38)+1)//width div 2;
			var cy = 1*(irandom(38)+1);//height div 2;
			
			var exM = cx * CELL_WIDTH+CELL_WIDTH/2;
			var eyM = cy * CELL_HEIGHT+CELL_HEIGHT/2;
			
			if (point_distance(exM, eyM, o_playerShip.x, o_playerShip.y) > 500)
			{
				if (global.wallgrid_[# cx, cy] == FLOOR) &&
				(global.wallgrid_[# cx+1, cy] == FLOOR) &&
				(global.wallgrid_[# cx-1, cy] == FLOOR) &&
				(global.wallgrid_[# cx, cy-1] == FLOOR) &&
				(global.wallgrid_[# cx, cy+1] == FLOOR) 
				{
	
					if (spawners >= 1) 
					{
						padreNear = instance_nearest(exM, eyM,o_enemySpawnerIndicator_F)
						if point_distance(exM,eyM,padreNear.x, padreNear.y) > 400
						{
							instance_create(exM,eyM,o_enemySpawnerIndicator);
							spawners+=1;
							for (var i=0; i<random_range(enemiesMin,enemiesMax); i++)
							{
								enemies = instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2+random_range(-28,28), cy*CELL_HEIGHT+CELL_HEIGHT/2+random_range(-28,28), "Enemies", o_enemy)
								enemies.waiting = true;
								enemies.speed = 0;
								enemies.image_angle = irandom(360)
								enemies.direction = enemies.image_angle;
							}
							times-=1;
						}
			
					}
					else
					{
						instance_create(exM,eyM,o_enemySpawnerIndicator);
						for (var i=0; i<random_range(enemiesMin,enemiesMax); i++)
						{
							enemies = instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2+random_range(-28,28), cy*CELL_HEIGHT+CELL_HEIGHT/2+random_range(-28,28), "Enemies", o_enemy)
							enemies.waiting = true;
							enemies.speed = 0;
							enemies.image_angle = irandom(360)
							enemies.direction = enemies.image_angle;
						}
						
						times-=1;
						spawners+=1;
					}
			
				}
			}
		}

	}

	timesTotal-=1;
	alarm[2] = 2;
}

