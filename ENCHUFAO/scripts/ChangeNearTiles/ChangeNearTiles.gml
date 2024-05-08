// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function ChangeNearTiles(argument0, argument1) //(grid en X y grid en Y)
{

		width_ = room_width div CELL_WIDTH;
		height_ = room_height div CELL_HEIGHT;
		
		xPrev =  argument0 - 10;
		xPost = argument0 + 10
		
		yPrev = argument1 - 10
		yPost = argument1 + 10
		
		
		_wall_map_id = layer_tilemap_get_id("Tiles");
		
		SetTilesNear(yPrev, yPost, xPrev, xPost);
		
		for ( var yyW = yPrev; yyW < yPost; yyW++) 
		{
			for (var xxW = xPrev; xxW < xPost; xxW++)
			{
				var exW = xxW * CELL_WIDTH+CELL_WIDTH/2;
				var eyW = yyW * CELL_HEIGHT+CELL_HEIGHT/2;
				
				var tile_exist = tilemap_get_at_pixel(_wall_map_id, exW,eyW)

				if (tile_exist)
				{
					mp_grid_add_rectangle(global.gridRoom1, exW-16,eyW-16,exW,eyW)	
				}
			}
		}
	
}
