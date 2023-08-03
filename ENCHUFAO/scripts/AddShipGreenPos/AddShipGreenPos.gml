// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddShipGreenPos()
{
	ds_map_add(global.possibleShipList, global.posNumberOfShips,
	{ 
	
		sprite: splayer,
		
	})
	global.posNumberOfShips +=1;
}