// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LoadDefaultDataIngame()
{
	//--------SHIPS------//
	global.shipGreenUnlocked = 1;
	global.shipBlueUnlocked  = 0;
	global.shipRedUnlocked  = 0;
	global.shipDarkUnlocked  = 0;
	global.shipPurpleUnlocked  = 0;
	
	for (var i = 0; i <global.numberOfShips; i++)
	{
		ship = ds_map_find_value(global.shipList, i)
		if (ship.sprite != splayer)
		{
			ship.unlocked = 0;
		}
	}
}