// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateChargerAdapter(oddsAdapterInTile, _place)
{
	for ( var yyW = 0; yyW < height_; yyW++)
	{
		for (var xxW = 0; xxW < width_; xxW++) 
		{
			var exW = xxW * CELL_WIDTH+CELL_WIDTH/2;
			var eyW = yyW * CELL_HEIGHT+CELL_HEIGHT/2;

			if (global.wallgrid_[# xxW, yyW] == _place) && (exW > 70) && (exW < room_width-70)
			&& (eyW > 70) && (eyW < room_height-70)
			{
				if (oddsAdapterInTile = irandom(oddsAdapterInTile)) && (adapters < adaptersMax)
				{
					instance_create_layer(exW,eyW, "ObjectsTiles", o_chargerAdapter);
					adapters+=1;
				}
			}
		}
	}
}