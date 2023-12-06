/// @description Insert description here
// You can write your code in this editor
if (global.changingTiles)
{
	contTiles--;
	
	//if instance_exists(o_playerShip)
	//{
	//	playerCentered = (o_playerShip.x > 400) && (o_playerShip.x < room_width-400) &&
	//	(o_playerShip.y > 400) && (o_playerShip.x < room_height-400)
	//	if (playerCentered)
	//	{
	//		SetTiles_Post();
	//	}
	//	else
	//	{
	//		SetTiles()
	//	}
	//}
	
	SetTiles();

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
		contTiles = 2;
	}
}

//----------- ENEMY SPAWN TIME ----------//
if (alarm[1] <= 0)
{
	alarm[1] = random_range(300,400)
}




