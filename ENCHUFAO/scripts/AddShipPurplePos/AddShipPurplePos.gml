// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddShipPurplePos()
{
	ds_map_add(global.possibleShipList, global.posNumberOfShips,
	{ 
	
		sprite: splayer_Purple,
		
	})
	global.posNumberOfShips +=1;
}