// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateSecretEnchufe(oddsSecretEnchufeInTile, _place)
{
	for ( var yyW = 0; yyW < height_; yyW++)
	{
		for (var xxW = 0; xxW < width_; xxW++) 
		{
			var exW = xxW * CELL_WIDTH+CELL_WIDTH/2;
			var eyW = yyW * CELL_HEIGHT+CELL_HEIGHT/2;

			if (global.wallgrid_[# xxW, yyW] == _place) && (exW > 90) && (exW < room_width-90)
			&& (eyW > 90) && (eyW < room_height-90)
			{
				nextEnchufe = instance_nearest(exW, eyW, o_enchufe_Father)
				if instance_exists(nextEnchufe)
				{
					if (point_distance(exW, eyW, nextEnchufe.x, nextEnchufe.y) > 50)
					{
						if (oddsSecretEnchufeInTile = irandom(oddsSecretEnchufeInTile)) && (enchufesSecret < enchufesSecretMax)
						{
							instance_create_layer(exW,eyW, "ObjectsTiles", o_enchufe_Secret);
							enchufesSecret+=1;
						}
					}
				}
			}
		}
	}
}