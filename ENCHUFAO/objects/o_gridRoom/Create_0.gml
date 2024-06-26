/// @description Insert description here
// You can write your code in this editor

global.gridRoom1 = mp_grid_create(0, 0, room_width/CELL_WIDTH, room_height/CELL_HEIGHT, 32, 32)

//set up grid
width_ = room_width div CELL_WIDTH;
height_ = room_height div CELL_HEIGHT;


if (room = Sala_0) ||  (room = Sala_SecondBoss) || (room =Sala_Tutorial)
{
	for ( var yyW = 0; yyW < height_; yyW++) 
	{
		for (var xxW = 0; xxW < width_; xxW++)
		{
			  var exW = xxW * CELL_WIDTH+CELL_WIDTH/2;
			  var eyW = yyW * CELL_HEIGHT+CELL_HEIGHT/2;
			  var tile_exist = instance_position(exW,eyW,o_wall)

			if (tile_exist)
			{
				mp_grid_add_rectangle(global.gridRoom1, exW-16,eyW-16,exW,eyW)	
			}
		
		}
	}
}
else if (room = Sala_Boss) ||  (room = Sala_FirstBoss) 
{
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
				mp_grid_add_rectangle(global.gridRoom1, exW-16,eyW-16,exW,eyW)	
			}
		
		  
		}
	}
}
else if (room = Sala_Upgade) ||  (room = Sala_MegaUpgrade) || (room =Sala_ChillRoom)
{
	global.wallgrid_ = ds_grid_create(width_,height_);
	ds_grid_set_region(global.wallgrid_, 0, 0, width_-1, height_-1, FLOOR);
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
				mp_grid_add_rectangle(global.gridRoom1, exW-16,eyW-16,exW,eyW)	
				global.wallgrid_[# xxW, yyW] = VOID;
			}
		}
	}
}