// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddShipRed()
{
	ds_map_add(global.shipList, global.numberOfShips,
	{ 
		unlocked: global.shipRedUnlocked,
		sprite: splayer_Red,
		spriteLocked: splayer_Red_Locked,
		position: 2,
		
	})
	global.numberOfShips +=1;
}