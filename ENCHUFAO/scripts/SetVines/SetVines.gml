// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetVines(_odds)
{
	if (room = Sala_BossWorm)
	{
		oddsVine_s = 2;
	}
	else
	{
		oddsVine_s = _odds;
	}
	
for ( var yyW = 0; yyW < height_; yyW++) 
{
	for (var xxW = 0; xxW < width_; xxW++)
	{
		  var exW = xxW * CELL_WIDTH+CELL_WIDTH/2;
		  var eyW = yyW * CELL_HEIGHT+CELL_HEIGHT/2;
		  var tile_exist = tilemap_get_at_pixel(_wall_map_id, exW,eyW)
		  var tile_exist_top = tilemap_get_at_pixel(_wall_map_id, exW,eyW-25)
		  var tile_exist_down = tilemap_get_at_pixel(_wall_map_id, exW,eyW+25)
		  //var tile_exist_left = tilemap_get_at_pixel(_wall_map_id, exW-25,eyW)
		  //var tile_exist_right = tilemap_get_at_pixel(_wall_map_id, exW+25,eyW)
		  //var tile_exist_downDOWN = tilemap_get_at_pixel(_wall_map_id, exW,eyW+55)
		  //var tile_exist_downLeft = tilemap_get_at_pixel(_wall_map_id, exW-25,eyW+25)
		  //var tile_exist_downRight = tilemap_get_at_pixel(_wall_map_id, exW+25,eyW+25)
		  //var tile_exist_upLeft = tilemap_get_at_pixel(_wall_map_id, exW-28,eyW-28)
		  //var tile_exist_upRight = tilemap_get_at_pixel(_wall_map_id, exW+28,eyW-28)
	  
	//Up
		 if (tile_exist) && (!tile_exist_top) && (irandom(oddsVine_s) = oddsVine_s) && (eyW < room_height -32) && (eyW > 32) //&& (!tile_exist_downLeft) && (!tile_exist_downRight)
		 {
			lay= choose("Meteors", "Laser");
			for (var i=0; i<choose(1,2); i++)
			{
				vineUp = instance_create_layer(exW + random_range(-14, 14),eyW-random_range(12,14),lay,oVine_Suelo);
				if instance_exists(vineUp)
				{
					vineUp.grv = -0.6;
				}
			}
		 }
		 //Down
		 if (tile_exist) && (!tile_exist_down) && (irandom(oddsVine_s) = oddsVine_s) && (eyW < room_height -32) && (eyW > 32) //&& (!tile_exist_downLeft) && (!tile_exist_downRight)
		 {
			lay= choose("Meteors", "Laser");
			for (var i=0; i<choose(1,2); i++)
			{
				vineDown = instance_create_layer(exW + random_range(-14, 14),eyW+random_range(12,14),lay,oVine_Techo);
				if instance_exists(vineDown)
				{
					vineDown.grv = 0.6;
				}
			}
		 }
		 
		 
	}
}


}