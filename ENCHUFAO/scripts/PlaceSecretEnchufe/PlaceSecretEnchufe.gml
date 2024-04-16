// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlaceSecretEnchufe(oddsSecretEnchufeInTile)
{
	enchufesSecretMax = 1;
	enchufesSecret = 0;
	
	placeEnchufe= choose("inTile", "inSpace")
	
	switch(placeEnchufe)
	{
		case "inTile":
		{
			CreateSecretEnchufe(oddsSecretEnchufeInTile, VOID);
			
		}break;
		
		case "inSpace":
		{
			CreateSecretEnchufe(oddsSecretEnchufeInTile, FLOOR);
			
		}break;
	}
}