/// @description Insert description here
// You can write your code in this editor
globalvar gridRoom1;
gridRoom1 = mp_grid_create(0, 0, room_width/CELL_WIDTH, room_height/CELL_HEIGHT, 32, 32)




_wall = o_wall;

//set up grid
width_ = room_width div CELL_WIDTH;
height_ = room_height div CELL_HEIGHT;



for ( var yyW = 0; yyW < height_; yyW++) 
{
	for (var xxW = 0; xxW < width_; xxW++)
	{
		  var exW = xxW * CELL_WIDTH+CELL_WIDTH/2;
		  var eyW = yyW * CELL_HEIGHT+CELL_HEIGHT/2;
		  var tile_exist = instance_position(exW,eyW,o_wall)

		if (tile_exist)
		{
			mp_grid_add_rectangle(gridRoom1, exW-16,eyW-16,exW,eyW)	
		}
		
		  
	}
}