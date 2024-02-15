// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlaceChipsInTiles(argument0)
{
	var oddsChipinTile = argument0;
	for ( var yyW = 0; yyW < height_; yyW++)
	{
	    for (var xxW = 0; xxW < width_; xxW++) 
		{
			var exW = xxW * CELL_WIDTH+CELL_WIDTH/2;
			var eyW = yyW * CELL_HEIGHT+CELL_HEIGHT/2;

			if (global.wallgrid_[# xxW, yyW] == VOID) 
			{
				if (oddsChipinTile = irandom(oddsChipinTile))
				{
					instance_create_layer(exW,eyW, "ObjectsTiles", o_ChipinTile);
				}
			}
		}
	}
}