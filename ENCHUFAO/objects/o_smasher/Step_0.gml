/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (global.relativeSpeed !=1)
{
	image_speed = imageSpeed * global.relativeSpeed;
}
else
{
	image_speed = imageSpeedFast;
}

if (alarm[3] <= 0)
{
	playerRepelled = false;
}

if (alarm[4] <= 0)
{
	repelledEnemy = false;
}

if (global.changingTiles)
{
	if !tile_meeting(x,y-3, "Tiles")
	{
		instance_destroy();	
	}
}

if (image_index > 2) && (image_index < 14)
{
	enemy = instance_nearest(x,y,o_enemyP);
	if instance_exists(enemy)
	{
		if (point_distance(x,y+16, enemy.x, enemy.y) < 25)
		{
			if (rectangle = false)
			{
				rectangle = true;
				mp_grid_add_rectangle(global.gridRoom1, x - 15, y, x+15, y+30)
			}
		}
	}
}
else
{
	if (rectangle = true)
	{
		rectangle = false;
		mp_grid_clear_rectangle(global.gridRoom1, x - 15, y, x+15, y+30)
	}
}



