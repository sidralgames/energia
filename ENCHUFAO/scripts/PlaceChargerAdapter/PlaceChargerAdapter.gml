// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlaceChargerAdapter(oddsAdapterInTile)
{
	adaptersMax = 1;
	adapters = 0;
	
	placeAdapter = choose("inTile", "inSpace")
	
	switch(placeAdapter)
	{
		case "inTile":
		{
			CreateChargerAdapter(oddsAdapterInTile, VOID);
			
		}break;
		
		case "inSpace":
		{
			CreateChargerAdapter(oddsAdapterInTile, FLOOR);
			
		}break;
	}

}