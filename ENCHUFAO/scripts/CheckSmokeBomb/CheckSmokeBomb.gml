// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CheckSmokeBomb()
{
	if (afterSmokeBomb > 0)
	{
		
		afterSmokeBomb--;
	
		if (radiusSmoke <= 45)
		{
			radiusSmoke+=0.75;
		}
	}

	if (key_objectUp) && (startSmokeBomb = false) && (!pluggedToStrandedShip)
	{
		startSmokeBomb = true;
		smokebombed = false;
		contPartSmokeBomb = 60;
		radiusSmoke = 0;
	}
	
	if (startSmokeBomb)
	{
		contPartSmokeBomb--;
		
		if (radiusSmoke <= 45)
		{
			radiusSmoke+=0.75;
		}
	
		part_particles_create(global.partSmoke_sys, x+lengthdir_x(random_range(radiusSmoke,-radiusSmoke), irandom(360)),y+lengthdir_y(random_range(radiusSmoke,-radiusSmoke), irandom(360)), global.partSmoke, 30);
	
		if (smokebombed = false) && (contPartSmokeBomb <= 0)
		{			
			var cx = 1*(irandom(38)+4)//width div 2;
			var cy = 1*(irandom(38)+4);//height div 2;

			if (global.wallgrid_[# cx, cy] == FLOOR) 
			{
				if (point_distance(cx, cy, o_playerShip.x, o_playerShip.y) > 200)
				&& (point_distance(cx, cy, o_enemyP.x, o_enemyP.y) >60)
				{
					if (plugged)
					{
						Unplug();
					}
					x = cx*CELL_WIDTH+CELL_WIDTH/2;
					y = cy*CELL_HEIGHT+CELL_HEIGHT/2; 
					instance_destroy(o_cable);
					instance_destroy(o_charger);
					instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2, cy*CELL_HEIGHT+CELL_HEIGHT/2, "Cable", o_cable);
					smokebombed = true;
					afterSmokeBomb = 50;
					startSmokeBomb = false
					radiusSmoke = 0;
				}
			}
		
		}
	}
}