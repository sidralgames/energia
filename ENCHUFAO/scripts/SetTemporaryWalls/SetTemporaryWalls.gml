// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetTemporaryWalls()
{
	for ( var yyW = 0; yyW < height_; yyW++)
	{
		for (var xxW = 0; xxW < width_; xxW++)
		{
			var oddsW = 0
			var exW = xxW * CELL_WIDTH+CELL_WIDTH/2;
			var eyW = yyW * CELL_HEIGHT+CELL_HEIGHT/2;
     
			if (irandom(oddsW) == oddsW)
			{
				if (global.wallgrid_[# xxW, yyW] == WALL) 
				{
					instance_create_layer(exW,eyW, "Walls", o_wall);
			    }
			    if (global.wallgrid_[# xxW, yyW] == VOID) 
				{
					instance_create_layer(exW,eyW, "Walls", o_wall);
			    }
			}
		}
	}
}