/// @description Insert description here
// You can write your code in this editor
if !instance_exists(o_partBulletMouth)
{
	instance_create_layer(-100,-100,"EnemiesHUE",o_partBulletMouth)
}


if (levelType = "Secret")
{
	if (alarm[7] <= 0) && timesSpawner>0 //Try spawner 
	{
		timesTotal-=1;
		alarm[7] = 2;
	}
}
else
{
	if (alarm[2] <= 0) && timesSpawner>0 //Try spawner 
	{
		timesTotal-=1;
		alarm[2] = 2;
	}
}

if (global.level > 2) && (timesBreach> 0)
{
	if (alarm[3] <= 0) //Time to try a new breach again
	{
		alarm[3] = breachRetryTime
	}
}


if (timesBreach <= 0)
{
	spawningBreach = false;
}


if (spawningBreach) && (alarm[4] <= 0)
{
	spawningBreach = false;
}


//----------- ENEMY SPAWN TIME ----------//
if (global.level <=5)
{
	if (alarm[1] <= 0)
	{
		alarm[1] = max(90, random_range(260,300) - (3*global.level));
	}
}
else if (global.level >5)
{
	if (alarm[1] <= 0)
	{
		alarm[1] = max(90, random_range(300,360) - (4*global.level));
	}
}

if (global.changingTiles)
{
	contTiles--;
	
	SetTiles();
	
	width_ = room_width div CELL_WIDTH;
	height_ = room_height div CELL_HEIGHT;

	_wall_map_id = layer_tilemap_get_id("Tiles");

	for ( var yyW = 0; yyW < height_; yyW++) 
	{
		for (var xxW = 0; xxW < width_; xxW++)
		{
			  var exW = xxW * CELL_WIDTH+CELL_WIDTH/2;
			  var eyW = yyW * CELL_HEIGHT+CELL_HEIGHT/2;
			  var tile_exist = tilemap_get_at_pixel(_wall_map_id, exW,eyW)

			if (tile_exist)
			{
				mp_grid_add_rectangle(gridRoom1, exW-16,eyW-16,exW,eyW)	
			}
		}
	}

	if (contTiles <=0)
	{
		global.changingTiles = false;
		contTiles = 1;
	}
}